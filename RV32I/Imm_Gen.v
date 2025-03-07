module Imm_Gen(
    input [31:0] instruction,
    input [2:0] Imm_op,
    output reg [31:0] Immediate
);

always @(*) begin
    case (Imm_op)
        3'b001: Immediate = {{20{instruction[31]}}, instruction[31:20]}; // I-Type
        3'b010: Immediate = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}; // S-Type
        3'b011: Immediate = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // B-Type
        3'b100: Immediate = {instruction[31:12], 12'b0}; // U-Type
        3'b101: Immediate = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0}; // J-Type
        default: Immediate = 32'b0;
    endcase
end

endmodule
