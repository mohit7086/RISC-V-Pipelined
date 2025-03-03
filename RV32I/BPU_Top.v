module BPU (
    input clk,                
    input rst,                
    input [31:0] pc,      

    // Update inputs (from Execute stage)
    input [31:0] alu_out,      // Computed branch target from Execute stage
    input branch_taken,        // Branch outcome from Execute stage
    input branch_resolved,     // Branch resolution signal from Execute stage
    input [3:0] ghr_history,   // GHR from pipeline register (Execute stage)
    input [31:0] resolved_pc,  // Resolved PC from pipeline register (Execute stage)
   
   // Outputs (to Fetch stage)
    output reg [31:0] predicted_pc, // Final branch target or PC (if not taken)
    output reg [3:0] ghr_out,      // Updated GHR to be stored in pipeline register
    output reg prediction_valid    // Indicates if a branch is predicted
);




// Internal connections
wire [3:0] index;          // Index computed for BTB & PHT lookup
wire [31:0] btb_address;   // Predicted branch target from BTB
wire btb_hit;              // Indicates if BTB has a valid entry
wire prediction;           // Branch prediction outcome
wire [3:0] ghr_out_wire;

GHR_PC ghr_pc_inst (
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .branch_taken(branch_taken),  // From Execute stage
    .index(index),                // To PHT and BTB
    .updated_ghr(ghr_out_wire)         // To store updated GHR in pipeline register
);


BTB btb_inst (
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .index(index),                      // From GHR_PC

    // From Execute stage
    .resolved_pc(resolved_pc),          
    .ghr_history(ghr_history),          
    .alu_out(alu_out),                 
    .branch_taken(branch_taken),
    .branch_resolved(branch_resolved),

    // To Fetch stage
    .btb_address(btb_address),
    .btb_hit(btb_hit)
);

PHT pht_inst (
    .clk(clk),
    .rst(rst),
    .index(index),                       // From GHR_PC

    // From Execute stage
    .resolved_pc(resolved_pc),
    .ghr_history(ghr_history),
    .branch_taken(branch_taken),
    .branch_resolved(branch_resolved),

    // To top_BPU
    .prediction(prediction)              
);

always @(posedge clk or posedge rst)begin
    if(rst)begin
        predicted_pc <= 32'b0;
        prediction_valid <= 1'b0;
        ghr_out <= 4'b0;
    end
    
    else begin 
        predicted_pc <= (btb_hit&prediction) ? btb_address : pc+4;
        prediction_valid <= btb_hit&prediction;
        ghr_out <= ghr_out_wire;
    end 
end


endmodule