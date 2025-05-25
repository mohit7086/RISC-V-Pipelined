`timescale 1ns/1ps

module tb_Control_Unit();

    reg [6:0] opcode;
    wire [1:0] alu_op;
    wire alu_src, ALUSrcA, branch, is_jal, is_jalr, is_lui;
    wire is_sw, is_lw, MemRead, MemWrite, RegWrite, MemtoReg;

    Control_Unit uut (
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

    initial begin
        $dumpfile("Control_Unit.vcd");
        $dumpvars(0, tb_Control_Unit);
    end

    task check_control_signals;
        input [1:0] exp_alu_op;
        input exp_alu_src;
        input exp_ALUSrcA;
        input exp_branch;
        input exp_is_jal;
        input exp_is_jalr;
        input exp_is_lui;
        input exp_is_sw;
        input exp_is_lw;
        input exp_MemRead;
        input exp_MemWrite;
        input exp_RegWrite;
        input exp_MemtoReg;
        begin
            if ( (alu_op !== exp_alu_op) ||
                 (alu_src !== exp_alu_src) ||
                 (ALUSrcA !== exp_ALUSrcA) ||
                 (branch !== exp_branch) ||
                 (is_jal !== exp_is_jal) ||
                 (is_jalr !== exp_is_jalr) ||
                 (is_lui !== exp_is_lui) ||
                 (is_sw !== exp_is_sw) ||
                 (is_lw !== exp_is_lw) ||
                 (MemRead !== exp_MemRead) ||
                 (MemWrite !== exp_MemWrite) ||
                 (RegWrite !== exp_RegWrite) ||
                 (MemtoReg !== exp_MemtoReg) ) begin
                $display("Test failed for opcode %b", opcode);
                $display("  Expected: alu_op=%b, alu_src=%b, ALUSrcA=%b, branch=%b, is_jal=%b, is_jalr=%b, is_lui=%b, is_sw=%b, is_lw=%b, MemRead=%b, MemWrite=%b, RegWrite=%b, MemtoReg=%b",
                         exp_alu_op, exp_alu_src, exp_ALUSrcA, exp_branch, exp_is_jal, exp_is_jalr, exp_is_lui, exp_is_sw, exp_is_lw, exp_MemRead, exp_MemWrite, exp_RegWrite, exp_MemtoReg);
                $display("  Got:      alu_op=%b, alu_src=%b, ALUSrcA=%b, branch=%b, is_jal=%b, is_jalr=%b, is_lui=%b, is_sw=%b, is_lw=%b, MemRead=%b, MemWrite=%b, RegWrite=%b, MemtoReg=%b",
                         alu_op, alu_src, ALUSrcA, branch, is_jal, is_jalr, is_lui, is_sw, is_lw, MemRead, MemWrite, RegWrite, MemtoReg);
                $error("Test failed");
            end else begin
                $display("Test passed for opcode %b", opcode);
            end
        end
    endtask

    initial begin
        // Initialize Inputs
        opcode = 7'b0000000;

        // R-type (ADD, SUB, etc.)
        opcode = 7'b0110011;
        #10;
        check_control_signals(2'b10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

        // I-type ALU (ADDI)
        opcode = 7'b0010011;
        #10;
        check_control_signals(2'b10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

        // I-type Load (LW)
        opcode = 7'b0000011;
        #10;
        check_control_signals(2'b00, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1);

        // I-type JALR
        opcode = 7'b1100111;
        #10;
        check_control_signals(2'b11, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0);

        // S-type (SW)
        opcode = 7'b0100011;
        #10;
        check_control_signals(2'b00, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0);

        // B-type (BEQ)
        opcode = 7'b1100011;
        #10;
        check_control_signals(2'b01, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

        // J-type JAL
        opcode = 7'b1101111;
        #10;
        check_control_signals(2'b11, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0);

        // U-type LUI
        opcode = 7'b0110111;
        #10;
        check_control_signals(2'b11, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0);

        // U-type AUIPC
        opcode = 7'b0010111;
        #10;
        check_control_signals(2'b11, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

        // Dead case (unused opcode)
        opcode = 7'b1111111;
        #10;
        check_control_signals(2'b00, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

        $finish;
    end

endmodule