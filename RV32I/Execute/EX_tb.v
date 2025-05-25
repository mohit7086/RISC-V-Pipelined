`timescale 1ns/1ps

module ExecutionStage_tb;
    // Inputs
    reg clk;
    reg rst;
    reg EX_MEM_RegWrite_i;
    reg MEM_WB_RegWrite_i;
    reg [4:0] ID_EX_RS_i;
    reg [4:0] ID_EX_RT_i;
    reg [4:0] EX_MEM_RD_i;
    reg [4:0] MEM_WB_RD_i;
    reg [31:0] rs1_data;
    reg [31:0] rs2_data;
    reg [31:0] EX_MEM_i;
    reg [31:0] MEM_WB_i;
    reg [1:0] alu_op;
  	reg is_sw;
  	reg is_lw;
    reg is_lui;
    reg branch; // Added branch input
    reg is_jal;
    reg [2:0] funct3;
    reg [6:0] funct7;
    reg prediction_valid; // Added branch prediction inputs
    reg [31:0] predicted_pc; // Added branch prediction inputs
    reg alu_src;
    reg [31:0] immediate_data;
    reg [31:0] PC_ID_EX;
    reg ALUSrcA;
    reg is_jalr;

    // Outputs
    wire [31:0] alu_out;
    wire branch_taken;
    wire [31:0] branch_addr;
    wire pc_redirect; // Added branch prediction outputs
    wire flush_fetch; // Added branch prediction outputs
    wire [31:0] rs2_mem_data; // Added store data output


    // Instantiate the Unit Under Test (UUT)
    ExecutionStage uut (
        .clk(clk),
        .rst(rst),
        .EX_MEM_RegWrite_i(EX_MEM_RegWrite_i),
        .MEM_WB_RegWrite_i(MEM_WB_RegWrite_i),
        .ID_EX_RS_i(ID_EX_RS_i),
        .ID_EX_RT_i(ID_EX_RT_i),
        .EX_MEM_RD_i(EX_MEM_RD_i),
        .MEM_WB_RD_i(MEM_WB_RD_i),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .EX_MEM_i(EX_MEM_i),
        .MEM_WB_i(MEM_WB_i),
        .alu_op(alu_op),
        .is_sw(is_sw),
      	.is_lw(is_lw),
        .is_lui(is_lui),
        .branch(branch), // Connect branch input
        .is_jal(is_jal),
        .funct3(funct3),
        .funct7(funct7),
        .prediction_valid(prediction_valid), // Connect prediction inputs
        .predicted_pc(predicted_pc),         // Connect prediction inputs
        .alu_src(alu_src),
        .immediate_data(immediate_data),
        .PC_ID_EX(PC_ID_EX),
        .ALUSrcA(ALUSrcA),
        .is_jalr(is_jalr),
        .alu_out(alu_out),
        .branch_taken(branch_taken),
        .branch_addr(branch_addr),
        .pc_redirect(pc_redirect),   // Connect redirect outputs
        .flush_fetch(flush_fetch),   // Connect redirect outputs
        .rs2_mem_data(rs2_mem_data) // Connect store data output
    );

    // Clock Generation (for completeness, though module is combinational)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Monitor all input and output signals
    initial begin
      $monitor("Time=%0t: clk=%b, rst=%b, EX_MEM_RegWrite=%b, MEM_WB_RegWrite=%b, ID_EX_RS=%d, ID_EX_RT=%d, EX_MEM_RD=%d, MEM_WB_RD=%d, rs1_data=%h, rs2_data=%h, EX_MEM_i=%h, MEM_WB_i=%h, alu_op=%b, is_sw=%b, is_lw=%b, is_lui=%b, branch=%b, is_jal=%b, funct3=%b, funct7=%b, prediction_valid=%b, predicted_pc=%h, alu_src=%b, immediate_data=%h, PC_ID_EX=%h, ALUSrcA=%b, is_jalr=%b, alu_out=%h, branch_taken=%b, branch_addr=%h, pc_redirect=%b, flush_fetch=%b, rs2_mem_data=%h",
        $time, clk, rst, EX_MEM_RegWrite_i, MEM_WB_RegWrite_i, ID_EX_RS_i, ID_EX_RT_i, EX_MEM_RD_i, MEM_WB_RD_i, rs1_data, rs2_data, EX_MEM_i, MEM_WB_i, alu_op, is_sw, is_lw, is_lui, branch, is_jal, funct3, funct7, prediction_valid, predicted_pc, alu_src, immediate_data, PC_ID_EX, ALUSrcA, is_jalr, alu_out, branch_taken, branch_addr, pc_redirect, flush_fetch, rs2_mem_data);
    end

    initial begin
        $dumpfile("execution_stage.vcd");
        $dumpvars(0, ExecutionStage_tb);

        // Initialize all inputs
        rst = 1; // Assert reset
        EX_MEM_RegWrite_i = 0;
        MEM_WB_RegWrite_i = 0;
        ID_EX_RS_i = 0;
        ID_EX_RT_i = 0;
        EX_MEM_RD_i = 0;
        MEM_WB_RD_i = 0;
        rs1_data = 0;
        rs2_data = 0;
        EX_MEM_i = 0;
        MEM_WB_i = 0;
        alu_op = 0;
      	is_sw = 0;
      	is_lw = 0;
        is_lui = 0;
        branch = 0;
        is_jal = 0;
        funct3 = 0;
        funct7 = 0;
        prediction_valid = 0;
        predicted_pc = 0;
        alu_src = 0;
        immediate_data = 0;
        PC_ID_EX = 0;
        ALUSrcA = 0;
        is_jalr = 0;

        #10;
        rst = 0; // Deassert reset
        #10;

        //--------------------------------------------------
        // Test Case 1: ADD Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 1: ADD");
        alu_op = 2'b10;
        funct3 = 3'b000;
        funct7 = 7'b0000000;
        rs1_data = 32'd5;
        rs2_data = 32'd10;
        alu_src = 0;
        branch = 0; // Not a branch
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'd15) $display("ADD Error: Expected 15, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 2: ADDI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 2: ADDI");
        alu_op = 2'b00;
        funct3 = 3'b000;
        alu_src = 1;
        rs1_data = 32'd5;
        immediate_data = 32'd10;
        branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'd15) $display("ADDI Error: Expected 15, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 3: LUI Instruction
        //--------------------------------------------------
        $display("Test Case 3: LUI");
        is_lui = 1;
        alu_op = 2'b11; // U-type ALUOp
        alu_src = 1; // Use immediate
        ALUSrcA = 0; // Don't use PC for operand A
        immediate_data = 32'h12345000;
        rs1_data = 32'h0; // RS1 is ignored for LUI
        rs2_data = 32'h0; // RS2 is ignored for LUI
        branch = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;
        PC_ID_EX = 32'h0; // PC is ignored for LUI ALU op

        #10;
        if(alu_out !== 32'h12345000) $display("LUI Error: Expected 0x12345000, got %h", alu_out);
        is_lui = 0;
        alu_op = 2'b00; // Reset ALU op to default/other value
        immediate_data = 0;
        #10;

        //--------------------------------------------------
        // Test Case 4: AUIPC Instruction
        //--------------------------------------------------
        $display("Test Case 4: AUIPC");
        ALUSrcA = 1; // Use PC for operand A
        alu_src = 1; // Use immediate for operand B
        alu_op = 2'b11; // U-type/JALR ALUOp (ADD operation)
        PC_ID_EX = 32'h00001000;
        immediate_data = 32'h00000200;
        rs1_data = 32'h0; // RS1 is ignored
        rs2_data = 32'h0; // RS2 is ignored
        branch = 0;
        is_lui = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;
        funct3 = 0; // Set funct3 appropriately for ADD (ALU Control)
        funct7 = 0; // Set funct7 appropriately for ADD (ALU Control)

        #10;
        if(alu_out !== 32'h00001200) $display("AUIPC Error: Expected 0x00001200, got %h", alu_out);
        ALUSrcA = 0;
        alu_op = 2'b00; // Reset ALU op
        #10;

        //--------------------------------------------------
        // Test Case 5: JAL Instruction
        //--------------------------------------------------
        $display("Test Case 5: JAL");
        is_jal = 1;
        branch = 1; // JAL affects PC flow, treat as potential redirect
        PC_ID_EX = 32'h00002000;
        immediate_data = 32'shFFFFF000; // Offset -4096 (2000 - 1000)
        alu_op = 2'b11; // U-type/JALR ALUOp
        ALUSrcA = 0; // PC+4 is calculated separately for JAL/JALR
        alu_src = 1; // Immediate is used for branch target calculation
        // Prediction: Assume predicted correctly for now
        prediction_valid = 1;
        predicted_pc = 32'h00001000; // Expected target: 2000 + (-4096) = 1000

        #10;
        if(alu_out !== 32'h00002004 || branch_addr !== 32'h00001000 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("JAL Error (Correct Prediction): alu_out=%h branch_addr=%h pc_redirect=%b flush_fetch=%b", alu_out, branch_addr, pc_redirect, flush_fetch);

        // Test JAL with misprediction
        $display("Test Case 5a: JAL Misprediction");
        predicted_pc = 32'h00005000; // Predict wrong target
        #10;
         if(pc_redirect !== 1 || flush_fetch !== 1)
            $display("JAL Error (Misprediction): pc_redirect=%b flush_fetch=%b", pc_redirect, flush_fetch);

        is_jal = 0;
        branch = 0;
        prediction_valid = 0;
        predicted_pc = 0;
        immediate_data = 0;
        alu_op = 2'b00;
        #10;

        //--------------------------------------------------
        // Test Case 6: JALR Instruction
        //--------------------------------------------------
        $display("Test Case 6: JALR");
        is_jalr = 1;
        branch = 1; // JALR affects PC flow, treat as potential redirect
        alu_op = 2'b11; // U-type/JALR ALUOp
        ALUSrcA = 0; // PC+4 is calculated separately for JAL/JALR
        alu_src = 1; // Immediate is used for base + offset calculation
        rs1_data = 32'h00003001; // Base address (will be used with immediate)
        immediate_data = 32'h00000020; // Offset
        PC_ID_EX = 32'h00004000; // For return address calculation
        // Prediction: Assume predicted correctly for now
        prediction_valid = 1; // Prediction is valid
        predicted_pc = 32'h00003020; // Expected target: (00003001 + 0020) & ~1 = 00003020

        #10;
        if(alu_out !== 32'h00004004 || branch_addr !== 32'h00003020 || pc_redirect !== 0 || flush_fetch !== 0)
            $display("JALR Error (Correct Prediction): alu_out=%h branch_addr=%h pc_redirect=%b flush_fetch=%b", alu_out, branch_addr, pc_redirect, flush_fetch);

        // Test JALR with misprediction
        $display("Test Case 6a: JALR Misprediction");
        predicted_pc = 32'h00006000; // Predict wrong target
        #10;
         if(pc_redirect !== 1 || flush_fetch !== 1)
            $display("JALR Error (Misprediction): pc_redirect=%b flush_fetch=%b", pc_redirect, flush_fetch);

        is_jalr = 0;
        branch = 0;
        prediction_valid = 0;
        predicted_pc = 0;
        rs1_data = 0;
        immediate_data = 0;
        alu_op = 2'b00;
        #10;

        //--------------------------------------------------
        // Test Case 7: BEQ Taken (Correctly Predicted)
        //--------------------------------------------------
        $display("Test Case 7: BEQ Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b000; // BEQ
        rs1_data = 32'd10;
        rs2_data = 32'd10;
        PC_ID_EX = 32'h00005000;
        immediate_data = 32'sh00000100; // Branch offset +256
        // Prediction: Predict Taken to correct target
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h00005100; // Expected target: 5000 + 100 = 5100

        #10;
        if(!branch_taken || branch_addr !== 32'h00005100 || pc_redirect !== 0 || flush_fetch !== 0)
            $display("BEQ Taken Error (Correct Prediction): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 7a: BEQ Taken (Mispredicted Not Taken)
        //--------------------------------------------------
        $display("Test Case 7a: BEQ Taken (Mispredicted Not Taken)");
        rs1_data = 32'd10;
        rs2_data = 32'd10; // Still equal, branch is taken
        // Prediction: Predict Not Taken
        prediction_valid = 0; // Predict Not Taken
        predicted_pc = 32'h00005004; // Predicted target if not taken (PC+4)

        #10;
        if(!branch_taken || branch_addr !== 32'h00005100 || pc_redirect !== 1 || flush_fetch !== 1)
             $display("BEQ Taken Error (Mispredicted Not Taken): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;

         //--------------------------------------------------
        // Test Case 7b: BEQ Taken (Mispredicted Target Address)
        //--------------------------------------------------
        $display("Test Case 7b: BEQ Taken (Mispredicted Target Address)");
        rs1_data = 32'd10;
        rs2_data = 32'd10; // Still equal, branch is taken
        // Prediction: Predict Taken to wrong target
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h00006000; // Predicted target wrong address

        #10;
        if(!branch_taken || branch_addr !== 32'h00005100 || pc_redirect !== 1 || flush_fetch !== 1)
             $display("BEQ Taken Error (Mispredicted Target Address): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 7c: BEQ Not Taken (Correctly Predicted)
        //--------------------------------------------------
        $display("Test Case 7c: BEQ Not Taken (Correct Prediction)");
        rs1_data = 32'd10;
        rs2_data = 32'd11; // Not equal, branch not taken
        // Prediction: Predict Not Taken
        prediction_valid = 0; // Predict Not Taken
        predicted_pc = 32'h00005004; // Predicted target if not taken (PC+4)

        #10;
        if(branch_taken !== 0 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BEQ Not Taken Error (Correct Prediction): branch_taken=%b pc_redirect=%b flush_fetch=%b", branch_taken, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 7d: BEQ Not Taken (Mispredicted Taken)
        //--------------------------------------------------
        $display("Test Case 7d: BEQ Not Taken (Mispredicted Taken)");
        rs1_data = 32'd10;
        rs2_data = 32'd11; // Not equal, branch not taken
        // Prediction: Predict Taken
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h00005100; // Predicted target if taken

        #10;
        if(branch_taken !== 0 || pc_redirect !== 1 || flush_fetch !== 1)
             $display("BEQ Not Taken Error (Mispredicted Taken): branch_taken=%b pc_redirect=%b flush_fetch=%b", branch_taken, pc_redirect, flush_fetch);
        #10;


        //--------------------------------------------------
        // Test Case 8: Store Instruction (SW)
        //--------------------------------------------------
        $display("Test Case 8: SW");
        alu_op = 2'b00; // I-type/Load/Store ALUOp
      	is_sw = 1;
      	is_lw = 0;
        funct3 = 3'b010; // SW funct3
        alu_src = 1; // Use immediate for offset
        rs1_data = 32'h1000; // Base address
        immediate_data = 32'h0040; // Offset
        rs2_data = 32'hCAFEBABE; // Data to be stored
        branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h1040) $display("SW ALU Error: Expected 0x1040, got %h", alu_out);
        if(rs2_mem_data !== 32'hCAFEBABE) $display("SW Data Error: Expected 0xCAFEBABE, got %h", rs2_mem_data);
      	is_sw = 0;
        rs2_data = 0; // Reset rs2_data
        #10;

        //--------------------------------------------------
        // Test Case 9: Load Instruction (LW)
        //--------------------------------------------------
        $display("Test Case 9: LW");
        alu_op = 2'b00; // I-type/Load/Store ALUOp
      	is_lw = 1;
        is_sw = 0;
        funct3 = 3'b010; // LW funct3
        alu_src = 1; // Use immediate for offset
        rs1_data = 32'h2000; // Base address
        immediate_data = 32'h0080; // Offset
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;


        #10;
        // LW calculates the effective address, which is the alu_out
        if(alu_out !== 32'h2080) $display("LW ALU Error: Expected 0x2080, got %h", alu_out);
      	is_lw = 0;
        #10;

        //--------------------------------------------------
        // Test Case 10: SLL Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 10: SLL");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b001; // SLL funct3
        funct7 = 7'b0000000; // SLL funct7
        rs1_data = 32'h0000000F;
        rs2_data = 32'd4; // Shift amount
        alu_src = 0; // Use rs2_data as operand B
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h000000F0) $display("SLL Error: Expected 0xF0, got %h", alu_out);
        #10;

         //--------------------------------------------------
        // Test Case 11: SLLI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 11: SLLI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b001; // SLLI funct3
        funct7 = 7'b0000000; // SLLI funct7 (ignored for SLLI)
        alu_src = 1; // Use immediate for shift amount
        rs1_data = 32'h0000000F;
        immediate_data = 32'd8; // Shift amount (lower 5 bits used)
        branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h00000F00) $display("SLLI Error: Expected 0xF00, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 12: SUB Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 12: SUB");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b000; // ADD/SUB funct3
        funct7 = 7'b0100000; // Indicates SUB
        rs1_data = 32'd15;
        rs2_data = 32'd10;
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'd5) $display("SUB Error: Expected 5, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 13: AND Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 13: AND");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b111; // AND funct3
        funct7 = 7'b0000000;
        rs1_data = 32'hFFFF_FFFF;
        rs2_data = 32'hAAAA_AAAA;
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'hAAAA_AAAA) $display("AND Error: Expected 0xAAAAAAAA, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 14: OR Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 14: OR");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b110; // OR funct3
        funct7 = 7'b0000000;
        rs1_data = 32'h1234_5678;
        rs2_data = 32'h8765_4321;
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h9775_5779) $display("OR Error: Expected 0x97755779, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 15: XOR Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 15: XOR");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b100; // XOR funct3
        funct7 = 7'b0000000;
        rs1_data = 32'hAAAA_AAAA;
        rs2_data = 32'h5555_5555;
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'hFFFF_FFFF) $display("XOR Error: Expected 0xFFFFFFFF, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 16: SRL Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 16: SRL");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b101; // SRL/SRA funct3
        funct7 = 7'b0000000; // Indicates SRL
        rs1_data = 32'h8000_0000;
        rs2_data = 32'd4; // Shift amount
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h0800_0000) $display("SRL Error: Expected 0x08000000, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 17: SRA Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 17: SRA");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b101; // SRL/SRA funct3
        funct7 = 7'b0100000; // Indicates SRA
        rs1_data = 32'sh8000_0000; // Signed negative number
        rs2_data = 32'd4; // Shift amount
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'shF800_0000) $display("SRA Error: Expected 0xF8000000, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 18: SLT Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 18: SLT");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b010; // SLT funct3
        funct7 = 7'b0000000;
        rs1_data = 32'shFFFF_FFFE; // -2 signed
        rs2_data = 32'd1;          // 1 signed
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h1) $display("SLT Error: Expected 1, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 19: SLTU Instruction (R-type)
        //--------------------------------------------------
        $display("Test Case 19: SLTU");
        alu_op = 2'b10; // R-type ALUOp
        funct3 = 3'b011; // SLTU funct3
        funct7 = 7'b0000000;
        rs1_data = 32'hFFFF_FFFF; // Max unsigned
        rs2_data = 32'd1;          // 1 unsigned
        alu_src = 0;
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h0) $display("SLTU Error: Expected 0, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 20: ANDI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 20: ANDI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b111; // ANDI funct3
        alu_src = 1; // Use immediate
        rs1_data = 32'hFFFF_FFFF;
        immediate_data = 32'h0000_AAAA; // Immediate value (sign-extended before ALU)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h0000_AAAA) $display("ANDI Error: Expected 0xAAAA, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 21: ORI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 21: ORI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b110; // ORI funct3
        alu_src = 1; // Use immediate
        rs1_data = 32'h0000_1234;
        immediate_data = 32'hFFFF_0000; // Immediate value (sign-extended before ALU)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'hFFFF_1234) $display("ORI Error: Expected 0xFFFF1234, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 22: XORI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 22: XORI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b100; // XORI funct3
        alu_src = 1; // Use immediate
        rs1_data = 32'hAAAA_AAAA;
        immediate_data = 32'h5555_5555; // Immediate value (sign-extended before ALU)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'hFFFF_FFFF) $display("XORI Error: Expected 0xFFFFFFFF, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 23: SRLI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 23: SRLI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b101; // SRLI/SRAI funct3
        funct7 = 7'b0000000; // Indicates SRLI
        alu_src = 1; // Use immediate for shift amount
        rs1_data = 32'h8000_0000;
        immediate_data = 32'd4; // Shift amount (lower 5 bits used)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h0800_0000) $display("SRLI Error: Expected 0x08000000, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 24: SRAI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 24: SRAI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b101; // SRLI/SRAI funct3
        funct7 = 7'b0100000; // Indicates SRAI
        alu_src = 1; // Use immediate for shift amount
        rs1_data = 32'sh8000_0000; // Signed negative number
        immediate_data = 32'd4; // Shift amount (lower 5 bits used)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'shF800_0000) $display("SRAI Error: Expected 0xF8000000, got %h", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 25: SLTI Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 25: SLTI");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b010; // SLTI funct3
        alu_src = 1; // Use immediate
        rs1_data = 32'shFFFF_FFFE; // -2 signed
        immediate_data = 32'd1;          // 1 signed (sign-extended)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h1) $display("SLTI Error: Expected 1, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 26: SLTIU Instruction (I-type)
        //--------------------------------------------------
        $display("Test Case 26: SLTIU");
        alu_op = 2'b00; // I-type ALUOp
        funct3 = 3'b011; // SLTIU funct3
        alu_src = 1; // Use immediate
        rs1_data = 32'hFFFF_FFFF; // Max unsigned
        immediate_data = 32'd1;          // 1 unsigned (sign-extended)
         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
         prediction_valid = 0;
        predicted_pc = 0;

        #10;
        if(alu_out !== 32'h0) $display("SLTIU Error: Expected 0, got %d", alu_out);
        #10;

        //--------------------------------------------------
        // Test Case 27: BEQ Not Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 27: BEQ Not Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b000; // BEQ
        rs1_data = 32'd10;
        rs2_data = 32'd11; // Not equal
        PC_ID_EX = 32'h00006000;
        immediate_data = 32'h00000100; // Branch offset
        // Prediction: Predict Not Taken
        prediction_valid = 0; // Predict Not Taken
        predicted_pc = 32'h00006004; // Predicted target PC+4

        #10;
        if(branch_taken !== 0 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BEQ Not Taken Error (Correct Prediction): branch_taken=%b pc_redirect=%b flush_fetch=%b", branch_taken, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 28: BNE Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 28: BNE Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b001; // BNE
        rs1_data = 32'd10;
        rs2_data = 32'd11; // Not equal
        PC_ID_EX = 32'h00007000;
        immediate_data = 32'h00000200; // Branch offset
        // Prediction: Predict Taken
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h00007200; // Expected target: 7000 + 200 = 7200

        #10;
        if(!branch_taken || branch_addr !== 32'h00007200 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BNE Taken Error (Correct Prediction): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;

         //--------------------------------------------------
        // Test Case 29: BLT Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 29: BLT Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b100; // BLT
        rs1_data = 32'shFFFF_FFFF; // -1 signed
        rs2_data = 32'd1;          // 1 signed
        PC_ID_EX = 32'h00008000;
        immediate_data = 32'h00000300; // Branch offset
        // Prediction: Predict Taken
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h00008300; // Expected target: 8000 + 300 = 8300

        #10;
        if(!branch_taken || branch_addr !== 32'h00008300 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BLT Taken Error (Correct Prediction): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 30: BGE Not Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 30: BGE Not Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b101; // BGE
        rs1_data = 32'shFFFF_FFFF; // -1 signed
        rs2_data = 32'd0;          // 0 signed (-1 < 0 is false)
        PC_ID_EX = 32'h00009000;
        immediate_data = 32'h00000400; // Branch offset
        // Prediction: Predict Not Taken
        prediction_valid = 0; // Predict Not Taken
        predicted_pc = 32'h00009004; // Predicted target PC+4

        #10;
         if(branch_taken !== 0 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BGE Not Taken Error (Correct Prediction): branch_taken=%b pc_redirect=%b flush_fetch=%b", branch_taken, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 31: BLTU Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 31: BLTU Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b110; // BLTU
        rs1_data = 32'h0000_0001; // 1 unsigned
        rs2_data = 32'hFFFF_FFFF; // Max unsigned (1 < Max is true)
        PC_ID_EX = 32'h0000A000;
        immediate_data = 32'h00000500; // Branch offset
        // Prediction: Predict Taken
        prediction_valid = 1; // Predict Taken
        predicted_pc = 32'h0000A500; // Expected target: A000 + 500 = A500

        #10;
        if(!branch_taken || branch_addr !== 32'h0000A500 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BLTU Taken Error (Correct Prediction): branch_taken=%b branch_addr=%h pc_redirect=%b flush_fetch=%b", branch_taken, branch_addr, pc_redirect, flush_fetch);
        #10;


        //--------------------------------------------------
        // Test Case 32: BGEU Not Taken (Correct Prediction)
        //--------------------------------------------------
        $display("Test Case 32: BGEU Not Taken (Correct Prediction)");
        branch = 1;
        alu_op = 2'b01; // Branch ALUOp
        funct3 = 3'b111; // BGEU
        rs1_data = 32'h0000_0001; // 1 unsigned
        rs2_data = 32'hFFFF_FFFF; // Max unsigned (1 >= Max is false)
        PC_ID_EX = 32'h0000B000;
        immediate_data = 32'h00000600; // Branch offset
        // Prediction: Predict Not Taken
        prediction_valid = 0; // Predict Not Taken
        predicted_pc = 32'h0000B004; // Predicted target PC+4

        #10;
         if(branch_taken !== 0 || pc_redirect !== 0 || flush_fetch !== 0)
             $display("BGEU Not Taken Error (Correct Prediction): branch_taken=%b pc_redirect=%b flush_fetch=%b", branch_taken, pc_redirect, flush_fetch);
        #10;

        //--------------------------------------------------
        // Test Case 33: MEM/WB Forwarding to RS1 (ADD)
        //--------------------------------------------------
        $display("Test Case 33: MEM/WB Forwarding to RS1");
        // Set up MEM/WB stage data
        MEM_WB_RegWrite_i = 1;
        MEM_WB_RD_i = 5; // Register R5 written in MEM/WB
        MEM_WB_i = 32'hDEADBEEF; // Data in MEM/WB stage for R5

        // Set up current instruction (ADD R1, R5, R2)
        ID_EX_RS_i = 5; // Instruction needs R5 (matches MEM_WB_RD_i)
        ID_EX_RT_i = 2; // Instruction needs R2
        rs1_data = 32'h00000000; // Default RS1 data (should be ignored)
        rs2_data = 32'h00000001; // Default RS2 data (will be used as operand B)

        alu_op = 2'b10; // R-type
        funct3 = 3'b000; // ADD
        funct7 = 7'b0000000;
        alu_src = 0; // Use RS2 for operand B
        branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;


        #10;
        // Expected result: forwarded data (0xDEADBEEF) + rs2_data (0x1)
        if (alu_out !== 32'hDEADBEEF + 32'h1)
             $display("MEM/WB Forwarding RS1 Error: Expected %h, got %h", 32'hDEADBEEF + 32'h1, alu_out);

        // Clean up forwarding signals
        MEM_WB_RegWrite_i = 0;
        #10;

        //--------------------------------------------------
        // Test Case 34: EX/MEM Forwarding to RS2 (ADD)
        //--------------------------------------------------
        $display("Test Case 34: EX/MEM Forwarding to RS2");
        // Set up EX/MEM stage data
        EX_MEM_RegWrite_i = 1;
        EX_MEM_RD_i = 6; // Register R6 written in EX/MEM
        EX_MEM_i = 32'hCAFEBABE; // Data in EX/MEM stage for R6

        // Set up current instruction (ADD R1, R2, R6)
        ID_EX_RS_i = 2; // Instruction needs R2
        ID_EX_RT_i = 6; // Instruction needs R6 (matches EX_MEM_RD_i)
        rs1_data = 32'h00000002; // Default RS1 data (will be used as operand A)
        rs2_data = 32'h00000000; // Default RS2 data (should be ignored)

        alu_op = 2'b10; // R-type
        funct3 = 3'b000; // ADD
        funct7 = 7'b0000000;
        alu_src = 0; // Use RS2 for operand B
        branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        // Expected result: rs1_data (0x2) + forwarded data (0xCAFEBABE)
        if (alu_out !== 32'h2 + 32'hCAFEBABE)
             $display("EX/MEM Forwarding RS2 Error: Expected %h, got %h", 32'h2 + 32'hCAFEBABE, alu_out);

        // Clean up forwarding signals
        EX_MEM_RegWrite_i = 0;
        #10;


        //--------------------------------------------------
        // Test Case 35: Forwarding Priority (EX/MEM over MEM/WB) to RS1
        //--------------------------------------------------
        $display("Test Case 35: Forwarding Priority (EX/MEM > MEM/WB) to RS1");
        // Set up both stages writing to the SAME register
        EX_MEM_RegWrite_i = 1;
        EX_MEM_RD_i = 7;
        EX_MEM_i = 32'hAAAAFFFF; // Data from EX/MEM

        MEM_WB_RegWrite_i = 1;
        MEM_WB_RD_i = 7;
        MEM_WB_i = 32'hBBBBEEEE; // Data from MEM/WB (should be overridden)

        // Set up current instruction (ADD R1, R7, R2)
        ID_EX_RS_i = 7; // Instruction needs R7 (matches both RD_i)
        ID_EX_RT_i = 2;
        rs1_data = 32'h0; // Default RS1 data (ignored)
        rs2_data = 32'h1; // Default RS2 data (used)

        alu_op = 2'b10; // R-type
        funct3 = 3'b000; // ADD
        funct7 = 7'b0000000;
        alu_src = 0; // Use RS2

         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;


        #10;
        // Expected result: EX/MEM data + rs2_data
        if (alu_out !== 32'hAAAAFFFF + 32'h1)
             $display("Forwarding Priority RS1 Error: Expected %h, got %h", 32'hAAAAFFFF + 32'h1, alu_out);

        // Clean up forwarding signals
        EX_MEM_RegWrite_i = 0;
        MEM_WB_RegWrite_i = 0;
        #10;

         //--------------------------------------------------
        // Test Case 36: Forwarding Priority (EX/MEM over MEM/WB) to RS2
        //--------------------------------------------------
        $display("Test Case 36: Forwarding Priority (EX/MEM > MEM/WB) to RS2");
        // Set up both stages writing to the SAME register
        EX_MEM_RegWrite_i = 1;
        EX_MEM_RD_i = 8;
        EX_MEM_i = 32'hCCCCDDDD; // Data from EX/MEM

        MEM_WB_RegWrite_i = 1;
        MEM_WB_RD_i = 8;
        MEM_WB_i = 32'hEEEEFFFF; // Data from MEM/WB (should be overridden)

        // Set up current instruction (ADD R1, R2, R8)
        ID_EX_RS_i = 2; // Instruction needs R2
        ID_EX_RT_i = 8; // Instruction needs R8 (matches both RD_i)
        rs1_data = 32'h2; // Default RS1 data (used)
        rs2_data = 32'h0; // Default RS2 data (ignored)

        alu_op = 2'b10; // R-type
        funct3 = 3'b000; // ADD
        funct7 = 7'b0000000;
        alu_src = 0; // Use RS2

         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        // Expected result: rs1_data + EX/MEM data
        if (alu_out !== 32'h2 + 32'hCCCCDDDD)
             $display("Forwarding Priority RS2 Error: Expected %h, got %h", 32'h2 + 32'hCCCCDDDD, alu_out);

        // Clean up forwarding signals
        EX_MEM_RegWrite_i = 0;
        MEM_WB_RegWrite_i = 0;
        #10;

        //--------------------------------------------------
        // Test Case 37: Forwarding to R0 (should not happen)
        //--------------------------------------------------
        $display("Test Case 37: Forwarding to R0 (ignored)");
         // Set up forwarding that targets R0 (register 0)
        EX_MEM_RegWrite_i = 1;
        EX_MEM_RD_i = 0; // R0
        EX_MEM_i = 32'hBADF00D; // Data that should NOT be forwarded

        MEM_WB_RegWrite_i = 1;
        MEM_WB_RD_i = 0; // R0
        MEM_WB_i = 32'hGOODFOOD; // Data that should NOT be forwarded

        // Set up current instruction reading R0
        ID_EX_RS_i = 0; // Instruction needs R0
        ID_EX_RT_i = 0; // Instruction needs R0
        rs1_data = 32'h00000000; // Default RS1 data for R0
        rs2_data = 32'h00000000; // Default RS2 data for R0

        alu_op = 2'b10; // R-type
        funct3 = 3'b000; // ADD
        funct7 = 7'b0000000;
        alu_src = 0; // Use RS2

         branch = 0;
        is_lui = 0;
        ALUSrcA = 0;
        is_jal = 0;
        is_jalr = 0;
        is_lw = 0;
        is_sw = 0;
        prediction_valid = 0;
        predicted_pc = 0;

        #10;
        // Expected result: R0 + R0 = 0 + 0 = 0 (forwarding should be ignored)
        if (alu_out !== 32'h0)
             $display("Forwarding R0 Error: Expected 0x0, got %h", alu_out);

        // Clean up forwarding signals
        EX_MEM_RegWrite_i = 0;
        MEM_WB_RegWrite_i = 0;
        #10;

        // Restore default values for next tests
        ID_EX_RS_i = 0;
        ID_EX_RT_i = 0;
        rs1_data = 0;
        rs2_data = 0;
        alu_op = 0;
        funct3 = 0;
        funct7 = 0;
        alu_src = 0;


        $display("All RV32I and Forwarding test cases completed");
        $finish;
    end
endmodule