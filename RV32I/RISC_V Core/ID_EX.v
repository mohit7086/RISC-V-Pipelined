module ID_EX (
    input clk, 
    input rst,
    
    // Inputs from Decode Stage (combinational)
    input [31:0] rs1_data_ID_in,      // RS1 data
    input [31:0] rs2_data_ID_in,      // RS2 data
    input [31:0] imm_ID_in,           // Immediate value
    input [4:0]  rs1_ID_in,           // RS1 register address
    input [4:0]  rs2_ID_in,           // RS2 register address
    input [4:0]  rd_ID_in,            // Destination register address

    // Control Signals
    input [1:0]  alu_op_ID_in,        // ALU operation code
    input        alu_src_ID_in,       // ALU source (reg/immediate)
    input        ALUSrcA_ID_in,       // ALU operand A (PC/RS1)
    input        branch_ID_in,        // Branch instruction
    input        is_jal_ID_in,        // JAL instruction
    input        is_jalr_ID_in,       // JALR instruction
    input        is_lui_ID_in,        // LUI instruction
    input        is_sw_ID_in,         // Store Word
    input        is_lw_ID_in,         // Load Word
    input        MemRead_ID_in,       // Memory read enable
    input        MemWrite_ID_in,      // Memory write enable
    input        RegWrite_ID_in,      // Register write enable
    input        MemtoReg_ID_in,      // Memory-to-register

    // Instruction Fields
    input [2:0]  func3_ID_in,         // Instruction funct3
    input [6:0]  func7_ID_in,         // Instruction funct7

    // Branch Prediction Inputs
    input [31:0] pc_ID_in,            // Current PC (from IF)
    input [31:0] predicted_pc_ID_in,  // Predicted branch target
    input        prediction_valid_ID_in, // Prediction validity
    input [3:0] ghr_out_ID_in,       // Global History Register (GHR)

    // Registered Outputs (to EX stage)
    output reg [31:0] rs1_data_EX_out,
    output reg [31:0] rs2_data_EX_out,
    output reg [31:0] imm_EX_out,
    output reg [4:0]  rs1_EX_out,
    output reg [4:0]  rs2_EX_out,
    output reg [4:0]  rd_EX_out,        // Destination register address

    output reg [1:0]  alu_op_EX_out,
    output reg        alu_src_EX_out,
    output reg        ALUSrcA_EX_out,
    output reg        branch_EX_out,
    output reg        is_jal_EX_out,
    output reg        is_jalr_EX_out,
    output reg        is_lui_EX_out,
    output reg        is_sw_EX_out,
    output reg        is_lw_EX_out,
    output reg        MemRead_EX_out,
    output reg        MemWrite_EX_out,
    output reg        RegWrite_EX_out,
    output reg        MemtoReg_EX_out,

    output reg [2:0]  func3_EX_out,
    output reg [6:0]  func7_EX_out,

    output reg [31:0] pc_EX_out,
    output reg [31:0] predicted_pc_EX_out,
    output reg        prediction_valid_EX_out,
    output reg [3:0] ghr_out_EX_out
);

    always @(posedge clk) begin
        if (rst) begin
            // Reset all outputs to 0
            rs1_data_EX_out <= 32'b0;
            rs2_data_EX_out <= 32'b0;
            imm_EX_out <= 32'b0;
            rs1_EX_out <= 5'b0;
            rs2_EX_out <= 5'b0;
            rd_EX_out <= 5'b0; // Added to reset rd_EX

            alu_op_EX_out <= 2'b0;
            alu_src_EX_out <= 1'b0;
            ALUSrcA_EX_out <= 1'b0;
            branch_EX_out <= 1'b0;
            is_jal_EX_out <= 1'b0;
            is_jalr_EX_out <= 1'b0;
            is_lui_EX_out <= 1'b0;
            is_sw_EX_out <= 1'b0;
            is_lw_EX_out <= 1'b0;
            MemRead_EX_out <= 1'b0;
            MemWrite_EX_out <= 1'b0;
            RegWrite_EX_out <= 1'b0;
            MemtoReg_EX_out <= 1'b0;

            func3_EX_out <= 3'b0;
            func7_EX_out <= 7'b0;

            pc_EX_out <= 32'b0;
            predicted_pc_EX_out <= 32'b0;
            prediction_valid_EX_out <= 1'b0;
            ghr_out_EX_out <= 32'b0;
        end else begin
            // Latch all inputs to outputs
            rs1_data_EX_out <= rs1_data_ID_in;
            rs2_data_EX_out <= rs2_data_ID_in;
            imm_EX_out <= imm_ID_in;
            rs1_EX_out <= rs1_ID_in;
            rs2_EX_out <= rs2_ID_in;
            rd_EX_out <= rd_ID_in; // Added to latch rd_ID

            alu_op_EX_out <= alu_op_ID_in;
            alu_src_EX_out <= alu_src_ID_in;
            ALUSrcA_EX_out <= ALUSrcA_ID_in;
            branch_EX_out <= branch_ID_in;
            is_jal_EX_out <= is_jal_ID_in;
            is_jalr_EX_out <= is_jalr_ID_in;
            is_lui_EX_out <= is_lui_ID_in;
            is_sw_EX_out <= is_sw_ID_in;
            is_lw_EX_out <= is_lw_ID_in;
            MemRead_EX_out <= MemRead_ID_in;
            MemWrite_EX_out <= MemWrite_ID_in;
            RegWrite_EX_out <= RegWrite_ID_in;
            MemtoReg_EX_out <= MemtoReg_ID_in;

            func3_EX_out <= func3_ID_in;
            func7_EX_out <= func7_ID_in;

            pc_EX_out <= pc_ID_in;
            predicted_pc_EX_out <= predicted_pc_ID_in;
            prediction_valid_EX_out <= prediction_valid_ID_in;
            ghr_out_EX_out <= ghr_out_ID_in;
        end
    end

endmodule
