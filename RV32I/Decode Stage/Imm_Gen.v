module Imm_Gen(
    input [31:0] instruction,
    input [2:0] Imm_op,
    output wire [31:0] Immediate
);

assign Immediate = (Imm_op == 3'b001) ? {{20{instruction[31]}}, instruction[31:20]} : // I-Type
                   (Imm_op == 3'b010) ? {{20{instruction[31]}}, instruction[31:25], instruction[11:7]} : // S-Type
                   (Imm_op == 3'b011) ? {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0} : // B-Type
                   (Imm_op == 3'b100) ? {instruction[31:12], 12'b0} : // U-Type
                   (Imm_op == 3'b101) ? {{12{instruction[31]}}, instruction[30:21], instruction[20], instruction[19:12], 1'b0} : // J-Type
                   32'b0; // Default


endmodule
 