module FetchStage (
    input clk,
    input rst,
    
    // Update inputs (from Execute stage)
    input [31:0] branchAddress,
    input branch_taken,
    input branch_resolved,
    input [3:0] ghr_history,
    input [31:0] resolved_pc,
    input pc_redirect,
    input flush_fetch,
    
    // Outputs (wire interface)
    output wire [31:0] current_pc,
    output wire [31:0] instruction,
    output wire [31:0] predicted_pc,
    output wire [3:0] ghr_out,
    output wire prediction_valid
);

    // Internal registers for power optimization
    reg [31:0] pc_reg;
    reg [31:0] predicted_pc_reg;
    reg [3:0] ghr_out_reg;
    reg prediction_valid_reg;
    reg [31:0] instruction_reg;

    // Internal signals
    wire [31:0] next_pc;
    wire [31:0] predicted_pc_w;
    wire [3:0] ghr_out_w;
    wire prediction_valid_w;
    wire [31:0] inst_mem_out_w;

    // Branch Prediction Unit
    BPU_Top bpu (
        .clk(clk),
        .rst(rst),
        .pc(pc_reg),
        .alu_out(branchAddress),
        .branch_taken(branch_taken),
        .branch_resolved(branch_resolved),
        .ghr_history(ghr_history),
        .resolved_pc(resolved_pc),
        .predicted_pc(predicted_pc_w),
        .ghr_out(ghr_out_w),
        .prediction_valid(prediction_valid_w)
    );

    // Next PC logic (combinational)
    assign next_pc = flush_fetch ? (resolved_pc + 4) :
                    pc_redirect ? branchAddress :
                    predicted_pc_w;

    // Sequential logic with output registers
    always @(posedge clk) begin
        if (rst) begin
            pc_reg <= 32'h0;
            predicted_pc_reg <= 32'h0;
            ghr_out_reg <= 4'h0;
            prediction_valid_reg <= 1'b0;
            instruction_reg <= 32'h0;
        end
        else begin
            pc_reg <= next_pc;
            predicted_pc_reg <= predicted_pc_w;
            ghr_out_reg <= ghr_out_w;
            prediction_valid_reg <= prediction_valid_w;
            instruction_reg <= inst_mem_out_w;
        end
    end

    // Connect registers to wire outputs
    assign current_pc = pc_reg;
    assign instruction = instruction_reg;
    assign predicted_pc = predicted_pc_reg;
    assign ghr_out = ghr_out_reg;
    assign prediction_valid = prediction_valid_reg;

    // Instruction memory
    INST_MEM instruction_memory (
        .clk(clk),
        .PC(pc_reg),
        .rst(rst),
        .Instruction_Code(inst_mem_out_w)
    );

endmodule