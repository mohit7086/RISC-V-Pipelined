module IF_ID (
    input clk,
    input rst,

    input [31:0] pc_IF_in,                // Input PC from Fetch stage   
    input [31:0] instruction_IF_in,       // Input instruction from Fetch stage
    input [31:0] predicted_pc_IF_in,      // Input predicted PC from Fetch stage
    input        prediction_valid_IF_in,  // Input prediction valid from Fetch stage
    input [3:0]  ghr_IF_in,               // Input GHR from Fetch stage

    output reg [31:0] pc_ID_out,           // Output PC to ID stage
    output reg [31:0] instruction_ID_out,  // Output instruction to ID stage
    output reg [31:0] predicted_pc_ID_out, // Output predicted PC to ID stage
    output reg        prediction_valid_ID_out, // Output prediction valid to ID stage
    output reg [3:0]  ghr_ID_out            // Output GHR to ID stage
);

always @(posedge clk) begin
    if (rst) begin
        pc_ID_out <= 32'b0;
        instruction_ID_out <= 32'b0;
        predicted_pc_ID_out <= 32'b0;
        prediction_valid_ID_out <= 1'b0;
        ghr_ID_out <= 4'b0;
    end else begin
        pc_ID_out <= pc_IF_in;
        instruction_ID_out <= instruction_IF_in;
        predicted_pc_ID_out <= predicted_pc_IF_in;
        prediction_valid_ID_out <= prediction_valid_IF_in;
        ghr_ID_out <= ghr_IF_in;
    end
end

endmodule
