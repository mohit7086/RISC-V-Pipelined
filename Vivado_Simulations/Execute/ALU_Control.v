module ALU_Control (
    input  [1:0] alu_op,      // From Control Unit
    input        is_lui,      // Asserted for LUI instructions
  	input 		 is_sw,
    input 		 is_lw,
    input  [2:0] funct3,      // Instruction funct3 field
    input  [6:0] funct7,      // Instruction funct7 field
    output reg [3:0] alu_ctrl // ALU operation code
);

    // Shared ALU operation codes (must match with ALU module)
    localparam [3:0] 
        ALU_ADD  = 4'b0000,
        ALU_SUB  = 4'b0001,
        ALU_SLL  = 4'b0010,
        ALU_SLT  = 4'b0011,
        ALU_SLTU = 4'b0100,
        ALU_XOR  = 4'b0101,
        ALU_SRL  = 4'b0110,
        ALU_SRA  = 4'b0111,
        ALU_OR   = 4'b1000,
        ALU_AND  = 4'b1001,
        ALU_PASS = 4'b1010; // For LUI: pass immediate directly

    always @(*) begin
        case (alu_op)
            2'b00: begin // I-type/Load/Store instructions
                case (funct3)
                    3'b000: alu_ctrl = ALU_ADD;   // ADDI, LW, SW
                    3'b001: alu_ctrl = ALU_SLL;   // SLLI
                  3'b010: alu_ctrl = (is_sw || is_lw) ? ALU_ADD : ALU_SLT;   // SLTI
                    3'b011: alu_ctrl = ALU_SLTU;  // SLTIU
                    3'b100: alu_ctrl = ALU_XOR;   // XORI
                    3'b101: alu_ctrl = (funct7[5]) ? ALU_SRA : ALU_SRL; // SRAI/SRLI
                    3'b110: alu_ctrl = ALU_OR;    // ORI
                    3'b111: alu_ctrl = ALU_AND;   // ANDI
                    default: alu_ctrl = ALU_ADD;
                endcase
            end

            2'b01: alu_ctrl = ALU_SUB; // Branch comparisons (uses subtraction)

            2'b10: begin // R-type instructions
                case (funct3)
                    3'b000: alu_ctrl = (funct7[5]) ? ALU_SUB : ALU_ADD; // ADD/SUB
                    3'b001: alu_ctrl = ALU_SLL;   // SLL
                    3'b010: alu_ctrl = ALU_SLT;   // SLT
                    3'b011: alu_ctrl = ALU_SLTU;  // SLTU
                    3'b100: alu_ctrl = ALU_XOR;   // XOR
                    3'b101: alu_ctrl = (funct7[5]) ? ALU_SRA : ALU_SRL; // SRA/SRL
                    3'b110: alu_ctrl = ALU_OR;    // OR
                    3'b111: alu_ctrl = ALU_AND;   // AND
                    default: alu_ctrl = ALU_ADD;
                endcase
            end

            2'b11: begin // U-type (LUI/AUIPC) or JALR
                if (is_lui)
                    alu_ctrl = ALU_PASS; // LUI: output immediate directly
                else
                    alu_ctrl = ALU_ADD;  // AUIPC/JALR: perform PC + immediate addition
            end

            default: alu_ctrl = ALU_ADD;
        endcase
    end

endmodule
