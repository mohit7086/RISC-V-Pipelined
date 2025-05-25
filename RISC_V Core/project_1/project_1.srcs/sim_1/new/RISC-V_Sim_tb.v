`timescale 1ns/1ps

module tb_RISC_V_Top();

  reg clk;
  reg rst;
  wire [31:0] current_pc;
  wire [31:0] instruction;
  wire [4:0] rd_out;

  // Instantiate the DUT
  RISC_V_Top dut (
    .clk(clk),
    .rst(rst),
    .current_pc(current_pc),
    .instruction(instruction)
  );

  // We add output of rd_wb_out from DUT for monitoring
  // Since rd_wb_out is internal wire, we need to modify DUT to output it.
  // Let's assume you modify RISC_V_Top to add:
  // output [4:0] rd_wb_out;
  // and connect it to the internal rd_wb_out wire.
  //
  // If you did that, then here:
  // .rd_wb_out(rd_out)

  // Clock generation: 10ns period (100MHz)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Test sequence
  initial begin
    // Apply reset
    rst = 1;
    #20;
    rst = 0;

    // Run for some cycles
    repeat(100) begin
      #10; // Wait one clock cycle
      $display("Time=%0t | PC=0x%08h | Instr=0x%08h | rd_wb=%0d",
               $time, current_pc, instruction, dut.rd_wb_out);
    end

    $stop;
  end

endmodule
