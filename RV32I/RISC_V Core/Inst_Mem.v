module INST_MEM(
    input clk,           
    input [31:0] PC,
    input rst,
    output wire [31:0] Instruction_Code  // Changed from reg to wire
);
    reg [7:0] Memory [0:127]; // 128-byte memory
    
    // Initialize memory (for simulation)
    initial begin
        $readmemh("program.hex", Memory);
    end
    
    // Asynchronous read (combinational logic)
    assign Instruction_Code = {Memory[PC + 3], Memory[PC + 2], 
                              Memory[PC + 1], Memory[PC]};
    
    // Optional: Reset handling
    always @(posedge clk) begin
        if (rst) begin
            // Re-initialize memory on reset if needed
            $readmemh("program.hex", Memory);
        end
    end
endmodule