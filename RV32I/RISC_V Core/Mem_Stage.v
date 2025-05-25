module Mem_Stage (
   input clk,
   input reset,
   input [31:0] alu_result, // Address to read/write from/to
   input [31:0] rs2_data,   // Data to write to memory

    //signals from the control unit 
    input MemRead,
    input MemWrite,

    //signals to WB stage
    output wire [31:0] memData,
) ;
    
    wire [9:0] mem_index ; // Memory address is 10 bits (1024 words of 32 bits each)
    assign mem_index = alu_result[11:2];

DataMemory data_memory_inst (
    .clk(clk),
    .reset(reset),
    .address(mem_index),
    .data_in(rs2_data),
    .ReadEnable(MemRead),
    .WriteEnable(MemWrite),
    .memData(memData)
);

endmodule