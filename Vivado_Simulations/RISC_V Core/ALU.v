module ALU (
    input [31:0] a,         // First operand
    input [31:0] b,         // Second operand
    input [3:0]  alu_ctrl,  // Control signal from ALU Control Unit
    output reg  [31:0] alu_out    // ALU result
);

// ALU operation codes (Must match ALU_Control module)
localparam [3:0] 
    ALU_ADD   = 4'b0000,  // Addition
    ALU_SUB   = 4'b0001,  // Subtraction
    ALU_SLL   = 4'b0010,  // Shift left logical
    ALU_SLT   = 4'b0011,  // Set less than (signed)
    ALU_SLTU  = 4'b0100,  // Set less than (unsigned)
    ALU_XOR   = 4'b0101,  // Bitwise XOR
    ALU_SRL   = 4'b0110,  // Shift right logical
    ALU_SRA   = 4'b0111,  // Shift right arithmetic (signed)
    ALU_OR    = 4'b1000,  // Bitwise OR
    ALU_AND   = 4'b1001,  // Bitwise AND
    ALU_PASS  = 4'b1010;  // Pass operand B (used for LUI instruction)

// ALU operation logic
always @(*) begin
    case (alu_ctrl)
        ALU_ADD:  alu_out = a + b; //(for ADD, ADDI, LW, SW, AUIPC, JALR)
        ALU_SUB:  alu_out = a - b; 
        ALU_SLL:  alu_out = a << b[4:0];  // Shift Left Logical (only lower 5 bits used)
        ALU_SLT:  alu_out = ($signed(a) < $signed(b)) ? 32'b1 : 32'b0; // Set Less Than (signed)
        ALU_SLTU: alu_out = (a < b) ? 32'b1 : 32'b0;  // Set Less Than (unsigned)
        ALU_XOR:  alu_out = a ^ b;   // Bitwise XOR
        ALU_SRL:  alu_out = a >> b[4:0];  // Shift Right Logical (only lower 5 bits used)
        ALU_SRA:  alu_out = $signed(a) >>> b[4:0];  // Shift Right Arithmetic (preserves sign)
        ALU_OR:   alu_out = a | b; 
        ALU_AND:  alu_out = a & b;  
        ALU_PASS: alu_out = b;       // Pass immediate for LUI instruction
        default:  alu_out = 32'b0;   // Default case (should not be reached)
    endcase
end

endmodule

