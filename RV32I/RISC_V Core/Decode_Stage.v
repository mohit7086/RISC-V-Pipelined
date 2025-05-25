module Decode_Stage(
    input clk,                            // Clock signal
    input rst,                            // Reset signal
    input [31:0] instruction,             // Instruction from IF stage
    input RegWrite_WB,                    // Register write enable from WB stage
    input [31:0] rd_wb_data,              // Data from WB stage
    input [4:0] rd_wb,                    // Register address from WB stage



    output wire [31:0] rs1_data,          // rs1 data to ALU
    output wire [31:0] rs2_data,          // rs2 data to ALU
    output wire [31:0] imm,               // Immediate value to ALU
    output wire [4:0] rs1,                // rs1 register address to Forwarding Unit
    output wire [4:0] rs2,                // rs2 register address to Forwarding Unit
    output wire [4:0] rd,                 // Destination register address to WB stage


    // Control Signals
    output wire [1:0] alu_op,     // ALU operation code
    output wire alu_src,          // ALU source (0: reg, 1: immediate)
    output wire ALUSrcA,          // ALU A operand (0: rs1, 1: PC)
    output wire branch,           // Branch instruction (B-type only)
    output wire is_jal,           // JAL instruction
    output wire is_jalr,          // JALR instruction
    output wire is_lui,           // LUI instruction
    
    // MEM Stage Control Signals
    output wire is_sw,            // Store Word
    output wire is_lw,            // Load Word
    output wire MemRead,          // Memory read enable
    output wire MemWrite,         // Memory write enable
    
    // WB Stage Control Signals
    output wire RegWrite,         // Register write enable
    output wire MemtoReg,          // Memory to register (0: ALU, 1: MEM)

    output wire [2:0] func3,
    output wire [6:0] func7
);

    wire [6:0] opcode = instruction[6:0];    // Extract opcode
    reg [2:0] Imm_op;                         // Immediate operation code
    
    // Set Imm_op based on opcode
    always @(*) begin
        case (opcode)
            7'b0000011, 7'b0010011, 7'b1100111: Imm_op = 3'b001;   // I-type
            7'b0100011: Imm_op = 3'b010;                              // S-type
            7'b1100011: Imm_op = 3'b011;                              // B-type
            7'b0110111, 7'b0010111: Imm_op = 3'b100;                 // U-type
            7'b1101111: Imm_op = 3'b101;                              // J-type
            default: Imm_op = 3'b000;                                  // Default
        endcase
    end

    // Extract register addresses from instruction

     reg [4:0] rs1_reg;
     reg [4:0] rs2_reg;
   
     
     reg [4:0] rd_reg;
     always @(*) begin
        rd_reg = instruction[11:7];
    end
   
always @(*) begin
    case (opcode)
        7'b1101111, 7'b0110111, 7'b0010111: begin // JAL, LUI, AUIPC: no rs1/rs2
            rs1_reg = 5'b0;
            rs2_reg = 5'b0;
        end
        7'b1100111: begin // JALR: has rs1
            rs1_reg = instruction[19:15];
            rs2_reg = 5'b0;
        end
        default: begin // Others: rs1 and rs2 as before
            rs1_reg = instruction[19:15];
            rs2_reg = instruction[24:20];
        end
    endcase
end

    assign rs1 = rs1_reg; // Assign rs1 register address
    assign rs2 = rs2_reg; // Assign rs2 register address
    assign rd = rd_reg;


//Function Generator 

    assign func3 = instruction[14:12];
    assign func7 = instruction[31:25];



GPR gpr_inst(
    .clk(clk),
    .rst(rst),
    .rs1(rs1),
    .rs2(rs2),
    .rd_wb(rd_wb),
    .rd_wb_data(rd_wb_data),
    .RegWrite_WB(RegWrite_WB),
    .rs1_data(rs1_data),
    .rs2_data(rs2_data)
);

Imm_Gen imm_gen_inst(
    .instruction(instruction),
    .Imm_op(Imm_op),
    .Immediate(imm)
);

Control_Unit control_unit_inst(
    .opcode(opcode),
    .alu_op(alu_op),
    .alu_src(alu_src),
    .ALUSrcA(ALUSrcA),
    .branch(branch),
    .is_jal(is_jal),
    .is_jalr(is_jalr),
    .is_lui(is_lui),
    .is_sw(is_sw),
    .is_lw(is_lw),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .RegWrite(RegWrite),
    .MemtoReg(MemtoReg)
);

endmodule

