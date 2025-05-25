module EX_MEM_Register (
    input clk,
    input rst,
    // Inputs from EX stage (combinational)
    input [31:0] alu_EX,             // ALU result
    input [31:0] rs2_mem_data_EX,    // RS2 data for stores

    input MemRead_EX,                // Memory read enable
    input MemWrite_EX,               // Memory write enable
    input RegWrite_EX,               // Register write enable
    input MemtoReg_EX,               // Memory-to-register signal
    input [4:0] rd_EX,               // Destination register (for WB)

    // Branch prediction/training signals
    input [31:0] pc_EX,              // Current PC (for BPU training)
    input [31:0] predicted_pc_EX,    // Original predicted PC (for BPU update)
    input prediction_valid_EX,       // Was prediction valid?
    input [31:0] ghr_out_EX,         // GHR state (for dynamic predictors)

    // Registered outputs to MEM stage
    output reg [31:0] alu_MEM,
    output reg [31:0] rs2_mem_data_MEM,
    output reg MemRead_MEM,
    output reg MemWrite_MEM,
    output reg RegWrite_MEM,
    output reg MemtoReg_MEM,
    output reg [4:0] rd_MEM,
    output reg [31:0] pc_MEM,
    output reg [31:0] predicted_pc_MEM,
    output reg prediction_valid_MEM,
    output reg [31:0] ghr_out_MEM
);

    always @(posedge clk) begin
        if (rst) begin
            alu_MEM <= 32'b0;
            rs2_mem_data_MEM <= 32'b0;
            MemRead_MEM <= 1'b0;
            MemWrite_MEM <= 1'b0;
            RegWrite_MEM <= 1'b0;
            MemtoReg_MEM <= 1'b0;
            rd_MEM <= 5'b0;
            pc_MEM <= 32'b0;
            predicted_pc_MEM <= 32'b0;
            prediction_valid_MEM <= 1'b0;
            ghr_MEM <= 32'b0;
        end else begin
            alu_MEM <= alu_EX;
            rs2_mem_data_MEM <= rs2_mem_data_EX;
            MemRead_MEM <= MemRead_EX;
            MemWrite_MEM <= MemWrite_EX;
            RegWrite_MEM <= RegWrite_EX;
            MemtoReg_MEM <= MemtoReg_EX;
            rd_MEM <= rd_EX;
            pc_MEM <= pc_EX;
            predicted_pc_MEM <= predicted_pc_EX;
            prediction_valid_MEM <= prediction_valid_EX;
            ghr_out_MEM <= ghr_out_EX;
        end
    end

endmodule
