module Decode_Stage(
    input clk,                            // Clock signal
    input rst,                            // Reset signal
    input [31:0] instruction,             // Instruction from IF stage
    input stall,                          // Stall signal
    input flush,                          // Flush signal
    input [31:0] rd_wb_data,              // Data from WB stage
    input [4:0] rd_wb,                    // Register address from WB stage
    output wire [31:0] rs1_data,          // rs1 data to ALU
    output wire [31:0] rs2_data,          // rs2 data to ALU
    output wire [31:0] imm,               // Immediate value to ALU
    output wire [4:0] rs1,                // rs1 register address to Forwarding Unit
    output wire [4:0] rs2,                // rs2 register address to Forwarding Unit
    output wire branch,                   // Branch control
    output wire memread,                  // Memread control
    output wire memtoreg,                 // Memtoreg control
    output wire memwrite,                 // Memwrite control
    output wire aluSrc,                   // AluSrc control
    output wire regwrite,                 // Regwrite control
    output wire [1:0] Aluop              // ALU operation control
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
    reg [4:0] rs1_reg, rs2_reg;
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

assign rs1 = rs1_reg;
assign rs2 = rs2_reg;



GPR gpr_inst(
    .clk(clk),
    .rst(rst),
    .rs1(rs1),
    .rs2(rs2),
    .rd_wb(rd_wb),
    .rd_wb_data(rd_wb_data),
    .RegWrite(regwrite),
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
    .stall(stall),
    .flush(flush),
    .branch(branch),
    .memread(memread),
    .memtoreg(memtoreg),
    .memwrite(memwrite),
    .aluSrc(aluSrc),
    .regwrite(regwrite),
    .Aluop(Aluop)
);

endmodule
