/*the working of the fetch unint
when one instrction will be fetched it will be stored in the instruction register from where it will be decoded and executed, 
for next instruction the address will go to BPU to check whether it is branch or not and if not then PC+4 will be executed, at that time there will be adress coming
from the ex stage (branch adresss), which will be taken if the previos instruction has been jal/jalr or (Branch and Branch taken), then address from
EX will go to instruction memory instead of the PC+4, and the instruction will be fetched from that address.

If bpu predicted wrong taken and it should be not taken then the address will be PC+4 only and it has to flush the instruction in the pipeline, 
and if the bpu predicted not taken and it should be taken then the address will be the branch adress and it has to flush the instruction in the 
pipeline. */


/*
    Working of the Fetch Unit:

    The fetch unit is responsible for fetching instructions from the instruction memory
    using the Program Counter (PC). When an instruction is fetched, it is stored in the 
    instruction register and sent to the decode stage for further processing.

    For the next instruction, the fetch unit consults the Branch Prediction Unit (BPU) to 
    determine whether the current instruction is a branch and to predict the next PC value.

    If the instruction is not a branch, the BPU will typically return PC + 4 as the predicted PC.
    However, if the instruction is a branch or a JAL/JALR, the BPU may predict a branch target 
    address as the next PC.

    Simultaneously, the Execute stage may compute a new PC in case of actual branch or jump 
    instructions. If the branch or jump was taken, the PC is updated with the branch target 
    address from the Execute stage instead of the predicted PC.

    If there was a misprediction:
    - If the BPU predicted 'taken' but the branch was actually 'not taken', then the correct 
      next PC should be PC + 4.
    - If the BPU predicted 'not taken' but the branch was actually 'taken', then the correct 
      next PC should be the branch target address from the Execute stage.

    In both misprediction cases, the pipeline must flush the incorrectly fetched instruction(s)
    and update the PC to the correct address.

    The fetch unit uses control signals such as `flush_fetch` and `pc_redirect` to handle 
    redirection and recovery from mispredictions.
*/

module FetchStage (
    input clk,
    input rst,
    
    // Update inputs (from Execute stage)
    input [31:0] branchAddress,    // Computed branch target
    input branch_taken,            // Branch outcome
    input branch_resolved,         // Branch resolved signal
    input [3:0] ghr_history,       // Global History Register
    input [31:0] resolved_pc,      // Address to be updated after misprediction
    input pc_redirect,             // Redirect PC (e.g., JAL/JALR)
    input flush_fetch,             // Flush fetch buffer
    
    // Outputs (correctly as reg since assigned in always block)
    output reg [31:0] current_pc,  // Current PC being fetched
    output reg [31:0] instruction, // Fetched instruction 
    output reg [31:0] predicted_pc,// Predicted next PC
    output reg [3:0] ghr_out,      // Updated GHR
    output reg prediction_valid    // Branch prediction valid
);

    // Internal signals
    reg [31:0] next_pc;
    wire [31:0] predicted_pc_w;
    wire [3:0] ghr_out_w;
    wire prediction_valid_w;
    wire [31:0] inst_mem_out_w;
    
    // Branch Prediction Unit
    BPU_Top bpu (
        .clk(clk),
        .rst(rst),
        .pc(current_pc),
        .alu_out(branchAddress),
        .branch_taken(branch_taken),
        .branch_resolved(branch_resolved),
        .ghr_history(ghr_history),
        .resolved_pc(resolved_pc),
        .predicted_pc(predicted_pc_w),
        .ghr_out(ghr_out_w),
        .prediction_valid(prediction_valid_w)
    );
    
    // Next PC computation (combinational)
    always @(*) begin
        if (flush_fetch)
            next_pc = resolved_pc + 4; // Correct misprediction
        else if (pc_redirect)
            next_pc = branchAddress;   // Redirect from Execute (e.g., JALR)
        else
            next_pc = predicted_pc_w;  // Use BPU prediction
    end
    
    // Sequential logic for PC update and output registration
    always @(posedge clk) begin
        if (rst) begin
            current_pc <= 32'h0;
            predicted_pc <= 32'h0;
            ghr_out <= 4'h0;
            prediction_valid <= 1'b0;
            instruction <= 32'h0;
        end
        else begin
            // Update PC
            current_pc <= next_pc;
            
            // Register BPU outputs
            predicted_pc <= predicted_pc_w;
            ghr_out <= ghr_out_w;
            prediction_valid <= prediction_valid_w;
            
            // Register instruction memory output
            instruction <= inst_mem_out_w;
        end
    end
    
    // Instruction memory (synchronous read)
    INST_MEM instruction_memory (
        .clk(clk),
        .PC(current_pc),
        .rst(rst),
        .Instruction_Code(inst_mem_out_w)
    );

endmodule