// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:31 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_Control_0_0/EX_ALU_Control_0_0_sim_netlist.v
// Design      : EX_ALU_Control_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EX_ALU_Control_0_0,ALU_Control,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ALU_Control,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module EX_ALU_Control_0_0
   (alu_op,
    is_lui,
    funct3,
    funct7,
    alu_ctrl);
  input [1:0]alu_op;
  input is_lui;
  input [2:0]funct3;
  input [6:0]funct7;
  output [3:0]alu_ctrl;

  wire [3:0]alu_ctrl;
  wire [1:0]alu_op;
  wire [2:0]funct3;
  wire [6:0]funct7;
  wire is_lui;

  EX_ALU_Control_0_0_ALU_Control inst
       (.alu_ctrl(alu_ctrl),
        .alu_op(alu_op),
        .funct3(funct3),
        .funct7(funct7[5]),
        .is_lui(is_lui));
endmodule

(* ORIG_REF_NAME = "ALU_Control" *) 
module EX_ALU_Control_0_0_ALU_Control
   (alu_ctrl,
    alu_op,
    funct3,
    funct7,
    is_lui);
  output [3:0]alu_ctrl;
  input [1:0]alu_op;
  input [2:0]funct3;
  input [0:0]funct7;
  input is_lui;

  wire [3:0]alu_ctrl;
  wire [1:0]alu_op;
  wire [2:0]funct3;
  wire [0:0]funct7;
  wire is_lui;

  LUT6 #(
    .INIT(64'h7477474674474744)) 
    \alu_ctrl[0]_INST_0 
       (.I0(alu_op[1]),
        .I1(alu_op[0]),
        .I2(funct3[0]),
        .I3(funct3[1]),
        .I4(funct3[2]),
        .I5(funct7),
        .O(alu_ctrl[0]));
  LUT6 #(
    .INIT(64'hAAAA0C3C00000C3C)) 
    \alu_ctrl[1]_INST_0 
       (.I0(alu_op[1]),
        .I1(funct3[0]),
        .I2(funct3[1]),
        .I3(funct3[2]),
        .I4(alu_op[0]),
        .I5(is_lui),
        .O(alu_ctrl[1]));
  LUT4 #(
    .INIT(16'h0062)) 
    \alu_ctrl[2]_INST_0 
       (.I0(funct3[2]),
        .I1(funct3[1]),
        .I2(funct3[0]),
        .I3(alu_op[0]),
        .O(alu_ctrl[2]));
  LUT5 #(
    .INIT(32'hAAC000C0)) 
    \alu_ctrl[3]_INST_0 
       (.I0(alu_op[1]),
        .I1(funct3[1]),
        .I2(funct3[2]),
        .I3(alu_op[0]),
        .I4(is_lui),
        .O(alu_ctrl[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
