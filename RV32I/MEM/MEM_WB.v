module MEM_WB_Register (
    input clk,
    input rst,

    // Inputs from MEM stage
    input [31:0] mem_data_MEM_in,     // Data read from memory
    input [31:0] alu_MEM_in,          // ALU result
    input RegWrite_MEM_in,            // Register write enable
    input MemtoReg_MEM_in,            // Memory-to-register select
    input [4:0] rd_MEM_in,            // Destination register

    // Registered outputs to WB stage
    output reg [31:0] mem_data_WB_out,
    output reg [31:0] alu_WB_out,
    output reg RegWrite_WB_out,
    output reg MemtoReg_WB_out,
    output reg [4:0] rd_WB_out
);

    always @(posedge clk) begin
        if (rst) begin
            mem_data_WB_out <= 32'b0;
            alu_WB_out <= 32'b0;
            RegWrite_WB_out <= 1'b0;
            MemtoReg_WB_out <= 1'b0;
            rd_WB_out <= 5'b0;
        end else begin
            mem_data_WB_out <= mem_data_MEM_in;
            alu_WB_out <= alu_MEM_in;
            RegWrite_WB_out <= RegWrite_MEM_in;
            MemtoReg_WB_out <= MemtoReg_MEM_in;
            rd_WB_out <= rd_MEM_in;
        end
    end

endmodule
