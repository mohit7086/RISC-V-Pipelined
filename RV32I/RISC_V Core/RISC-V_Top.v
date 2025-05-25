module RISC_V_Top(
    input clk,                            // Clock signal   
    input rst,                            // Reset signal
);



//Fetch_stage_Instiate
FetchStage fetch_stage_inst (
    .clk(clk),
    .rst(rst),
    
    // Update inputs (from Execute stage)
    .branchAddress(branch_addr_IF_in),
    .branch_taken(branch_taken_IF_in),
    .branch_resolved(branch_resolve_IF_in),
    .ghr_history(ghr_history_IF_in),
    .resolved_pc(resolved_pc_IF_in),
    .pc_redirect(pc_redirect_IF_in),
    .flush_fetch(flush_fetch_IF_in),
    
    // Outputs (wire interface)
    .current_pc(current_pc_IF),
    .instruction(instruction_IF),
    .predicted_pc(predicted_pc_IF),
    .ghr_out(ghr_out_IF),
    .prediction_valid(prediction_valid_IF)
);




IF_ID pipeline_reg_IF_ID(
    .clk(clk),
    .rst(rst),

    .pc_IF_in(current_pc_IF),                // Input PC from Fetch stage   
    .instruction_IF_in(instruction_IF),       // Input instruction from Fetch stage
    .predicted_pc_IF_in(predicted_pc_IF),      // Input predicted PC from Fetch stage
    .prediction_valid_IF_in(prediction_valid_IF),  // Input prediction valid from Fetch stage
    .ghr_IF_in(ghr_out_IF),               // Input GHR from Fetch stage

    .pc_ID_out(pc_ID_out),           // Output PC to ID stage
    .instruction_ID_out(instruction_ID_out),  // Output instruction to ID stage
    .predicted_pc_ID_out(predicted_pc_ID_out), // Output predicted PC to ID stage
    .prediction_valid_ID_out(prediction_valid_ID_out), // Output prediction valid to ID stage
    .ghr_ID_out(ghr_ID_out)            // Output GHR to ID stage
);

wire [31:0] pc_ID_in = pc_ID_out;
wire [31:0] instruction_ID_in = instruction_ID_out;
wire [31:0] predicted_pc_ID_in = predicted_pc_ID_out;
wire prediction_valid_ID_in = prediction_valid_ID_out;
wire [3:0] ghr_ID_in = ghr_ID_out;



// Decode stage instantiation
Decode_Stage decode_stage_inst (
    .clk(clk),                            // Clock signal
    .rst(rst),                            // Reset signal
    .instruction(instruction_ID_in),      // Instruction from IF stage
    .RegWrite_WB(RegWrite_WB_in),        // Register write enable from WB stage
    .rd_wb_data(rd_wb_data),              // Data from WB stage
    .rd_wb(rd_wb_in),                        // Register address from WB stage

    .rs1_data(rs1_data_ID),                  // rs1 data to ALU
    .rs2_data(rs2_data_ID),                  // rs2 data to ALU
    .imm(imm_ID),                           // Immediate value to ALU
    .rs1(rs1_ID),                           // rs1 register address to Forwarding Unit
    .rs2(rs2_ID),                           // rs2 register address to Forwarding Unit
    .rd(rd_ID),                             // Destination register address to WB stage

    
    // Control Signals
    .alu_op(alu_op_ID),                     // ALU operation code
    .alu_src(alu_src_ID),                   // ALU source (0: reg, 1: immediate)
    .ALUSrcA(ALUSrcA_ID),                   // ALU A operand (0: rs1, 1: PC)
    .branch(branch_ID),                     // Branch instruction (B-type only)
    .is_jal(is_jal_ID),                     // JAL instruction
    .is_jalr(is_jalr_ID),                   // JALR instruction
    .is_lui(is_lui_ID),                     // LUI instruction
    .is_sw(is_sw_ID),                       // Store Word
    .is_lw(is_lw_ID),                       // Load Word

    .MemRead(MemRead_ID),                   // Memory read enable
    .MemWrite(MemWrite_ID),                 // Memory write enable

    // WB Stage Control Signals
    .RegWrite(RegWrite_ID),                 // Register write enable
    .MemtoReg(MemtoReg_ID),                 // Memory to register (0: ALU, 1: MEM)

    .func3(func3_ID),
    .func7(func7_ID)
);


