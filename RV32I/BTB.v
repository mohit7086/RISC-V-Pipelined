module BTB (
    input          clk,             // System clock
    input          rst,             // System reset
    // Lookup inputs (from Fetch stage)
    input   [3:0]  index,           // Index computed as (PC[3:0] ^ GHR) at prediction time
    input   [31:0] pc,              // Fetch-stage PC
    // Update inputs (from Execute stage)
    input   [31:0] resolved_pc,     // Execute-stage PC corresponding to the resolved branch (from pipeline register)
    input   [3:0]  ghr_history,     // GHR captured at prediction time (pipelined register)
    input   [31:0] alu_out,         // Computed branch target from Execute stage
    input          branch_taken,    // Branch outcome: taken or not taken
    input          branch_resolved, // Trigger signal when branch is resolved (update BTB)
    
    // Outputs (to Fetch stage)
    output wire [31:0] btb_address,  // Predicted branch target address
    output wire        btb_hit       // BTB hit signal (prediction valid)
);

// BTB Storage (16 entries)
reg  [15:0]  valid;                  // Valid bit array (1-bit per entry)
reg  [27:0]  tag [0:15];              // Array of 16 entries, each 28-bit wide
reg  [31:0]  btb_target [0:15];       // Array of 16 entries, each 32-bit wide

// Compute tag and index for lookup
wire [27:0] pc_tag = pc[31:4];         // Fetch-stage tag
assign btb_hit = valid[index] && (tag[index] == pc_tag);
assign btb_address = btb_hit ? btb_target[index] : 32'b0;


wire [3:0] resolved_index = resolved_pc[3:0] ^ ghr_history; // XOR historical GHR with resolved PC lower bits
wire [27:0] resolved_tag  = resolved_pc[31:4];              // Extract tag from resolved PC

// Declare `i` at module level
integer i;  

// Sequential update for BTB
always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset all BTB entries
        for (i = 0; i < 16; i = i + 1) begin
            valid[i] <= 1'b0;
            tag[i]   <= 28'b0;
            btb_target[i] <= 32'b0;
        end
    end 
    else if (branch_resolved && branch_taken) begin
        // Update BTB with resolved branch information
        valid[resolved_index] <= 1'b1;
        tag[resolved_index] <= resolved_tag;
        btb_target[resolved_index] <= alu_out;
    end
end

endmodule
