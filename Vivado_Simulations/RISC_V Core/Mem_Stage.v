module Mem_Stage (
    input clk,
    input reset,
    input [31:0] alu_result,  // Address to read/write from/to
    input [31:0] rs2_data,    // Data to write to memory

    // Signals from the control unit 
    input MemRead,
    input MemWrite,

    // Signals to WB stage
    output wire [31:0] memData
);

    wire [9:0] mem_index;
    assign mem_index = alu_result[11:2]; // 10-bit memory index

    DataMemory data_memory_inst (
        .clk(clk),
        .reset(reset),
        .address(mem_index),
        .data_in(rs2_data),
        .ReadEnable(MemRead),
        .WriteEnable(MemWrite),
        .memData(memData)  // Ensure this matches DataMemory's port name
    );

endmodule