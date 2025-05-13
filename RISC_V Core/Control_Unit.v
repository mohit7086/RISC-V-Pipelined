module Control_Unit (
    input [6:0] opcode,          // Instruction opcode (bits [6:0])
    
    // EX Stage Control Signals
    output reg [1:0] alu_op,     // ALU operation code
    output reg alu_src,          // ALU source (0: reg, 1: immediate)
    output reg ALUSrcA,          // ALU A operand (0: rs1, 1: PC)
    output reg branch,           // Branch instruction (B-type only)
    output reg is_jal,           // JAL instruction
    output reg is_jalr,          // JALR instruction
    output reg is_lui,           // LUI instruction
    
    // MEM Stage Control Signals
    output reg is_sw,            // Store Word
    output reg is_lw,            // Load Word
    output reg MemRead,          // Memory read enable
    output reg MemWrite,         // Memory write enable
    
    // WB Stage Control Signals
    output reg RegWrite,         // Register write enable
    output reg MemtoReg          // Memory to register (0: ALU, 1: MEM)
);

always @(*) begin
    // Default control signals
    alu_op   = 2'b00;
    alu_src  = 0;
    ALUSrcA  = 0;
    branch   = 0;
    is_jal   = 0;
    is_jalr  = 0;
    is_lui   = 0;
    is_sw    = 0;
    is_lw    = 0;
    MemRead  = 0;
    MemWrite = 0;
    RegWrite = 0;
    MemtoReg = 0;

    case (opcode)
        // R-type (ADD, SUB, etc.)
        7'b0110011: begin
            alu_op    = 2'b10;
            RegWrite  = 1;
        end
        
        // I-type ALU (ADDI, etc.)
        7'b0010011: begin
            alu_op    = 2'b10;
            alu_src   = 1;
            RegWrite  = 1;
        end
        
        // I-type Loads (LW)
        7'b0000011: begin
            alu_op    = 2'b00;
            alu_src   = 1;
            is_lw     = 1;
            MemRead   = 1;
            RegWrite  = 1;
            MemtoReg  = 1;
        end
        
        // I-type JALR
        7'b1100111: begin
            alu_op    = 2'b11;  // Key Change 1
            alu_src   = 1;
            is_jalr   = 1;
            RegWrite  = 1;
        end
        
        // S-type (SW)
        7'b0100011: begin
            alu_op    = 2'b00;
            alu_src   = 1;
            is_sw     = 1;
            MemWrite  = 1;
        end
        
        // B-type (BEQ, BNE, etc.)
        7'b1100011: begin
            alu_op    = 2'b01;
            branch    = 1;      // Only B-type sets branch
        end
        
        // J-type JAL
        7'b1101111: begin
            alu_op    = 2'b11;  // Key Change 2
            alu_src   = 1;
            is_jal    = 1;
            RegWrite  = 1;
        end
        
        // U-type LUI
        7'b0110111: begin
            alu_op    = 2'b11;  // Key Change 3
            alu_src   = 1;
            is_lui    = 1;
            RegWrite  = 1;
        end
        
        // U-type AUIPC
        7'b0010111: begin
            alu_op    = 2'b11;  // Key Change 4
            alu_src   = 1;
            ALUSrcA   = 1;
            RegWrite  = 1;
        end
        
        default: begin end
    endcase
end

endmodule