// ID_EX pipeline register instantiation
ID_EX id_ex_reg_inst (
    .clk(clk),
    .rst(rst),

    // Inputs from Decode Stage (combinational)
    .rs1_data_ID_in(rs1_data_ID),      // RS1 data
    .rs2_data_ID_in(rs2_data_ID),      // RS2 data
    .imm_ID_in(imm_ID),                // Immediate value
    .rs1_ID_in(rs1_ID),                // RS1 register address
    .rs2_ID_in(rs2_ID),                // RS2 register address
    .rd_ID_in(rd_ID),                  // Destination register address

    // Control Signals
    .alu_op_ID_in(alu_op_ID),          // ALU operation code
    .alu_src_ID_in(alu_src_ID),        // ALU source (reg/immediate)
    .ALUSrcA_ID_in(ALUSrcA_ID),        // ALU operand A (PC/RS1)
    .branch_ID_in(branch_ID),          // Branch instruction
    .is_jal_ID_in(is_jal_ID),          // JAL instruction
    .is_jalr_ID_in(is_jalr_ID),        // JALR instruction
    .is_lui_ID_in(is_lui_ID),          // LUI instruction
    .is_sw_ID_in(is_sw_ID),            // Store Word
    .is_lw_ID_in(is_lw_ID),            // Load Word
    .MemRead_ID_in(MemRead_ID),        // Memory read enable
    .MemWrite_ID_in(MemWrite_ID),      // Memory write enable
    .RegWrite_ID_in(RegWrite_ID),      // Register write enable
    .MemtoReg_ID_in(MemtoReg_ID),      // Memory-to-register

    // Instruction Fields
    .func3_ID_in(func3_ID),
    .func7_ID_in(func7_ID),

    // Branch Prediction Inputs
    .pc_ID_in(pc_ID_in),
    .predicted_pc_ID_in(predicted_pc_ID_in),
    .prediction_valid_ID_in(prediction_valid_ID_in),
    .ghr_out_ID_in(ghr_ID_in),


    // Registered Outputs (to EX stage)
    .rs1_data_EX_out(rs1_data_EX_out),
    .rs2_data_EX_out(rs2_data_EX_out),
    .imm_EX_out(imm_EX_out),
    .rs1_EX_out(rs1_EX_out),
    .rs2_EX_out(rs2_EX_out),
    .rd_EX_out(rd_EX_out),            // Destination register address

    // Control Signals
    .alu_op_EX_out(alu_op_EX_out),
    .alu_src_EX_out(alu_src_EX_out),
    .ALUSrcA_EX_out(ALUSrcA_EX_out),
    .branch_EX_out(branch_EX_out),
    .is_jal_EX_out(is_jal_EX_out),
    .is_jalr_EX_out(is_jalr_EX_out),
    .is_lui_EX_out(is_lui_EX_out),
    .is_sw_EX_out(is_sw_EX_out),
    .is_lw_EX_out(is_lw_EX_out),
    .MemRead_EX_out(MemRead_EX_out),
    .MemWrite_EX_out(MemWrite_EX_out),
    .RegWrite_EX_out(RegWrite_EX_out),
    .MemtoReg_EX_out(MemtoReg_EX_out),

    .func3_EX_out(func3_EX_out),
    .func7_EX_out(func7_EX_out),

    .pc_EX_out(pc_EX_out),
    .predicted_pc_EX_out(predicted_pc_EX_out),
    .prediction_valid_EX_out(prediction_valid_EX_out),
    .ghr_out_EX_out(ghr_out_EX_out)

);

wire [31:0] predicted_pc_IF_in = predicted_pc_EX_out;
wire prediction_valid_IF_in = prediction_valid_EX_out;
wire [3:0] ghr_history_IF_in = ghr_out_EX_out;
wire [31:0] resolved_pc_IF_in = pc_EX_out;



wire [31:0] rs1_data_EX_in = rs1_data_EX_out;
wire [31:0] rs2_data_EX_in = rs2_data_EX_out;
wire [31:0] imm_EX_in = imm_EX_out;
wire [4:0] rs1_EX_in = rs1_EX_out;
wire [4:0] rs2_EX_in = rs2_EX_out;
wire [4:0] rd_EX_in = rd_EX_out; // Destination register address
// Control Signals
wire [1:0] alu_op_EX_in = alu_op_EX_out;
wire alu_src_EX_in = alu_src_EX_out; // ALU source (reg/immediate)
wire ALUSrcA_EX_in = ALUSrcA_EX_out; // ALU operand A (PC/RS1)
wire branch_EX_in = branch_EX_out; // Branch instruction
wire is_jal_EX_in = is_jal_EX_out; // JAL instruction
wire is_jalr_EX_in = is_jalr_EX_out; // JALR instruction
wire is_lui_EX_in = is_lui_EX_out; // LUI instruction
wire is_sw_EX_in = is_sw_EX_out; // Store Word
wire is_lw_EX_in = is_lw_EX_out; // Load Word

