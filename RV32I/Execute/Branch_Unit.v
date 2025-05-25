
module Branch_Unit (
    input [2:0] funct3,      // Branch instruction's funct3 field
    input [31:0] a,          // Operand A (forwarded RS1)
    input [31:0] b,          // Operand B (forwarded RS2)
    output reg branch_taken // Branch decision signal
);

always @(*) begin
    case (funct3)
        3'b000: branch_taken = (a == b);              // BEQ
        3'b001: branch_taken = (a != b);              // BNE
        3'b100: branch_taken = ($signed(a) < $signed(b)); // BLT
        3'b101: branch_taken = ($signed(a) >= $signed(b)); // BGE
        3'b110: branch_taken = (a < b);               // BLTU
        3'b111: branch_taken = (a >= b);              // BGEU
        default: branch_taken = 1'b0;
    endcase
end

endmodule

