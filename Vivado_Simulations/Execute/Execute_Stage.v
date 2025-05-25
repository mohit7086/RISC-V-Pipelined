
module ExecutionStage(
    // Clock and Reset
    input              clk,            // Clock signal for synchronization
    input              rst,            // Reset signal (active high)
    
    // Forwarding Unit Inputs (from ID/EX pipeline register)
    input              EX_MEM_RegWrite_i,
    input              MEM_WB_RegWrite_i,
    input      [4:0]   ID_EX_RS_i,
    input      [4:0]   ID_EX_RT_i,
    input      [4:0]   EX_MEM_RD_i,
    input      [4:0]   MEM_WB_RD_i,
    input      [31:0]  rs1_data,       // Default data for RS1
    input      [31:0]  rs2_data,       // Default data for RS2
    input      [31:0]  EX_MEM_i,       // Data from EX/MEM stage
    input      [31:0]  MEM_WB_i,       // Data from MEM/WB stage

    // ALU Control and Instruction Decode Inputs (from ID/EX pipeline register)
    input      [1:0]   alu_op,         // ALUOp signal from Control Unit
    input              is_sw,          // Asserted for store word instructions
    input              is_lw,          // Asserted for load word instructions
    input              is_lui,         // Asserted for LUI instructions
    input              branch,         // Asserted for branch instructions
    input              is_jal,         // Asserted for JAL (return address)
    input      [2:0]   funct3,         // Instruction funct3 field
    input      [6:0]   funct7,         // Instruction funct7 field

    input              prediction_valid,  // Prediction validity from Fetch
    input      [31:0]  predicted_pc,      // Predicted target address


    // Operand Selection (from ID/EX pipeline register)
    input              alu_src,        // 0: use RS2; 1: use immediate_data
    input      [31:0]  immediate_data, // Immediate value (I-type, branch, etc.)
    input      [31:0]  PC_ID_EX,       // PC from ID/EX stage (for AUIPC/JALR)
    input              ALUSrcA,        // If asserted, use PC_ID_EX for operand A
    input              is_jalr,        // Asserted for JALR (LSB masking)

    // Outputs (to EX/MEM pipeline register)
    output wire [31:0]  alu_out,        // Registered ALU result
    output wire [31:0] rs2_mem_data,    // Data to MEM stage for store instructions

    //(To Fetch stage Directly)
    output wire         branch_taken,   
    output wire [31:0]  branch_addr,     // Registered branch target address4
    output wire        pc_redirect,     // Combinational PC redirect signal
    output wire         flush_fetch,    // predicted_pc =! branch_addr
    output wire         branch_resolve   // Branch resolve signal for BPU
   
);

    // Forwarding wires for RS1 and RS2 (combinational)
    wire [31:0] forwarded_rs1, forwarded_rs2;

    // ALU Control and Result (combinational)
    wire [3:0] alu_ctrl;
    wire [31:0] raw_alu_out;

    // Branch Unit signals (combinational)
    wire        branch_taken_comb;
    wire [31:0] branch_addr_comb;

    // Intermediate signals for output registration
    wire [31:0] PC_plus_4 = PC_ID_EX + 32'd4; // Dedicated adder for return address
    wire [31:0] alu_out_comb = (is_jal || is_jalr) ? PC_plus_4 : raw_alu_out;

    // Operand A/B Selection Logic (combinational)
    wire [31:0] operandA = is_lui ? 32'b0 : (ALUSrcA ? PC_ID_EX : forwarded_rs1);
    wire [31:0] operandB = alu_src ? immediate_data : forwarded_rs2;

    //----------------------------------------------------------
    // Combinational Logic Blocks
    //----------------------------------------------------------
    // Forwarding Unit
    ForwardingUnitWithMUX FU_inst (
        .EX_MEM_RegWrite_i(EX_MEM_RegWrite_i),
        .MEM_WB_RegWrite_i(MEM_WB_RegWrite_i),
        .ID_EX_RS_i(ID_EX_RS_i),
        .ID_EX_RT_i(ID_EX_RT_i),
        .EX_MEM_RD_i(EX_MEM_RD_i),
        .MEM_WB_RD_i(MEM_WB_RD_i),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .EX_MEM_i(EX_MEM_i),
        .MEM_WB_i(MEM_WB_i),
        .ForwardedDataA_o(forwarded_rs1),
        .ForwardedDataB_o(forwarded_rs2)
    );

    // ALU Control
    ALU_Control alu_control_inst (
        .alu_op(alu_op),
        .is_lui(is_lui),
        .is_sw(is_sw),
        .is_lw(is_lw),
        .funct3(funct3),
        .funct7(funct7),
        .alu_ctrl(alu_ctrl)
    );

    // ALU
    ALU alu_inst (
        .a(operandA),
        .b(operandB),
        .alu_ctrl(alu_ctrl),
        .alu_out(raw_alu_out)
    );

    // Branch Unit
    Branch_Unit branch_unit_inst (
        .funct3(funct3),
        .a(forwarded_rs1),
        .b(forwarded_rs2),
        .branch_taken(branch_taken_comb)
    );

    // Branch Address Calculation
        assign branch_addr_comb = is_jalr ? (raw_alu_out & ~32'h1) : 
                             (is_jal ? (PC_ID_EX + immediate_data) : 
                             (PC_ID_EX + immediate_data)); // 

    //----------------------------------------------------------
    // Misprediction Detection Logic 
    //----------------------------------------------------------
    wire prediction_mismatch = branch && 
                              (prediction_valid != branch_taken_comb);
    wire target_mismatch = ((branch && branch_taken_comb)) && 
                          (predicted_pc != branch_addr_comb);

    wire is_misprediction = prediction_mismatch || target_mismatch;
    
    //----------------------------------------------------------
    //PC Redirect Logic 
    //----------------------------------------------------------
    wire pc_redirect_comb = (is_jal || is_jalr || (branch_taken_comb && branch));
    wire flush_fetch_comb = is_misprediction;       // Combinational flush signal
    

    //----------------------------------------------------------
    // Output Registration (to EX/MEM pipeline register)
    //----------------------------------------------------------
    assign alu_out      = alu_out_comb;
    assign branch_taken = branch ? branch_taken_comb : 1'b0;
    assign branch_addr  = branch_addr_comb;
    assign pc_redirect  = pc_redirect_comb;    
    assign flush_fetch  = is_misprediction;
    assign rs2_mem_data = forwarded_rs2;
    assign branch_resolve = (is_jal || is_jalr || branch);

endmodule