wire MemRead_EX_in = MemRead_EX_out; // Memory read enable
wire MemWrite_EX_in = MemWrite_EX_out; // Memory write enable
wire RegWrite_EX_in = RegWrite_EX_out; // Register write enable
wire MemtoReg_EX_in = MemtoReg_EX_out; // Memory-to-register

wire [2:0] func3_EX_in = func3_EX_out;
wire [6:0] func7_EX_in = func7_EX_out; // Function code for ALU operation
wire [31:0] pc_EX_in = pc_EX_out; // PC value for JALR instruction
wire [31:0] predicted_pc_EX_in = predicted_pc_EX_out; // Predicted PC for branch prediction
wire prediction_valid_EX_in = prediction_valid_EX_out; // Prediction valid signal



// EX stage instantiation
Execution_Stage execution_stage_inst (
    .clk(clk),                            // Clock signal
    .rst(rst),                            // Reset signal

    // Forwarding Unit Inputs (from ID/EX pipeline register)
    .EX_MEM_RegWrite_i(RegWrite_MEM_in),
    .MEM_WB_RegWrite_i(RegWrite_WB_in),
    .ID_EX_RS_i(rs1_EX_in),
    .ID_EX_RT_i(rs2_EX_in),
    .EX_MEM_RD_i(rd_MEM_in),    // Destination register from EX/MEM stage for forwarding unit 
    .MEM_WB_RD_i(rd_wb_in),

    // Data inputs for forwarding unit
    .rs1_data(rs1_data_EX_in),           // Default data for RS1
    .rs2_data(rs2_data_EX_in),           // Default data for RS2
    .EX_MEM_i(alu_out_MEM_in),                 // Data from EX/MEM stage
    .MEM_WB_i(rd_wb_data),               // Data from MEM/WB stage

    // ALU Control and Instruction Decode Inputs (from ID/EX pipeline register)
    .alu_op(alu_op_EX_in),               // ALUOp signal from Control Unit
    .is_sw(is_sw_EX_in),                 // Asserted for store word instructions
    .is_lw(is_lw_EX_in),                 // Asserted for load word instructions
    .is_lui(is_lui_EX_in),                // Asserted for LUI instructions
    .branch(branch_EX_in),               // Asserted for branch instructions
    .is_jal(is_jal_EX_in),               // Asserted for JAL (return address)
    .funct3(func3_EX_in),                // Instruction funct3 field
    .funct7(func7_EX_in),                // Instruction funct7 field

    .prediction_valid(prediction_valid_IF_in),  // Prediction validity from Fetch
    .predicted_pc(predicted_pc_IF_in),        // Predicted target address

    
    // Operand Selection (from ID/EX pipeline register)
    .alu_src(alu_src_EX_in),             // 0: use RS2; 1: use immediate_data
    .immediate_data(imm_EX_in),          // Immediate value (I-type, branch, etc.)
    .PC_ID_EX(pc_ID_out),                 // PC from ID/EX stage (for AUIPC/JALR)
    .ALUSrcA(ALUSrcA_EX_in),             // If asserted,
    .is_jalr(is_jalr_EX_in),           // Asserted for JALR (LSB masking)

    //outputs to EX/MEM
    .alu_out(alu_out_EX),                // Registered ALU result
    .rs2_mem_data(rs2_data_EX),       // Data to MEM stage for store instructions

    //outputs to Fetch stage directly
    .branch_taken(branch_taken_EX),       // Branch taken signal
    .branch_addr(branch_addr_EX),         // Registered branch target address
    .pc_redirect(pc_redirect_EX),         // Combinational PC redirect signal
    .flush_fetch(flush_fetch_EX),         // Flush signal for fetch stage
    .branch_resolve(branch_resolve_EX)    // Branch resolve signal for BPU


);


wire [31:0] branch_addr_IF_in = branch_addr_EX;
wire branch_taken_IF_in = branch_taken_EX;
wire pc_redirect_IF_in = pc_redirect_EX;
wire flush_fetch_IF_in = flush_fetch_EX;
wire branch_resolve_IF_in = branch_resolve_EX;

// EX_MEM pipeline register instantiation

