`timescale 1ns / 1ps

module BPU_tb;

    // Testbench signals
    reg clk;
    reg rst;
    reg [31:0] pc;
    reg [31:0] alu_out;
    reg branch_taken;
    reg branch_resolved;
    reg [3:0] ghr_history;
    reg [31:0] resolved_pc;
    
    wire [31:0] predicted_pc;
    wire [3:0] ghr_out;
    wire prediction_valid;
    


    
    // Instantiate the BPU module
    BPU_Top uut (
        .clk(clk),
        .rst(rst),
        .pc(pc),
        .alu_out(alu_out),
        .branch_taken(branch_taken),
        .branch_resolved(branch_resolved),
        .ghr_history(ghr_history),
        .resolved_pc(resolved_pc),
        .predicted_pc(predicted_pc),
        .ghr_out(ghr_out),
        .prediction_valid(prediction_valid)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Test sequence
    initial begin
        $dumpfile("BPU_tb.vcd");
        $dumpvars(0, BPU_tb);
        
        // Initialize signals
        clk = 0;
        rst = 1;
        pc = 32'h00000000;
        alu_out = 0;
        branch_taken = 0;
        branch_resolved = 0;
        ghr_history = 4'b0000;
        resolved_pc = 0;
        
        // Reset pulse
        #10 rst = 0;
        
        // Test Case 1: No branch
        #10 pc = 32'h00000004;
            branch_resolved = 0;
            branch_taken = 0;
            resolved_pc = 32'h00000008;
        
        // Test Case 2: Branch taken scenario
        #10 pc = 32'h00000008;
            branch_resolved = 1;
            branch_taken = 1;
            resolved_pc = 32'h00000020;
            alu_out = 32'h00000020;
            ghr_history = 4'b1010;
        
        // Test Case 3: Branch not taken scenario
        #10 pc = 32'h0000000C;
            branch_resolved = 1;
            branch_taken = 0;
            resolved_pc = 32'h00000010;
            alu_out = 32'h00000010;
            ghr_history = 4'b1100;
        
        // Test Case 4: Another branch taken with different GHR
        #10 pc = 32'h00000010;
            branch_resolved = 1;
            branch_taken = 1;
            resolved_pc = 32'h00000030;
            alu_out = 32'h00000030;
            ghr_history = 4'b0111;
        
        // Test Case 5: Mispredicted branch (should correct itself)
        #10 pc = 32'h00000014;
            branch_resolved = 1;
            branch_taken = 0;
            resolved_pc = 32'h00000018;
            alu_out = 32'h00000018;
            ghr_history = 4'b0011;
        
        // Test Case 6: Edge case - PC at high address
        #10 pc = 32'hFFFFFFFC;
            branch_resolved = 1;
            branch_taken = 1;
            resolved_pc = 32'h00000000;
            alu_out = 32'h00000000;
            ghr_history = 4'b1001;
        
        // Test Case 7: Rapid alternating branch decisions
        #10 pc = 32'h00000018;
            branch_resolved = 1;
            branch_taken = 1;
            resolved_pc = 32'h00000028;
            alu_out = 32'h00000028;
            ghr_history = 4'b0101;
        #10 pc = 32'h0000001C;
            branch_resolved = 1;
            branch_taken = 0;
            resolved_pc = 32'h00000020;
            alu_out = 32'h00000020;
            ghr_history = 4'b1110;
        
        #20 $finish;
    end
    
endmodule


