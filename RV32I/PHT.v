module PHT (
    input clk,                 // System Clock
    input rst,                 // System Reset
    input [3:0] index,         // Lookup index from GHR_PC
    input branch_taken,        // Actual branch outcome from Execute Stage
    input [3:0] ghr_history,   // GHR from pipeline register (Ex stage)
    input [31:0] resolved_pc,  // Resolved PC from pipeline register (Ex stage)
    input branch_resolved,     // Indicates branch execution completion from Execute Stage
    output wire prediction     // Predicted taken/not taken to top_BPU
);

parameter strongly_not_taken = 2'b00;
parameter weakly_not_taken   = 2'b01;
parameter weakly_taken       = 2'b10;
parameter strongly_taken     = 2'b11;

reg [1:0] PHT_Table [15:0]; // 2-bit saturating counters for prediction

reg [1:0] state, next_state; // Current state and next state registers

wire [3:0] resolved_index;

// Compute resolved index using XOR of GHR history and resolved PC
assign resolved_index = ghr_history ^ resolved_pc[3:0];

// Prediction is '1' if the state is weakly_taken or strongly_taken
assign prediction = (state == weakly_taken) || (state == strongly_taken);

integer i;

// Sequential logic: Update state on clock edge or reset
always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset the PHT_Table to strongly_not_taken
        for (i = 0; i < 16; i = i + 1) begin
            PHT_Table[i] <= strongly_not_taken;
        end
        state <= strongly_not_taken; // Reset the state
    end else if (branch_resolved) begin
        state <= next_state; // Update state with next state
        PHT_Table[resolved_index] <= next_state; // Update PHT table entry
    end
end

// Combinational logic: Determine next state
always @(*) begin
    case (PHT_Table[resolved_index])
        strongly_not_taken: next_state = branch_taken ? weakly_not_taken : strongly_not_taken;
        weakly_not_taken:   next_state = branch_taken ? weakly_taken : strongly_not_taken;
        weakly_taken:       next_state = branch_taken ? strongly_taken : weakly_not_taken;
        strongly_taken:     next_state = branch_taken ? strongly_taken : weakly_taken;
        default:            next_state = strongly_not_taken; // Default case
    endcase
end

endmodule