EX_MEM ex_mem_reg_inst (
    .clk(clk),
    .rst(rst),

    // Inputs from EX stage (combinational)
    .alu_EX(alu_out_EX),                 // ALU result
    .rs2_mem_data_EX(rs2_data_EX),       // RS2 data for stores

    .MemRead_EX(MemRead_EX_in),          // Memory read enable
    .MemWrite_EX(MemWrite_EX_in),        // Memory write enable
    .RegWrite_EX(RegWrite_EX_in),        // Register write enable
    .MemtoReg_EX(MemtoReg_EX_in),        // Memory-to-register signal
    .rd_EX(rd_EX_in),                    // Destination register (for WB)

    
    // Registered outputs to MEM stage
    .alu_MEM(alu_out_MEM_out),               // ALU result to MEM stage
    .rs2_mem_data_MEM(rs2_data_MEM_out),     // RS2 data for stores to MEM stage
    .MemRead_MEM(MemRead_MEM_out),           // Memory read enable to MEM stage
    .MemWrite_MEM(MemWrite_MEM_out),         // Memory write enable to MEM stage
    .RegWrite_MEM(RegWrite_MEM_out),         // Register write enable to MEM stage
    .MemtoReg_MEM(MemtoReg_MEM_out),         // Memory-to-register signal to MEM stage
    .rd_MEM(rd_MEM_out)                      // Destination register (for WB) to MEM stage and Forwarding Unit

);

wire [31:0] alu_out_MEM_in = alu_out_MEM_out;
wire [31:0] rs2_data_MEM_in = rs2_data_MEM_out; // Data to MEM stage for store instructions and forwarding unit
wire MemRead_MEM_in = MemRead_MEM_out; // Memory read enable
wire MemWrite_MEM_in = MemWrite_MEM_out; // Memory write enable
wire RegWrite_MEM_in = RegWrite_MEM_out; // Register write enable
wire MemtoReg_MEM_in = MemtoReg_MEM_out; // Memory-to-register signal
wire [4:0] rd_MEM_in = rd_MEM_out; // Destination register (for WB) and for Forwarding Unit



Mem_Stage mem_stage_inst (
    .clk(clk),
    .reset(rst),
    .alu_result(alu_out_MEM_in), // Address to read/write from/to
    .rs2_data(rs2_data_MEM_in),   // Data to write to memory

    // Signals from the control unit 
    .MemRead(MemRead_MEM_in),
    .MemWrite(MemWrite_MEM_in),

    // Signals to WB stage
    .memData(memData_MEM)      // Data read from memory
);


// MEM_WB pipeline register instantiation

MEM_WB mem_wb_reg_inst (
    .clk(clk),
    .rst(rst),

    // Inputs from MEM stage
    .mem_data_MEM_in(memData_MEM),     // Data read from memory
    .alu_MEM_in(alu_out_MEM_in),       // ALU result
    .RegWrite_MEM_in(RegWrite_MEM_in), // Register write enable
    .MemtoReg_MEM_in(MemtoReg_MEM_in), // Memory-to-register select
    .rd_MEM_in(rd_MEM_in),             // Destination register

    // Registered outputs to WB stage
    .mem_data_WB_out(memData_WB_out),  // Data to WB stage
    .alu_WB_out(alu_WB_out),            // ALU result to WB stage
    .RegWrite_WB_out(RegWrite_WB_out),  // Register write enable to WB stage
    .MemtoReg_WB_out(MemtoReg_WB_out),  // Memory-to-register select to WB stage
    .rd_WB_out(rd_wb_out)                   // Destination register to WB stage and Forwarding Unit

);

wire [31:0] memData_MEM_in = memData_WB_out; // Data read from memory
wire [31:0] alu_out_WB_in = alu_WB_out; // ALU result to WB stage
wire RegWrite_WB_in = RegWrite_WB_out; // Register write enable to WB stage to GPR
wire MemtoReg_WB_in = MemtoReg_WB_out; // Memory-to-register select to WB stage 
wire [4:0] rd_wb_in = rd_wb_out; // Destination register to WB stage and Forwarding Unit




// WB stage instantiation
WriteBack_Stage write_back_stage_inst (
    .data_in_ex(alu_out_WB_in),   // ALU result (from EX/MEM pipeline register)
    .data_in_mem(memData_MEM_in),  // Memory read data (from MEM/WB pipeline register)
    .memtoReg(MemtoReg_WB_in),      // Control signal (1 = use memory data, 0 = use ALU result)
    .data_out(rd_wb_data)           // Data to write back to the register file and Forwarding Unit in EX
);






    
endmodule
