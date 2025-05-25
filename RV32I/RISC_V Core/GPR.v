module GPR(
    input clk,
    input rst,
    input [4:0] rs1,
    input [4:0] rs2,
    input [4:0] rd_wb,        
    input [31:0] rd_wb_data,  
    input RegWrite_WB,
    output wire [31:0] rs1_data,
    output wire [31:0] rs2_data
);

    reg [31:0] registers[0:31];

    // Initialize registers with values from the memory file during reset
    initial begin
        $readmemh("gpr_init.txt", registers); // Load the initialization file
    end

    assign rs1_data = (rs1 != 5'b0) ? registers[rs1] : 32'b0;
    assign rs2_data = (rs2 != 5'b0) ? registers[rs2] : 32'b0;

    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'b0;
            end
        end
        else if (RegWrite_WB && rd_wb != 5'b0) begin
            registers[rd_wb] <= rd_wb_data;
        end
    end

endmodule

