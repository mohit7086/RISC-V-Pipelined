module Control_Unit (
    input [6:0] opcode,
    input stall,
    input flush,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg memwrite,
    output reg aluSrc,
    output reg regwrite,
    output reg [1:0] Aluop
);

always @(*) begin
    if (flush || stall) begin
        // Flush or Stall: Zero all control signals
        branch = 0;
        memread = 0;
        memtoreg = 0;
        memwrite = 0;
        aluSrc = 0;
        regwrite = 0;
        Aluop = 2'b00;
    end else begin
        case (opcode)
            // Load instructions: LB, LH, LW, LBU, LHU
            7'b0000011: begin 
                aluSrc = 1;
                memtoreg = 1;
                regwrite = 1;
                memread = 1;
                memwrite = 0;
                branch = 0;
                Aluop = 2'b00;
            end
            // Store instructions: SB, SH, SW
            7'b0100011: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 0;
                memread = 0;
                memwrite = 1;
                branch = 0;
                Aluop = 2'b00;
            end
            // R-type instructions: ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND
            7'b0110011: begin 
                aluSrc = 0;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 0;
                Aluop = 2'b10;
            end
            // Branch instructions: BEQ, BNE, BLT, BGE, BLTU, BGEU
            7'b1100011: begin 
                aluSrc = 0;
                memtoreg = 0;
                regwrite = 0;
                memread = 0;
                memwrite = 0;
                branch = 1;
                Aluop = 2'b01;
            end
            // I-type arithmetic instructions: ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI
            7'b0010011: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 0;
                Aluop = 2'b00;
            end
            // JAL (Jump and Link)
            7'b1101111: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 1;    // Signals to take the jump
                Aluop = 2'b00;
            end
            // JALR (Jump and Link Register)
            7'b1100111: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 1;    // Signals to take the jump
                Aluop = 2'b00;
            end
            // LUI (Load Upper Immediate)
            7'b0110111: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 0;
                Aluop = 2'b11;  // Special ALU operation for LUI
            end
            // AUIPC (Add Upper Immediate to PC)
            7'b0010111: begin 
                aluSrc = 1;
                memtoreg = 0;
                regwrite = 1;
                memread = 0;
                memwrite = 0;
                branch = 0;
                Aluop = 2'b00;
            end
            // Default case: For undefined opcodes
            default: begin 
                branch = 0;
                memread = 0;
                memtoreg = 0;
                memwrite = 0;
                aluSrc = 0;
                regwrite = 0;
                Aluop = 2'b00;
            end
        endcase
    end
end

endmodule
