module Decode_Stage_tb;

    // Declare inputs as regs and outputs as wires
    reg clk;
    reg rst;
    reg [31:0] instruction;
    reg stall;
    reg flush;
    reg [31:0] rd_wb_data;
    reg [4:0] rd_wb;
    wire [31:0] rs1_data;
    wire [31:0] rs2_data;
    wire [31:0] imm;
    wire [4:0] rs1;
    wire [4:0] rs2;
    wire branch;
    wire memread;
    wire memtoreg;
    wire memwrite;
    wire aluSrc;
    wire regwrite;
    wire [1:0] Aluop;

    // Instantiate the Decode_Stage module
    Decode_Stage uut (
        .clk(clk),
        .rst(rst),
        .instruction(instruction),
        .stall(stall),
        .flush(flush),
        .rd_wb_data(rd_wb_data),
        .rd_wb(rd_wb),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data),
        .imm(imm),
        .rs1(rs1),
        .rs2(rs2),
        .branch(branch),
        .memread(memread),
        .memtoreg(memtoreg),
        .memwrite(memwrite),
        .aluSrc(aluSrc),
        .regwrite(regwrite),
        .Aluop(Aluop)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10ns period, 50MHz clock

    // Testbench initialization
    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        instruction = 32'b0;
        stall = 0;
        flush = 0;
        rd_wb_data = 32'hDEADBEEF;  // Example data to write back
        rd_wb = 5'd10;  // Write to register 10

        // Initialize VCD dump file
        $dumpfile("decode_stage_tb.vcd");  // Define the VCD output file
        $dumpvars(0, Decode_Stage_tb);     // Dump all variables in the testbench

        // Test reset
        rst = 1;
        #10;
        rst = 0;

        // Test case 1: Instruction decode for R-type (ADD)
        instruction = 32'b000000000000000100000001100000000110011;  // ADD x3, x1, x2 (32 bits long)
        #10;
        
        // Write-back (simulate data from EX/MEM stage)
        rd_wb_data = 32'hA5A5A5A5;  // Example data
        rd_wb = 5'd3;  // Writing to register 3
        #10;

        // Test case 2: Instruction decode for I-type (ADDI)
        instruction = 32'b000000000000000100000001100000000010011;  // ADDI x3, x1, 7 (32 bits long)
        #10;
        
        // Write-back (simulate data from EX/MEM stage)
        rd_wb_data = 32'h12345678;  // Example data
        rd_wb = 5'd3;  // Writing to register 3
        #10;

        // Test case 3: Instruction decode for Load (LW)
        instruction = 32'b0000000000000001000000100000000000000011;  // LW x3, 0(x1) (32 bits long)
        #10;

        // Test case 4: Instruction decode for Branch (BEQ)
        instruction = 32'b0000000000000001000000100000000001100011;  // BEQ x1, x2, 0 (32 bits long)
        #10;

        // Test case 5: Instruction decode for Jump (JAL)
        instruction = 32'b0000000000000000000000000001101111;  // JAL (32 bits long)
        #10;
        
        // Finish simulation
        $finish;
    end

    // Display simulation results
    initial begin
        $monitor("Time = %0t | Instruction = %b | rs1_data = %h | rs2_data = %h | imm = %h | branch = %b | memread = %b | memtoreg = %b | memwrite = %b | aluSrc = %b | regwrite = %b | Aluop = %b | rs1 = %b | rs2 = %b",
                 $time, instruction, rs1_data, rs2_data, imm, branch, memread, memtoreg, memwrite, aluSrc, regwrite, Aluop, rs1,rs2 );
    end

endmodule
