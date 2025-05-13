module DataMemory(
    input clk,
    input reset,
    input [9:0] address,
    input [31:0] data_in,
 
     //signals from the control unit 
     input ReadEnable,
     input WriteEnable,
 
     //signals to WB stage
     output reg [31:0] memData
) ;
 

 reg [31:0] mem [0:1023]; // 1024 32-bit words of memory

always @(posedge clk) begin
    if (reset) begin
        memData <= 32'b0;
    end else begin
        if (WriteEnable) begin
            mem[address] <= data_in;
        end
        if (ReadEnable) begin
            memData <= mem[address];
        end
    end
end

endmodule