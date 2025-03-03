module GHR_PC (
    input clk,               // System Clock
    input rst,               // Active-high System Reset
    input branch_taken,      // From Execute Stage (Actual branch outcome)
    input [31:0] pc,         // From Fetch Stage (Current PC)
    output wire [3:0] index, // To PHT and BTB (Index for lookup)
    output reg [3:0] updated_ghr // To store updated global history in BPU
);

reg [3:0] ghr; // Global History Register

always @(posedge clk or posedge rst) begin
    if (rst) begin // Active-high reset
        ghr <= 4'b0; // Reset GHR
        updated_ghr <= 4'b0; // Reset updated GHR
    end else begin
        ghr <= {ghr[2:0], branch_taken}; // Shift in new branch outcome
        updated_ghr <= {ghr[2:0], branch_taken}; // Outputs the next GHR value
    end
end

assign index = pc[3:0] ^ ghr; // XOR with PC bits to form index

endmodule
