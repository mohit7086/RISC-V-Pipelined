module ForwardingUnitWithMUX (
    input               EX_MEM_RegWrite_i,
    input               MEM_WB_RegWrite_i,
    input       [4:0]   ID_EX_RS_i,
    input       [4:0]   ID_EX_RT_i,
    input       [4:0]   EX_MEM_RD_i,
    input       [4:0]   MEM_WB_RD_i,
    input       [31:0]  rs1_data,  // Default RS1 data
    input       [31:0]  rs2_data,  // Default RS2 data
    input       [31:0]  EX_MEM_i,  // Data from EX/MEM stage
    input       [31:0]  MEM_WB_i,  // Data from MEM/WB stage
    output reg  [31:0]  ForwardedDataA_o,
    output reg  [31:0]  ForwardedDataB_o
);

    reg [1:0] ForwardA, ForwardB; // Control signals for forwarding selection

    // Determine forwarding for RS1 and RS2
    always @(*) begin
        // Default: no forwarding
        ForwardA = 2'b00;
        ForwardB = 2'b00;

        // Forwarding for RS1: Check if EX/MEM or MEM/WB have a valid write
        if (EX_MEM_RegWrite_i && (EX_MEM_RD_i != 5'b0) && (EX_MEM_RD_i == ID_EX_RS_i))
            ForwardA = 2'b10;
        else if (MEM_WB_RegWrite_i && (MEM_WB_RD_i != 5'b0) && (MEM_WB_RD_i == ID_EX_RS_i))
            ForwardA = 2'b01;

        // Forwarding for RS2: Check if EX/MEM or MEM/WB have a valid write
        if (EX_MEM_RegWrite_i && (EX_MEM_RD_i != 5'b0) && (EX_MEM_RD_i == ID_EX_RT_i))
            ForwardB = 2'b10;
        else if (MEM_WB_RegWrite_i && (MEM_WB_RD_i != 5'b0) && (MEM_WB_RD_i == ID_EX_RT_i))
            ForwardB = 2'b01;
    end

    // Multiplexing logic for RS1 and RS2
    always @(*) begin
        case (ForwardA)
            2'b00: ForwardedDataA_o = rs1_data;
            2'b01: ForwardedDataA_o = MEM_WB_i;
            2'b10: ForwardedDataA_o = EX_MEM_i;
            default: ForwardedDataA_o = rs1_data;
        endcase

        case (ForwardB)
            2'b00: ForwardedDataB_o = rs2_data;
            2'b01: ForwardedDataB_o = MEM_WB_i;
            2'b10: ForwardedDataB_o = EX_MEM_i;
            default: ForwardedDataB_o = rs2_data;
        endcase
    end

endmodule
