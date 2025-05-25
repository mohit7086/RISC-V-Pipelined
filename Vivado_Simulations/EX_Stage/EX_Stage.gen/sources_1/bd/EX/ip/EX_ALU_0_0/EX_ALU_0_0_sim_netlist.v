// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:36 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_0_0/EX_ALU_0_0_sim_netlist.v
// Design      : EX_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EX_ALU_0_0,ALU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ALU,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module EX_ALU_0_0
   (a,
    b,
    alu_ctrl,
    alu_out);
  input [31:0]a;
  input [31:0]b;
  input [3:0]alu_ctrl;
  output [31:0]alu_out;

  wire [31:0]a;
  wire [3:0]alu_ctrl;
  wire [31:0]alu_out;
  wire [31:0]b;

  EX_ALU_0_0_ALU inst
       (.a(a),
        .alu_ctrl(alu_ctrl),
        .alu_out(alu_out),
        .b(b));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module EX_ALU_0_0_ALU
   (alu_out,
    b,
    a,
    alu_ctrl);
  output [31:0]alu_out;
  input [31:0]b;
  input [31:0]a;
  input [3:0]alu_ctrl;

  wire [31:0]a;
  wire [3:0]alu_ctrl;
  wire [31:0]alu_out;
  wire alu_out0_carry__0_i_1_n_0;
  wire alu_out0_carry__0_i_2_n_0;
  wire alu_out0_carry__0_i_3_n_0;
  wire alu_out0_carry__0_i_4_n_0;
  wire alu_out0_carry__0_n_0;
  wire alu_out0_carry__0_n_1;
  wire alu_out0_carry__0_n_2;
  wire alu_out0_carry__0_n_3;
  wire alu_out0_carry__1_i_1_n_0;
  wire alu_out0_carry__1_i_2_n_0;
  wire alu_out0_carry__1_i_3_n_0;
  wire alu_out0_carry__1_i_4_n_0;
  wire alu_out0_carry__1_n_0;
  wire alu_out0_carry__1_n_1;
  wire alu_out0_carry__1_n_2;
  wire alu_out0_carry__1_n_3;
  wire alu_out0_carry__2_i_1_n_0;
  wire alu_out0_carry__2_i_2_n_0;
  wire alu_out0_carry__2_i_3_n_0;
  wire alu_out0_carry__2_i_4_n_0;
  wire alu_out0_carry__2_n_0;
  wire alu_out0_carry__2_n_1;
  wire alu_out0_carry__2_n_2;
  wire alu_out0_carry__2_n_3;
  wire alu_out0_carry__3_i_1_n_0;
  wire alu_out0_carry__3_i_2_n_0;
  wire alu_out0_carry__3_i_3_n_0;
  wire alu_out0_carry__3_i_4_n_0;
  wire alu_out0_carry__3_n_0;
  wire alu_out0_carry__3_n_1;
  wire alu_out0_carry__3_n_2;
  wire alu_out0_carry__3_n_3;
  wire alu_out0_carry__4_i_1_n_0;
  wire alu_out0_carry__4_i_2_n_0;
  wire alu_out0_carry__4_i_3_n_0;
  wire alu_out0_carry__4_i_4_n_0;
  wire alu_out0_carry__4_n_0;
  wire alu_out0_carry__4_n_1;
  wire alu_out0_carry__4_n_2;
  wire alu_out0_carry__4_n_3;
  wire alu_out0_carry__5_i_1_n_0;
  wire alu_out0_carry__5_i_2_n_0;
  wire alu_out0_carry__5_i_3_n_0;
  wire alu_out0_carry__5_i_4_n_0;
  wire alu_out0_carry__5_n_0;
  wire alu_out0_carry__5_n_1;
  wire alu_out0_carry__5_n_2;
  wire alu_out0_carry__5_n_3;
  wire alu_out0_carry__6_i_1_n_0;
  wire alu_out0_carry__6_i_2_n_0;
  wire alu_out0_carry__6_i_3_n_0;
  wire alu_out0_carry__6_i_4_n_0;
  wire alu_out0_carry__6_n_1;
  wire alu_out0_carry__6_n_2;
  wire alu_out0_carry__6_n_3;
  wire alu_out0_carry_i_1_n_0;
  wire alu_out0_carry_i_2_n_0;
  wire alu_out0_carry_i_3_n_0;
  wire alu_out0_carry_i_4_n_0;
  wire alu_out0_carry_n_0;
  wire alu_out0_carry_n_1;
  wire alu_out0_carry_n_2;
  wire alu_out0_carry_n_3;
  wire \alu_out0_inferred__0/i__carry__0_n_0 ;
  wire \alu_out0_inferred__0/i__carry__0_n_1 ;
  wire \alu_out0_inferred__0/i__carry__0_n_2 ;
  wire \alu_out0_inferred__0/i__carry__0_n_3 ;
  wire \alu_out0_inferred__0/i__carry__1_n_0 ;
  wire \alu_out0_inferred__0/i__carry__1_n_1 ;
  wire \alu_out0_inferred__0/i__carry__1_n_2 ;
  wire \alu_out0_inferred__0/i__carry__1_n_3 ;
  wire \alu_out0_inferred__0/i__carry__2_n_0 ;
  wire \alu_out0_inferred__0/i__carry__2_n_1 ;
  wire \alu_out0_inferred__0/i__carry__2_n_2 ;
  wire \alu_out0_inferred__0/i__carry__2_n_3 ;
  wire \alu_out0_inferred__0/i__carry__3_n_0 ;
  wire \alu_out0_inferred__0/i__carry__3_n_1 ;
  wire \alu_out0_inferred__0/i__carry__3_n_2 ;
  wire \alu_out0_inferred__0/i__carry__3_n_3 ;
  wire \alu_out0_inferred__0/i__carry__4_n_0 ;
  wire \alu_out0_inferred__0/i__carry__4_n_1 ;
  wire \alu_out0_inferred__0/i__carry__4_n_2 ;
  wire \alu_out0_inferred__0/i__carry__4_n_3 ;
  wire \alu_out0_inferred__0/i__carry__5_n_0 ;
  wire \alu_out0_inferred__0/i__carry__5_n_1 ;
  wire \alu_out0_inferred__0/i__carry__5_n_2 ;
  wire \alu_out0_inferred__0/i__carry__5_n_3 ;
  wire \alu_out0_inferred__0/i__carry__6_n_1 ;
  wire \alu_out0_inferred__0/i__carry__6_n_2 ;
  wire \alu_out0_inferred__0/i__carry__6_n_3 ;
  wire \alu_out0_inferred__0/i__carry_n_0 ;
  wire \alu_out0_inferred__0/i__carry_n_1 ;
  wire \alu_out0_inferred__0/i__carry_n_2 ;
  wire \alu_out0_inferred__0/i__carry_n_3 ;
  wire alu_out2_carry__0_i_1_n_0;
  wire alu_out2_carry__0_i_2_n_0;
  wire alu_out2_carry__0_i_3_n_0;
  wire alu_out2_carry__0_i_4_n_0;
  wire alu_out2_carry__0_i_5_n_0;
  wire alu_out2_carry__0_i_6_n_0;
  wire alu_out2_carry__0_i_7_n_0;
  wire alu_out2_carry__0_i_8_n_0;
  wire alu_out2_carry__0_n_0;
  wire alu_out2_carry__0_n_1;
  wire alu_out2_carry__0_n_2;
  wire alu_out2_carry__0_n_3;
  wire alu_out2_carry__1_i_1_n_0;
  wire alu_out2_carry__1_i_2_n_0;
  wire alu_out2_carry__1_i_3_n_0;
  wire alu_out2_carry__1_i_4_n_0;
  wire alu_out2_carry__1_i_5_n_0;
  wire alu_out2_carry__1_i_6_n_0;
  wire alu_out2_carry__1_i_7_n_0;
  wire alu_out2_carry__1_i_8_n_0;
  wire alu_out2_carry__1_n_0;
  wire alu_out2_carry__1_n_1;
  wire alu_out2_carry__1_n_2;
  wire alu_out2_carry__1_n_3;
  wire alu_out2_carry__2_i_1_n_0;
  wire alu_out2_carry__2_i_2_n_0;
  wire alu_out2_carry__2_i_3_n_0;
  wire alu_out2_carry__2_i_4_n_0;
  wire alu_out2_carry__2_i_5_n_0;
  wire alu_out2_carry__2_i_6_n_0;
  wire alu_out2_carry__2_i_7_n_0;
  wire alu_out2_carry__2_i_8_n_0;
  wire alu_out2_carry__2_n_1;
  wire alu_out2_carry__2_n_2;
  wire alu_out2_carry__2_n_3;
  wire alu_out2_carry_i_1_n_0;
  wire alu_out2_carry_i_2_n_0;
  wire alu_out2_carry_i_3_n_0;
  wire alu_out2_carry_i_4_n_0;
  wire alu_out2_carry_i_5_n_0;
  wire alu_out2_carry_i_6_n_0;
  wire alu_out2_carry_i_7_n_0;
  wire alu_out2_carry_i_8_n_0;
  wire alu_out2_carry_n_0;
  wire alu_out2_carry_n_1;
  wire alu_out2_carry_n_2;
  wire alu_out2_carry_n_3;
  wire \alu_out2_inferred__0/i__carry__0_n_0 ;
  wire \alu_out2_inferred__0/i__carry__0_n_1 ;
  wire \alu_out2_inferred__0/i__carry__0_n_2 ;
  wire \alu_out2_inferred__0/i__carry__0_n_3 ;
  wire \alu_out2_inferred__0/i__carry__1_n_0 ;
  wire \alu_out2_inferred__0/i__carry__1_n_1 ;
  wire \alu_out2_inferred__0/i__carry__1_n_2 ;
  wire \alu_out2_inferred__0/i__carry__1_n_3 ;
  wire \alu_out2_inferred__0/i__carry__2_n_1 ;
  wire \alu_out2_inferred__0/i__carry__2_n_2 ;
  wire \alu_out2_inferred__0/i__carry__2_n_3 ;
  wire \alu_out2_inferred__0/i__carry_n_0 ;
  wire \alu_out2_inferred__0/i__carry_n_1 ;
  wire \alu_out2_inferred__0/i__carry_n_2 ;
  wire \alu_out2_inferred__0/i__carry_n_3 ;
  wire \alu_out[0]_INST_0_i_1_n_0 ;
  wire \alu_out[0]_INST_0_i_2_n_0 ;
  wire \alu_out[0]_INST_0_i_3_n_0 ;
  wire \alu_out[0]_INST_0_i_4_n_0 ;
  wire \alu_out[0]_INST_0_i_5_n_0 ;
  wire \alu_out[0]_INST_0_i_6_n_0 ;
  wire \alu_out[0]_INST_0_i_7_n_0 ;
  wire \alu_out[0]_INST_0_i_8_n_0 ;
  wire \alu_out[10]_INST_0_i_1_n_0 ;
  wire \alu_out[10]_INST_0_i_2_n_0 ;
  wire \alu_out[10]_INST_0_i_3_n_0 ;
  wire \alu_out[10]_INST_0_i_4_n_0 ;
  wire \alu_out[10]_INST_0_i_5_n_0 ;
  wire \alu_out[10]_INST_0_i_6_n_0 ;
  wire \alu_out[10]_INST_0_i_7_n_0 ;
  wire \alu_out[10]_INST_0_i_8_n_0 ;
  wire \alu_out[10]_INST_0_i_9_n_0 ;
  wire \alu_out[11]_INST_0_i_1_n_0 ;
  wire \alu_out[11]_INST_0_i_2_n_0 ;
  wire \alu_out[11]_INST_0_i_3_n_0 ;
  wire \alu_out[11]_INST_0_i_4_n_0 ;
  wire \alu_out[11]_INST_0_i_5_n_0 ;
  wire \alu_out[11]_INST_0_i_6_n_0 ;
  wire \alu_out[11]_INST_0_i_7_n_0 ;
  wire \alu_out[11]_INST_0_i_8_n_0 ;
  wire \alu_out[11]_INST_0_i_9_n_0 ;
  wire \alu_out[12]_INST_0_i_10_n_0 ;
  wire \alu_out[12]_INST_0_i_11_n_0 ;
  wire \alu_out[12]_INST_0_i_12_n_0 ;
  wire \alu_out[12]_INST_0_i_13_n_0 ;
  wire \alu_out[12]_INST_0_i_1_n_0 ;
  wire \alu_out[12]_INST_0_i_2_n_0 ;
  wire \alu_out[12]_INST_0_i_3_n_0 ;
  wire \alu_out[12]_INST_0_i_4_n_0 ;
  wire \alu_out[12]_INST_0_i_5_n_0 ;
  wire \alu_out[12]_INST_0_i_6_n_0 ;
  wire \alu_out[12]_INST_0_i_7_n_0 ;
  wire \alu_out[12]_INST_0_i_8_n_0 ;
  wire \alu_out[12]_INST_0_i_9_n_0 ;
  wire \alu_out[13]_INST_0_i_10_n_0 ;
  wire \alu_out[13]_INST_0_i_11_n_0 ;
  wire \alu_out[13]_INST_0_i_1_n_0 ;
  wire \alu_out[13]_INST_0_i_2_n_0 ;
  wire \alu_out[13]_INST_0_i_3_n_0 ;
  wire \alu_out[13]_INST_0_i_4_n_0 ;
  wire \alu_out[13]_INST_0_i_5_n_0 ;
  wire \alu_out[13]_INST_0_i_6_n_0 ;
  wire \alu_out[13]_INST_0_i_7_n_0 ;
  wire \alu_out[13]_INST_0_i_8_n_0 ;
  wire \alu_out[13]_INST_0_i_9_n_0 ;
  wire \alu_out[14]_INST_0_i_10_n_0 ;
  wire \alu_out[14]_INST_0_i_11_n_0 ;
  wire \alu_out[14]_INST_0_i_12_n_0 ;
  wire \alu_out[14]_INST_0_i_13_n_0 ;
  wire \alu_out[14]_INST_0_i_1_n_0 ;
  wire \alu_out[14]_INST_0_i_2_n_0 ;
  wire \alu_out[14]_INST_0_i_3_n_0 ;
  wire \alu_out[14]_INST_0_i_4_n_0 ;
  wire \alu_out[14]_INST_0_i_5_n_0 ;
  wire \alu_out[14]_INST_0_i_6_n_0 ;
  wire \alu_out[14]_INST_0_i_7_n_0 ;
  wire \alu_out[14]_INST_0_i_8_n_0 ;
  wire \alu_out[14]_INST_0_i_9_n_0 ;
  wire \alu_out[15]_INST_0_i_10_n_0 ;
  wire \alu_out[15]_INST_0_i_11_n_0 ;
  wire \alu_out[15]_INST_0_i_12_n_0 ;
  wire \alu_out[15]_INST_0_i_1_n_0 ;
  wire \alu_out[15]_INST_0_i_2_n_0 ;
  wire \alu_out[15]_INST_0_i_3_n_0 ;
  wire \alu_out[15]_INST_0_i_4_n_0 ;
  wire \alu_out[15]_INST_0_i_5_n_0 ;
  wire \alu_out[15]_INST_0_i_6_n_0 ;
  wire \alu_out[15]_INST_0_i_7_n_0 ;
  wire \alu_out[15]_INST_0_i_8_n_0 ;
  wire \alu_out[15]_INST_0_i_9_n_0 ;
  wire \alu_out[16]_INST_0_i_10_n_0 ;
  wire \alu_out[16]_INST_0_i_11_n_0 ;
  wire \alu_out[16]_INST_0_i_1_n_0 ;
  wire \alu_out[16]_INST_0_i_2_n_0 ;
  wire \alu_out[16]_INST_0_i_3_n_0 ;
  wire \alu_out[16]_INST_0_i_4_n_0 ;
  wire \alu_out[16]_INST_0_i_5_n_0 ;
  wire \alu_out[16]_INST_0_i_6_n_0 ;
  wire \alu_out[16]_INST_0_i_7_n_0 ;
  wire \alu_out[16]_INST_0_i_8_n_0 ;
  wire \alu_out[16]_INST_0_i_9_n_0 ;
  wire \alu_out[17]_INST_0_i_10_n_0 ;
  wire \alu_out[17]_INST_0_i_11_n_0 ;
  wire \alu_out[17]_INST_0_i_1_n_0 ;
  wire \alu_out[17]_INST_0_i_2_n_0 ;
  wire \alu_out[17]_INST_0_i_3_n_0 ;
  wire \alu_out[17]_INST_0_i_4_n_0 ;
  wire \alu_out[17]_INST_0_i_5_n_0 ;
  wire \alu_out[17]_INST_0_i_6_n_0 ;
  wire \alu_out[17]_INST_0_i_7_n_0 ;
  wire \alu_out[17]_INST_0_i_8_n_0 ;
  wire \alu_out[17]_INST_0_i_9_n_0 ;
  wire \alu_out[18]_INST_0_i_10_n_0 ;
  wire \alu_out[18]_INST_0_i_11_n_0 ;
  wire \alu_out[18]_INST_0_i_1_n_0 ;
  wire \alu_out[18]_INST_0_i_2_n_0 ;
  wire \alu_out[18]_INST_0_i_3_n_0 ;
  wire \alu_out[18]_INST_0_i_4_n_0 ;
  wire \alu_out[18]_INST_0_i_5_n_0 ;
  wire \alu_out[18]_INST_0_i_6_n_0 ;
  wire \alu_out[18]_INST_0_i_7_n_0 ;
  wire \alu_out[18]_INST_0_i_8_n_0 ;
  wire \alu_out[18]_INST_0_i_9_n_0 ;
  wire \alu_out[19]_INST_0_i_10_n_0 ;
  wire \alu_out[19]_INST_0_i_11_n_0 ;
  wire \alu_out[19]_INST_0_i_1_n_0 ;
  wire \alu_out[19]_INST_0_i_2_n_0 ;
  wire \alu_out[19]_INST_0_i_3_n_0 ;
  wire \alu_out[19]_INST_0_i_4_n_0 ;
  wire \alu_out[19]_INST_0_i_5_n_0 ;
  wire \alu_out[19]_INST_0_i_6_n_0 ;
  wire \alu_out[19]_INST_0_i_7_n_0 ;
  wire \alu_out[19]_INST_0_i_8_n_0 ;
  wire \alu_out[19]_INST_0_i_9_n_0 ;
  wire \alu_out[1]_INST_0_i_1_n_0 ;
  wire \alu_out[1]_INST_0_i_2_n_0 ;
  wire \alu_out[1]_INST_0_i_3_n_0 ;
  wire \alu_out[1]_INST_0_i_4_n_0 ;
  wire \alu_out[1]_INST_0_i_5_n_0 ;
  wire \alu_out[1]_INST_0_i_6_n_0 ;
  wire \alu_out[1]_INST_0_i_7_n_0 ;
  wire \alu_out[1]_INST_0_i_8_n_0 ;
  wire \alu_out[20]_INST_0_i_10_n_0 ;
  wire \alu_out[20]_INST_0_i_11_n_0 ;
  wire \alu_out[20]_INST_0_i_12_n_0 ;
  wire \alu_out[20]_INST_0_i_13_n_0 ;
  wire \alu_out[20]_INST_0_i_14_n_0 ;
  wire \alu_out[20]_INST_0_i_1_n_0 ;
  wire \alu_out[20]_INST_0_i_2_n_0 ;
  wire \alu_out[20]_INST_0_i_3_n_0 ;
  wire \alu_out[20]_INST_0_i_4_n_0 ;
  wire \alu_out[20]_INST_0_i_5_n_0 ;
  wire \alu_out[20]_INST_0_i_6_n_0 ;
  wire \alu_out[20]_INST_0_i_7_n_0 ;
  wire \alu_out[20]_INST_0_i_8_n_0 ;
  wire \alu_out[20]_INST_0_i_9_n_0 ;
  wire \alu_out[21]_INST_0_i_10_n_0 ;
  wire \alu_out[21]_INST_0_i_11_n_0 ;
  wire \alu_out[21]_INST_0_i_12_n_0 ;
  wire \alu_out[21]_INST_0_i_13_n_0 ;
  wire \alu_out[21]_INST_0_i_14_n_0 ;
  wire \alu_out[21]_INST_0_i_15_n_0 ;
  wire \alu_out[21]_INST_0_i_16_n_0 ;
  wire \alu_out[21]_INST_0_i_1_n_0 ;
  wire \alu_out[21]_INST_0_i_2_n_0 ;
  wire \alu_out[21]_INST_0_i_3_n_0 ;
  wire \alu_out[21]_INST_0_i_4_n_0 ;
  wire \alu_out[21]_INST_0_i_5_n_0 ;
  wire \alu_out[21]_INST_0_i_6_n_0 ;
  wire \alu_out[21]_INST_0_i_7_n_0 ;
  wire \alu_out[21]_INST_0_i_8_n_0 ;
  wire \alu_out[21]_INST_0_i_9_n_0 ;
  wire \alu_out[22]_INST_0_i_10_n_0 ;
  wire \alu_out[22]_INST_0_i_11_n_0 ;
  wire \alu_out[22]_INST_0_i_12_n_0 ;
  wire \alu_out[22]_INST_0_i_13_n_0 ;
  wire \alu_out[22]_INST_0_i_14_n_0 ;
  wire \alu_out[22]_INST_0_i_1_n_0 ;
  wire \alu_out[22]_INST_0_i_2_n_0 ;
  wire \alu_out[22]_INST_0_i_3_n_0 ;
  wire \alu_out[22]_INST_0_i_4_n_0 ;
  wire \alu_out[22]_INST_0_i_5_n_0 ;
  wire \alu_out[22]_INST_0_i_6_n_0 ;
  wire \alu_out[22]_INST_0_i_7_n_0 ;
  wire \alu_out[22]_INST_0_i_8_n_0 ;
  wire \alu_out[22]_INST_0_i_9_n_0 ;
  wire \alu_out[23]_INST_0_i_10_n_0 ;
  wire \alu_out[23]_INST_0_i_1_n_0 ;
  wire \alu_out[23]_INST_0_i_2_n_0 ;
  wire \alu_out[23]_INST_0_i_3_n_0 ;
  wire \alu_out[23]_INST_0_i_4_n_0 ;
  wire \alu_out[23]_INST_0_i_5_n_0 ;
  wire \alu_out[23]_INST_0_i_6_n_0 ;
  wire \alu_out[23]_INST_0_i_7_n_0 ;
  wire \alu_out[23]_INST_0_i_8_n_0 ;
  wire \alu_out[23]_INST_0_i_9_n_0 ;
  wire \alu_out[24]_INST_0_i_1_n_0 ;
  wire \alu_out[24]_INST_0_i_2_n_0 ;
  wire \alu_out[24]_INST_0_i_3_n_0 ;
  wire \alu_out[24]_INST_0_i_4_n_0 ;
  wire \alu_out[24]_INST_0_i_5_n_0 ;
  wire \alu_out[24]_INST_0_i_6_n_0 ;
  wire \alu_out[24]_INST_0_i_7_n_0 ;
  wire \alu_out[24]_INST_0_i_8_n_0 ;
  wire \alu_out[24]_INST_0_i_9_n_0 ;
  wire \alu_out[25]_INST_0_i_1_n_0 ;
  wire \alu_out[25]_INST_0_i_2_n_0 ;
  wire \alu_out[25]_INST_0_i_3_n_0 ;
  wire \alu_out[25]_INST_0_i_4_n_0 ;
  wire \alu_out[25]_INST_0_i_5_n_0 ;
  wire \alu_out[25]_INST_0_i_6_n_0 ;
  wire \alu_out[25]_INST_0_i_7_n_0 ;
  wire \alu_out[25]_INST_0_i_8_n_0 ;
  wire \alu_out[25]_INST_0_i_9_n_0 ;
  wire \alu_out[26]_INST_0_i_10_n_0 ;
  wire \alu_out[26]_INST_0_i_1_n_0 ;
  wire \alu_out[26]_INST_0_i_2_n_0 ;
  wire \alu_out[26]_INST_0_i_3_n_0 ;
  wire \alu_out[26]_INST_0_i_4_n_0 ;
  wire \alu_out[26]_INST_0_i_5_n_0 ;
  wire \alu_out[26]_INST_0_i_6_n_0 ;
  wire \alu_out[26]_INST_0_i_7_n_0 ;
  wire \alu_out[26]_INST_0_i_8_n_0 ;
  wire \alu_out[26]_INST_0_i_9_n_0 ;
  wire \alu_out[27]_INST_0_i_10_n_0 ;
  wire \alu_out[27]_INST_0_i_1_n_0 ;
  wire \alu_out[27]_INST_0_i_2_n_0 ;
  wire \alu_out[27]_INST_0_i_3_n_0 ;
  wire \alu_out[27]_INST_0_i_4_n_0 ;
  wire \alu_out[27]_INST_0_i_5_n_0 ;
  wire \alu_out[27]_INST_0_i_6_n_0 ;
  wire \alu_out[27]_INST_0_i_7_n_0 ;
  wire \alu_out[27]_INST_0_i_8_n_0 ;
  wire \alu_out[27]_INST_0_i_9_n_0 ;
  wire \alu_out[28]_INST_0_i_10_n_0 ;
  wire \alu_out[28]_INST_0_i_11_n_0 ;
  wire \alu_out[28]_INST_0_i_12_n_0 ;
  wire \alu_out[28]_INST_0_i_13_n_0 ;
  wire \alu_out[28]_INST_0_i_14_n_0 ;
  wire \alu_out[28]_INST_0_i_15_n_0 ;
  wire \alu_out[28]_INST_0_i_16_n_0 ;
  wire \alu_out[28]_INST_0_i_17_n_0 ;
  wire \alu_out[28]_INST_0_i_1_n_0 ;
  wire \alu_out[28]_INST_0_i_2_n_0 ;
  wire \alu_out[28]_INST_0_i_3_n_0 ;
  wire \alu_out[28]_INST_0_i_4_n_0 ;
  wire \alu_out[28]_INST_0_i_5_n_0 ;
  wire \alu_out[28]_INST_0_i_6_n_0 ;
  wire \alu_out[28]_INST_0_i_7_n_0 ;
  wire \alu_out[28]_INST_0_i_8_n_0 ;
  wire \alu_out[28]_INST_0_i_9_n_0 ;
  wire \alu_out[29]_INST_0_i_10_n_0 ;
  wire \alu_out[29]_INST_0_i_11_n_0 ;
  wire \alu_out[29]_INST_0_i_12_n_0 ;
  wire \alu_out[29]_INST_0_i_13_n_0 ;
  wire \alu_out[29]_INST_0_i_14_n_0 ;
  wire \alu_out[29]_INST_0_i_15_n_0 ;
  wire \alu_out[29]_INST_0_i_16_n_0 ;
  wire \alu_out[29]_INST_0_i_17_n_0 ;
  wire \alu_out[29]_INST_0_i_18_n_0 ;
  wire \alu_out[29]_INST_0_i_1_n_0 ;
  wire \alu_out[29]_INST_0_i_2_n_0 ;
  wire \alu_out[29]_INST_0_i_3_n_0 ;
  wire \alu_out[29]_INST_0_i_4_n_0 ;
  wire \alu_out[29]_INST_0_i_5_n_0 ;
  wire \alu_out[29]_INST_0_i_6_n_0 ;
  wire \alu_out[29]_INST_0_i_7_n_0 ;
  wire \alu_out[29]_INST_0_i_8_n_0 ;
  wire \alu_out[29]_INST_0_i_9_n_0 ;
  wire \alu_out[2]_INST_0_i_1_n_0 ;
  wire \alu_out[2]_INST_0_i_2_n_0 ;
  wire \alu_out[2]_INST_0_i_3_n_0 ;
  wire \alu_out[2]_INST_0_i_4_n_0 ;
  wire \alu_out[2]_INST_0_i_5_n_0 ;
  wire \alu_out[2]_INST_0_i_6_n_0 ;
  wire \alu_out[2]_INST_0_i_7_n_0 ;
  wire \alu_out[2]_INST_0_i_8_n_0 ;
  wire \alu_out[30]_INST_0_i_10_n_0 ;
  wire \alu_out[30]_INST_0_i_11_n_0 ;
  wire \alu_out[30]_INST_0_i_12_n_0 ;
  wire \alu_out[30]_INST_0_i_13_n_0 ;
  wire \alu_out[30]_INST_0_i_14_n_0 ;
  wire \alu_out[30]_INST_0_i_15_n_0 ;
  wire \alu_out[30]_INST_0_i_16_n_0 ;
  wire \alu_out[30]_INST_0_i_17_n_0 ;
  wire \alu_out[30]_INST_0_i_18_n_0 ;
  wire \alu_out[30]_INST_0_i_1_n_0 ;
  wire \alu_out[30]_INST_0_i_2_n_0 ;
  wire \alu_out[30]_INST_0_i_3_n_0 ;
  wire \alu_out[30]_INST_0_i_4_n_0 ;
  wire \alu_out[30]_INST_0_i_5_n_0 ;
  wire \alu_out[30]_INST_0_i_6_n_0 ;
  wire \alu_out[30]_INST_0_i_7_n_0 ;
  wire \alu_out[30]_INST_0_i_8_n_0 ;
  wire \alu_out[30]_INST_0_i_9_n_0 ;
  wire \alu_out[31]_INST_0_i_10_n_0 ;
  wire \alu_out[31]_INST_0_i_11_n_0 ;
  wire \alu_out[31]_INST_0_i_12_n_0 ;
  wire \alu_out[31]_INST_0_i_13_n_0 ;
  wire \alu_out[31]_INST_0_i_14_n_0 ;
  wire \alu_out[31]_INST_0_i_15_n_0 ;
  wire \alu_out[31]_INST_0_i_16_n_0 ;
  wire \alu_out[31]_INST_0_i_1_n_0 ;
  wire \alu_out[31]_INST_0_i_2_n_0 ;
  wire \alu_out[31]_INST_0_i_3_n_0 ;
  wire \alu_out[31]_INST_0_i_4_n_0 ;
  wire \alu_out[31]_INST_0_i_5_n_0 ;
  wire \alu_out[31]_INST_0_i_6_n_0 ;
  wire \alu_out[31]_INST_0_i_7_n_0 ;
  wire \alu_out[31]_INST_0_i_8_n_0 ;
  wire \alu_out[31]_INST_0_i_9_n_0 ;
  wire \alu_out[3]_INST_0_i_1_n_0 ;
  wire \alu_out[3]_INST_0_i_2_n_0 ;
  wire \alu_out[3]_INST_0_i_3_n_0 ;
  wire \alu_out[3]_INST_0_i_4_n_0 ;
  wire \alu_out[3]_INST_0_i_5_n_0 ;
  wire \alu_out[3]_INST_0_i_6_n_0 ;
  wire \alu_out[3]_INST_0_i_7_n_0 ;
  wire \alu_out[3]_INST_0_i_8_n_0 ;
  wire \alu_out[4]_INST_0_i_1_n_0 ;
  wire \alu_out[4]_INST_0_i_2_n_0 ;
  wire \alu_out[4]_INST_0_i_3_n_0 ;
  wire \alu_out[4]_INST_0_i_4_n_0 ;
  wire \alu_out[4]_INST_0_i_5_n_0 ;
  wire \alu_out[4]_INST_0_i_6_n_0 ;
  wire \alu_out[4]_INST_0_i_7_n_0 ;
  wire \alu_out[4]_INST_0_i_8_n_0 ;
  wire \alu_out[4]_INST_0_i_9_n_0 ;
  wire \alu_out[5]_INST_0_i_1_n_0 ;
  wire \alu_out[5]_INST_0_i_2_n_0 ;
  wire \alu_out[5]_INST_0_i_3_n_0 ;
  wire \alu_out[5]_INST_0_i_4_n_0 ;
  wire \alu_out[5]_INST_0_i_5_n_0 ;
  wire \alu_out[5]_INST_0_i_6_n_0 ;
  wire \alu_out[5]_INST_0_i_7_n_0 ;
  wire \alu_out[5]_INST_0_i_8_n_0 ;
  wire \alu_out[5]_INST_0_i_9_n_0 ;
  wire \alu_out[6]_INST_0_i_1_n_0 ;
  wire \alu_out[6]_INST_0_i_2_n_0 ;
  wire \alu_out[6]_INST_0_i_3_n_0 ;
  wire \alu_out[6]_INST_0_i_4_n_0 ;
  wire \alu_out[6]_INST_0_i_5_n_0 ;
  wire \alu_out[6]_INST_0_i_6_n_0 ;
  wire \alu_out[6]_INST_0_i_7_n_0 ;
  wire \alu_out[6]_INST_0_i_8_n_0 ;
  wire \alu_out[6]_INST_0_i_9_n_0 ;
  wire \alu_out[7]_INST_0_i_10_n_0 ;
  wire \alu_out[7]_INST_0_i_1_n_0 ;
  wire \alu_out[7]_INST_0_i_2_n_0 ;
  wire \alu_out[7]_INST_0_i_3_n_0 ;
  wire \alu_out[7]_INST_0_i_4_n_0 ;
  wire \alu_out[7]_INST_0_i_5_n_0 ;
  wire \alu_out[7]_INST_0_i_6_n_0 ;
  wire \alu_out[7]_INST_0_i_7_n_0 ;
  wire \alu_out[7]_INST_0_i_8_n_0 ;
  wire \alu_out[7]_INST_0_i_9_n_0 ;
  wire \alu_out[8]_INST_0_i_1_n_0 ;
  wire \alu_out[8]_INST_0_i_2_n_0 ;
  wire \alu_out[8]_INST_0_i_3_n_0 ;
  wire \alu_out[8]_INST_0_i_4_n_0 ;
  wire \alu_out[8]_INST_0_i_5_n_0 ;
  wire \alu_out[8]_INST_0_i_6_n_0 ;
  wire \alu_out[8]_INST_0_i_7_n_0 ;
  wire \alu_out[8]_INST_0_i_8_n_0 ;
  wire \alu_out[8]_INST_0_i_9_n_0 ;
  wire \alu_out[9]_INST_0_i_1_n_0 ;
  wire \alu_out[9]_INST_0_i_2_n_0 ;
  wire \alu_out[9]_INST_0_i_3_n_0 ;
  wire \alu_out[9]_INST_0_i_4_n_0 ;
  wire \alu_out[9]_INST_0_i_5_n_0 ;
  wire \alu_out[9]_INST_0_i_6_n_0 ;
  wire \alu_out[9]_INST_0_i_7_n_0 ;
  wire \alu_out[9]_INST_0_i_8_n_0 ;
  wire \alu_out[9]_INST_0_i_9_n_0 ;
  wire [31:0]b;
  wire [31:0]data0;
  wire [31:0]data1;
  wire data3;
  wire data4;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8_n_0;
  wire [3:3]NLW_alu_out0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_alu_out0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]NLW_alu_out2_carry_O_UNCONNECTED;
  wire [3:0]NLW_alu_out2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_alu_out2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_alu_out2_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry
       (.CI(1'b0),
        .CO({alu_out0_carry_n_0,alu_out0_carry_n_1,alu_out0_carry_n_2,alu_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(data0[3:0]),
        .S({alu_out0_carry_i_1_n_0,alu_out0_carry_i_2_n_0,alu_out0_carry_i_3_n_0,alu_out0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__0
       (.CI(alu_out0_carry_n_0),
        .CO({alu_out0_carry__0_n_0,alu_out0_carry__0_n_1,alu_out0_carry__0_n_2,alu_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(data0[7:4]),
        .S({alu_out0_carry__0_i_1_n_0,alu_out0_carry__0_i_2_n_0,alu_out0_carry__0_i_3_n_0,alu_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_1
       (.I0(a[7]),
        .I1(b[7]),
        .O(alu_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_2
       (.I0(a[6]),
        .I1(b[6]),
        .O(alu_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_3
       (.I0(a[5]),
        .I1(b[5]),
        .O(alu_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_4
       (.I0(a[4]),
        .I1(b[4]),
        .O(alu_out0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__1
       (.CI(alu_out0_carry__0_n_0),
        .CO({alu_out0_carry__1_n_0,alu_out0_carry__1_n_1,alu_out0_carry__1_n_2,alu_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(data0[11:8]),
        .S({alu_out0_carry__1_i_1_n_0,alu_out0_carry__1_i_2_n_0,alu_out0_carry__1_i_3_n_0,alu_out0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_1
       (.I0(a[11]),
        .I1(b[11]),
        .O(alu_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_2
       (.I0(a[10]),
        .I1(b[10]),
        .O(alu_out0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_3
       (.I0(a[9]),
        .I1(b[9]),
        .O(alu_out0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_4
       (.I0(a[8]),
        .I1(b[8]),
        .O(alu_out0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__2
       (.CI(alu_out0_carry__1_n_0),
        .CO({alu_out0_carry__2_n_0,alu_out0_carry__2_n_1,alu_out0_carry__2_n_2,alu_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(data0[15:12]),
        .S({alu_out0_carry__2_i_1_n_0,alu_out0_carry__2_i_2_n_0,alu_out0_carry__2_i_3_n_0,alu_out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_1
       (.I0(a[15]),
        .I1(b[15]),
        .O(alu_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_2
       (.I0(a[14]),
        .I1(b[14]),
        .O(alu_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_3
       (.I0(a[13]),
        .I1(b[13]),
        .O(alu_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_4
       (.I0(a[12]),
        .I1(b[12]),
        .O(alu_out0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__3
       (.CI(alu_out0_carry__2_n_0),
        .CO({alu_out0_carry__3_n_0,alu_out0_carry__3_n_1,alu_out0_carry__3_n_2,alu_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O(data0[19:16]),
        .S({alu_out0_carry__3_i_1_n_0,alu_out0_carry__3_i_2_n_0,alu_out0_carry__3_i_3_n_0,alu_out0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_1
       (.I0(a[19]),
        .I1(b[19]),
        .O(alu_out0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_2
       (.I0(a[18]),
        .I1(b[18]),
        .O(alu_out0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_3
       (.I0(a[17]),
        .I1(b[17]),
        .O(alu_out0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_4
       (.I0(a[16]),
        .I1(b[16]),
        .O(alu_out0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__4
       (.CI(alu_out0_carry__3_n_0),
        .CO({alu_out0_carry__4_n_0,alu_out0_carry__4_n_1,alu_out0_carry__4_n_2,alu_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O(data0[23:20]),
        .S({alu_out0_carry__4_i_1_n_0,alu_out0_carry__4_i_2_n_0,alu_out0_carry__4_i_3_n_0,alu_out0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_1
       (.I0(a[23]),
        .I1(b[23]),
        .O(alu_out0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_2
       (.I0(a[22]),
        .I1(b[22]),
        .O(alu_out0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_3
       (.I0(a[21]),
        .I1(b[21]),
        .O(alu_out0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_4
       (.I0(a[20]),
        .I1(b[20]),
        .O(alu_out0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__5
       (.CI(alu_out0_carry__4_n_0),
        .CO({alu_out0_carry__5_n_0,alu_out0_carry__5_n_1,alu_out0_carry__5_n_2,alu_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O(data0[27:24]),
        .S({alu_out0_carry__5_i_1_n_0,alu_out0_carry__5_i_2_n_0,alu_out0_carry__5_i_3_n_0,alu_out0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_1
       (.I0(a[27]),
        .I1(b[27]),
        .O(alu_out0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_2
       (.I0(a[26]),
        .I1(b[26]),
        .O(alu_out0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_3
       (.I0(a[25]),
        .I1(b[25]),
        .O(alu_out0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_4
       (.I0(a[24]),
        .I1(b[24]),
        .O(alu_out0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__6
       (.CI(alu_out0_carry__5_n_0),
        .CO({NLW_alu_out0_carry__6_CO_UNCONNECTED[3],alu_out0_carry__6_n_1,alu_out0_carry__6_n_2,alu_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O(data0[31:28]),
        .S({alu_out0_carry__6_i_1_n_0,alu_out0_carry__6_i_2_n_0,alu_out0_carry__6_i_3_n_0,alu_out0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_1
       (.I0(a[31]),
        .I1(b[31]),
        .O(alu_out0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_2
       (.I0(a[30]),
        .I1(b[30]),
        .O(alu_out0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_3
       (.I0(a[29]),
        .I1(b[29]),
        .O(alu_out0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_4
       (.I0(a[28]),
        .I1(b[28]),
        .O(alu_out0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_1
       (.I0(a[3]),
        .I1(b[3]),
        .O(alu_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_2
       (.I0(a[2]),
        .I1(b[2]),
        .O(alu_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_3
       (.I0(a[1]),
        .I1(b[1]),
        .O(alu_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_4
       (.I0(a[0]),
        .I1(b[0]),
        .O(alu_out0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__0/i__carry_n_0 ,\alu_out0_inferred__0/i__carry_n_1 ,\alu_out0_inferred__0/i__carry_n_2 ,\alu_out0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(a[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__0 
       (.CI(\alu_out0_inferred__0/i__carry_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__0_n_0 ,\alu_out0_inferred__0/i__carry__0_n_1 ,\alu_out0_inferred__0/i__carry__0_n_2 ,\alu_out0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__1 
       (.CI(\alu_out0_inferred__0/i__carry__0_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__1_n_0 ,\alu_out0_inferred__0/i__carry__1_n_1 ,\alu_out0_inferred__0/i__carry__1_n_2 ,\alu_out0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__2 
       (.CI(\alu_out0_inferred__0/i__carry__1_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__2_n_0 ,\alu_out0_inferred__0/i__carry__2_n_1 ,\alu_out0_inferred__0/i__carry__2_n_2 ,\alu_out0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(data1[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__3 
       (.CI(\alu_out0_inferred__0/i__carry__2_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__3_n_0 ,\alu_out0_inferred__0/i__carry__3_n_1 ,\alu_out0_inferred__0/i__carry__3_n_2 ,\alu_out0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O(data1[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__4 
       (.CI(\alu_out0_inferred__0/i__carry__3_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__4_n_0 ,\alu_out0_inferred__0/i__carry__4_n_1 ,\alu_out0_inferred__0/i__carry__4_n_2 ,\alu_out0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O(data1[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__5 
       (.CI(\alu_out0_inferred__0/i__carry__4_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__5_n_0 ,\alu_out0_inferred__0/i__carry__5_n_1 ,\alu_out0_inferred__0/i__carry__5_n_2 ,\alu_out0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O(data1[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__6 
       (.CI(\alu_out0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_alu_out0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\alu_out0_inferred__0/i__carry__6_n_1 ,\alu_out0_inferred__0/i__carry__6_n_2 ,\alu_out0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O(data1[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out2_carry
       (.CI(1'b0),
        .CO({alu_out2_carry_n_0,alu_out2_carry_n_1,alu_out2_carry_n_2,alu_out2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out2_carry_i_1_n_0,alu_out2_carry_i_2_n_0,alu_out2_carry_i_3_n_0,alu_out2_carry_i_4_n_0}),
        .O(NLW_alu_out2_carry_O_UNCONNECTED[3:0]),
        .S({alu_out2_carry_i_5_n_0,alu_out2_carry_i_6_n_0,alu_out2_carry_i_7_n_0,alu_out2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out2_carry__0
       (.CI(alu_out2_carry_n_0),
        .CO({alu_out2_carry__0_n_0,alu_out2_carry__0_n_1,alu_out2_carry__0_n_2,alu_out2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out2_carry__0_i_1_n_0,alu_out2_carry__0_i_2_n_0,alu_out2_carry__0_i_3_n_0,alu_out2_carry__0_i_4_n_0}),
        .O(NLW_alu_out2_carry__0_O_UNCONNECTED[3:0]),
        .S({alu_out2_carry__0_i_5_n_0,alu_out2_carry__0_i_6_n_0,alu_out2_carry__0_i_7_n_0,alu_out2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__0_i_1
       (.I0(a[15]),
        .I1(b[14]),
        .I2(a[14]),
        .I3(b[15]),
        .O(alu_out2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__0_i_2
       (.I0(a[13]),
        .I1(b[12]),
        .I2(a[12]),
        .I3(b[13]),
        .O(alu_out2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__0_i_3
       (.I0(a[11]),
        .I1(b[10]),
        .I2(a[10]),
        .I3(b[11]),
        .O(alu_out2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__0_i_4
       (.I0(a[9]),
        .I1(b[8]),
        .I2(a[8]),
        .I3(b[9]),
        .O(alu_out2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_5
       (.I0(b[14]),
        .I1(a[14]),
        .I2(b[15]),
        .I3(a[15]),
        .O(alu_out2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_6
       (.I0(b[12]),
        .I1(a[12]),
        .I2(b[13]),
        .I3(a[13]),
        .O(alu_out2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_7
       (.I0(b[10]),
        .I1(a[10]),
        .I2(b[11]),
        .I3(a[11]),
        .O(alu_out2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_8
       (.I0(b[8]),
        .I1(a[8]),
        .I2(b[9]),
        .I3(a[9]),
        .O(alu_out2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out2_carry__1
       (.CI(alu_out2_carry__0_n_0),
        .CO({alu_out2_carry__1_n_0,alu_out2_carry__1_n_1,alu_out2_carry__1_n_2,alu_out2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out2_carry__1_i_1_n_0,alu_out2_carry__1_i_2_n_0,alu_out2_carry__1_i_3_n_0,alu_out2_carry__1_i_4_n_0}),
        .O(NLW_alu_out2_carry__1_O_UNCONNECTED[3:0]),
        .S({alu_out2_carry__1_i_5_n_0,alu_out2_carry__1_i_6_n_0,alu_out2_carry__1_i_7_n_0,alu_out2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__1_i_1
       (.I0(a[23]),
        .I1(b[22]),
        .I2(a[22]),
        .I3(b[23]),
        .O(alu_out2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__1_i_2
       (.I0(a[21]),
        .I1(b[20]),
        .I2(a[20]),
        .I3(b[21]),
        .O(alu_out2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__1_i_3
       (.I0(a[19]),
        .I1(b[18]),
        .I2(a[18]),
        .I3(b[19]),
        .O(alu_out2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__1_i_4
       (.I0(a[17]),
        .I1(b[16]),
        .I2(a[16]),
        .I3(b[17]),
        .O(alu_out2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_5
       (.I0(b[22]),
        .I1(a[22]),
        .I2(b[23]),
        .I3(a[23]),
        .O(alu_out2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_6
       (.I0(b[20]),
        .I1(a[20]),
        .I2(b[21]),
        .I3(a[21]),
        .O(alu_out2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_7
       (.I0(b[18]),
        .I1(a[18]),
        .I2(b[19]),
        .I3(a[19]),
        .O(alu_out2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_8
       (.I0(b[16]),
        .I1(a[16]),
        .I2(b[17]),
        .I3(a[17]),
        .O(alu_out2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 alu_out2_carry__2
       (.CI(alu_out2_carry__1_n_0),
        .CO({data3,alu_out2_carry__2_n_1,alu_out2_carry__2_n_2,alu_out2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out2_carry__2_i_1_n_0,alu_out2_carry__2_i_2_n_0,alu_out2_carry__2_i_3_n_0,alu_out2_carry__2_i_4_n_0}),
        .O(NLW_alu_out2_carry__2_O_UNCONNECTED[3:0]),
        .S({alu_out2_carry__2_i_5_n_0,alu_out2_carry__2_i_6_n_0,alu_out2_carry__2_i_7_n_0,alu_out2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    alu_out2_carry__2_i_1
       (.I0(a[31]),
        .I1(b[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(alu_out2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__2_i_2
       (.I0(a[29]),
        .I1(b[28]),
        .I2(a[28]),
        .I3(b[29]),
        .O(alu_out2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__2_i_3
       (.I0(a[27]),
        .I1(b[26]),
        .I2(a[26]),
        .I3(b[27]),
        .O(alu_out2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry__2_i_4
       (.I0(a[25]),
        .I1(b[24]),
        .I2(a[24]),
        .I3(b[25]),
        .O(alu_out2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_5
       (.I0(b[31]),
        .I1(a[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(alu_out2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_6
       (.I0(b[28]),
        .I1(a[28]),
        .I2(b[29]),
        .I3(a[29]),
        .O(alu_out2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_7
       (.I0(b[26]),
        .I1(a[26]),
        .I2(b[27]),
        .I3(a[27]),
        .O(alu_out2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_8
       (.I0(b[24]),
        .I1(a[24]),
        .I2(b[25]),
        .I3(a[25]),
        .O(alu_out2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    alu_out2_carry_i_1
       (.I0(a[7]),
        .I1(b[6]),
        .I2(a[6]),
        .I3(b[7]),
        .O(alu_out2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out2_carry_i_2
       (.I0(a[5]),
        .I1(b[5]),
        .I2(a[4]),
        .I3(b[4]),
        .O(alu_out2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out2_carry_i_3
       (.I0(a[3]),
        .I1(b[3]),
        .I2(a[2]),
        .I3(b[2]),
        .O(alu_out2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out2_carry_i_4
       (.I0(a[1]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[0]),
        .O(alu_out2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_5
       (.I0(b[6]),
        .I1(a[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(alu_out2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_6
       (.I0(b[4]),
        .I1(a[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(alu_out2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_7
       (.I0(b[2]),
        .I1(a[2]),
        .I2(b[3]),
        .I3(a[3]),
        .O(alu_out2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_8
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(alu_out2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out2_inferred__0/i__carry_n_0 ,\alu_out2_inferred__0/i__carry_n_1 ,\alu_out2_inferred__0/i__carry_n_2 ,\alu_out2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__0 
       (.CI(\alu_out2_inferred__0/i__carry_n_0 ),
        .CO({\alu_out2_inferred__0/i__carry__0_n_0 ,\alu_out2_inferred__0/i__carry__0_n_1 ,\alu_out2_inferred__0/i__carry__0_n_2 ,\alu_out2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__1 
       (.CI(\alu_out2_inferred__0/i__carry__0_n_0 ),
        .CO({\alu_out2_inferred__0/i__carry__1_n_0 ,\alu_out2_inferred__0/i__carry__1_n_1 ,\alu_out2_inferred__0/i__carry__1_n_2 ,\alu_out2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__2 
       (.CI(\alu_out2_inferred__0/i__carry__1_n_0 ),
        .CO({data4,\alu_out2_inferred__0/i__carry__2_n_1 ,\alu_out2_inferred__0/i__carry__2_n_2 ,\alu_out2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  MUXF7 \alu_out[0]_INST_0 
       (.I0(\alu_out[0]_INST_0_i_1_n_0 ),
        .I1(\alu_out[0]_INST_0_i_2_n_0 ),
        .O(alu_out[0]),
        .S(alu_ctrl[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[0]_INST_0_i_1 
       (.I0(\alu_out[0]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[0]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[0]_INST_0_i_5_n_0 ),
        .O(\alu_out[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[0]_INST_0_i_2 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[0]_INST_0_i_3 
       (.I0(\alu_out[4]_INST_0_i_6_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[16]_INST_0_i_9_n_0 ),
        .I3(b[4]),
        .I4(\alu_out[0]_INST_0_i_6_n_0 ),
        .O(\alu_out[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \alu_out[0]_INST_0_i_4 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(alu_ctrl[0]),
        .I3(data4),
        .O(\alu_out[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[0]_INST_0_i_5 
       (.I0(data3),
        .I1(\alu_out[0]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(data1[0]),
        .I4(alu_ctrl[0]),
        .I5(data0[0]),
        .O(\alu_out[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[0]_INST_0_i_6 
       (.I0(\alu_out[8]_INST_0_i_9_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[0]_INST_0_i_8_n_0 ),
        .O(\alu_out[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alu_out[0]_INST_0_i_7 
       (.I0(b[4]),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(b[3]),
        .I5(b[2]),
        .O(\alu_out[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[0]_INST_0_i_8 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(b[0]),
        .I3(a[2]),
        .I4(b[1]),
        .I5(a[0]),
        .O(\alu_out[0]_INST_0_i_8_n_0 ));
  MUXF7 \alu_out[10]_INST_0 
       (.I0(\alu_out[10]_INST_0_i_1_n_0 ),
        .I1(\alu_out[10]_INST_0_i_2_n_0 ),
        .O(alu_out[10]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[10]_INST_0_i_1 
       (.I0(\alu_out[10]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[10]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[10]_INST_0_i_5_n_0 ),
        .O(\alu_out[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[10]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_3 
       (.I0(\alu_out[14]_INST_0_i_8_n_0 ),
        .I1(\alu_out[10]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[14]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[10]_INST_0_i_7_n_0 ),
        .O(\alu_out[10]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[10]_INST_0_i_4 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\alu_out[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[10]_INST_0_i_5 
       (.I0(\alu_out[10]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[10]),
        .I3(alu_ctrl[0]),
        .I4(data0[10]),
        .O(\alu_out[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_6 
       (.I0(a[31]),
        .I1(\alu_out[26]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[18]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[10]_INST_0_i_9_n_0 ),
        .O(\alu_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[10]_INST_0_i_7 
       (.I0(\alu_out[26]_INST_0_i_10_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[18]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[10]_INST_0_i_9_n_0 ),
        .O(\alu_out[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \alu_out[10]_INST_0_i_8 
       (.I0(\alu_out[30]_INST_0_i_11_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[30]_INST_0_i_16_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[30]_INST_0_i_15_n_0 ),
        .I5(b[4]),
        .O(\alu_out[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_9 
       (.I0(a[13]),
        .I1(a[11]),
        .I2(b[0]),
        .I3(a[12]),
        .I4(b[1]),
        .I5(a[10]),
        .O(\alu_out[10]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[11]_INST_0 
       (.I0(\alu_out[11]_INST_0_i_1_n_0 ),
        .I1(\alu_out[11]_INST_0_i_2_n_0 ),
        .O(alu_out[11]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[11]_INST_0_i_1 
       (.I0(\alu_out[11]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[11]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[11]_INST_0_i_5_n_0 ),
        .O(\alu_out[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[11]_INST_0_i_2 
       (.I0(a[11]),
        .I1(b[11]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_3 
       (.I0(\alu_out[15]_INST_0_i_8_n_0 ),
        .I1(\alu_out[11]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[15]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[11]_INST_0_i_7_n_0 ),
        .O(\alu_out[11]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[11]_INST_0_i_4 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\alu_out[11]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[11]_INST_0_i_5 
       (.I0(\alu_out[11]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[11]),
        .I3(alu_ctrl[0]),
        .I4(data0[11]),
        .O(\alu_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_6 
       (.I0(a[31]),
        .I1(\alu_out[27]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[19]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[11]_INST_0_i_9_n_0 ),
        .O(\alu_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[11]_INST_0_i_7 
       (.I0(\alu_out[27]_INST_0_i_10_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[19]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[11]_INST_0_i_9_n_0 ),
        .O(\alu_out[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \alu_out[11]_INST_0_i_8 
       (.I0(\alu_out[31]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[31]_INST_0_i_14_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[31]_INST_0_i_13_n_0 ),
        .I5(b[4]),
        .O(\alu_out[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_9 
       (.I0(a[14]),
        .I1(a[12]),
        .I2(b[0]),
        .I3(a[13]),
        .I4(b[1]),
        .I5(a[11]),
        .O(\alu_out[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[12]_INST_0 
       (.I0(\alu_out[12]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[12]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[12]_INST_0_i_3_n_0 ),
        .O(alu_out[12]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[12]_INST_0_i_1 
       (.I0(a[12]),
        .I1(b[12]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[12]_INST_0_i_10 
       (.I0(\alu_out[16]_INST_0_i_11_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[24]_INST_0_i_9_n_0 ),
        .I3(b[4]),
        .O(\alu_out[12]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[12]_INST_0_i_11 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[20]_INST_0_i_13_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[12]_INST_0_i_13_n_0 ),
        .O(\alu_out[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \alu_out[12]_INST_0_i_12 
       (.I0(\alu_out[28]_INST_0_i_15_n_0 ),
        .I1(b[3]),
        .I2(b[0]),
        .I3(a[0]),
        .I4(b[1]),
        .I5(b[4]),
        .O(\alu_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_13 
       (.I0(a[15]),
        .I1(a[13]),
        .I2(b[0]),
        .I3(a[14]),
        .I4(b[1]),
        .I5(a[12]),
        .O(\alu_out[12]_INST_0_i_13_n_0 ));
  MUXF7 \alu_out[12]_INST_0_i_2 
       (.I0(\alu_out[12]_INST_0_i_4_n_0 ),
        .I1(\alu_out[12]_INST_0_i_5_n_0 ),
        .O(\alu_out[12]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[12]_INST_0_i_3 
       (.I0(\alu_out[12]_INST_0_i_6_n_0 ),
        .I1(\alu_out[12]_INST_0_i_7_n_0 ),
        .O(\alu_out[12]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[12]_INST_0_i_4 
       (.I0(b[12]),
        .I1(a[12]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_5 
       (.I0(\alu_out[12]_INST_0_i_8_n_0 ),
        .I1(\alu_out[12]_INST_0_i_9_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[12]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[12]_INST_0_i_11_n_0 ),
        .O(\alu_out[12]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[12]_INST_0_i_6 
       (.I0(data1[12]),
        .I1(alu_ctrl[0]),
        .I2(data0[12]),
        .O(\alu_out[12]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[12]_INST_0_i_7 
       (.I0(\alu_out[16]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[12]_INST_0_i_12_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[12]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[24]_INST_0_i_9_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[16]_INST_0_i_11_n_0 ),
        .O(\alu_out[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_9 
       (.I0(a[31]),
        .I1(\alu_out[28]_INST_0_i_7_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[20]_INST_0_i_13_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[12]_INST_0_i_13_n_0 ),
        .O(\alu_out[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[13]_INST_0 
       (.I0(\alu_out[13]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[13]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[13]_INST_0_i_3_n_0 ),
        .O(alu_out[13]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[13]_INST_0_i_1 
       (.I0(a[13]),
        .I1(b[13]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \alu_out[13]_INST_0_i_10 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(a[1]),
        .I3(b[1]),
        .I4(b[3]),
        .I5(\alu_out[29]_INST_0_i_16_n_0 ),
        .O(\alu_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_11 
       (.I0(a[16]),
        .I1(a[14]),
        .I2(b[0]),
        .I3(a[15]),
        .I4(b[1]),
        .I5(a[13]),
        .O(\alu_out[13]_INST_0_i_11_n_0 ));
  MUXF7 \alu_out[13]_INST_0_i_2 
       (.I0(\alu_out[13]_INST_0_i_4_n_0 ),
        .I1(\alu_out[13]_INST_0_i_5_n_0 ),
        .O(\alu_out[13]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[13]_INST_0_i_3 
       (.I0(\alu_out[13]_INST_0_i_6_n_0 ),
        .I1(\alu_out[13]_INST_0_i_7_n_0 ),
        .O(\alu_out[13]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[13]_INST_0_i_4 
       (.I0(b[13]),
        .I1(a[13]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_5 
       (.I0(\alu_out[17]_INST_0_i_8_n_0 ),
        .I1(\alu_out[13]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[17]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[13]_INST_0_i_9_n_0 ),
        .O(\alu_out[13]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[13]_INST_0_i_6 
       (.I0(data1[13]),
        .I1(alu_ctrl[0]),
        .I2(data0[13]),
        .O(\alu_out[13]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \alu_out[13]_INST_0_i_7 
       (.I0(\alu_out[17]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(b[4]),
        .I3(\alu_out[13]_INST_0_i_10_n_0 ),
        .I4(alu_ctrl[0]),
        .O(\alu_out[13]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[13]_INST_0_i_8 
       (.I0(\alu_out[29]_INST_0_i_7_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[21]_INST_0_i_14_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[13]_INST_0_i_11_n_0 ),
        .O(\alu_out[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[13]_INST_0_i_9 
       (.I0(\alu_out[29]_INST_0_i_8_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[21]_INST_0_i_14_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[13]_INST_0_i_11_n_0 ),
        .O(\alu_out[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[14]_INST_0 
       (.I0(\alu_out[14]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[14]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[14]_INST_0_i_3_n_0 ),
        .O(alu_out[14]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[14]_INST_0_i_1 
       (.I0(a[14]),
        .I1(b[14]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[14]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[14]_INST_0_i_10 
       (.I0(\alu_out[30]_INST_0_i_16_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[30]_INST_0_i_15_n_0 ),
        .I3(b[4]),
        .O(\alu_out[14]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \alu_out[14]_INST_0_i_11 
       (.I0(b[3]),
        .I1(b[0]),
        .I2(a[31]),
        .I3(b[1]),
        .I4(a[30]),
        .O(\alu_out[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_12 
       (.I0(a[17]),
        .I1(a[15]),
        .I2(b[0]),
        .I3(a[16]),
        .I4(b[1]),
        .I5(a[14]),
        .O(\alu_out[14]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005404)) 
    \alu_out[14]_INST_0_i_13 
       (.I0(b[1]),
        .I1(a[30]),
        .I2(b[0]),
        .I3(a[31]),
        .I4(b[3]),
        .O(\alu_out[14]_INST_0_i_13_n_0 ));
  MUXF7 \alu_out[14]_INST_0_i_2 
       (.I0(\alu_out[14]_INST_0_i_4_n_0 ),
        .I1(\alu_out[14]_INST_0_i_5_n_0 ),
        .O(\alu_out[14]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[14]_INST_0_i_3 
       (.I0(\alu_out[14]_INST_0_i_6_n_0 ),
        .I1(\alu_out[14]_INST_0_i_7_n_0 ),
        .O(\alu_out[14]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[14]_INST_0_i_4 
       (.I0(b[14]),
        .I1(a[14]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_5 
       (.I0(\alu_out[18]_INST_0_i_8_n_0 ),
        .I1(\alu_out[14]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[18]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[14]_INST_0_i_9_n_0 ),
        .O(\alu_out[14]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[14]_INST_0_i_6 
       (.I0(data1[14]),
        .I1(alu_ctrl[0]),
        .I2(data0[14]),
        .O(\alu_out[14]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[14]_INST_0_i_7 
       (.I0(\alu_out[18]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[14]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[14]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[14]_INST_0_i_8 
       (.I0(\alu_out[14]_INST_0_i_11_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[22]_INST_0_i_12_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[14]_INST_0_i_12_n_0 ),
        .O(\alu_out[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[14]_INST_0_i_9 
       (.I0(\alu_out[14]_INST_0_i_13_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[22]_INST_0_i_12_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[14]_INST_0_i_12_n_0 ),
        .O(\alu_out[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[15]_INST_0 
       (.I0(\alu_out[15]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[15]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[15]_INST_0_i_3_n_0 ),
        .O(alu_out[15]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[15]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[15]_INST_0_i_10 
       (.I0(\alu_out[31]_INST_0_i_14_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[31]_INST_0_i_13_n_0 ),
        .I3(b[4]),
        .O(\alu_out[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_11 
       (.I0(a[18]),
        .I1(a[16]),
        .I2(b[0]),
        .I3(a[17]),
        .I4(b[1]),
        .I5(a[15]),
        .O(\alu_out[15]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \alu_out[15]_INST_0_i_12 
       (.I0(b[0]),
        .I1(a[31]),
        .I2(b[1]),
        .I3(b[3]),
        .O(\alu_out[15]_INST_0_i_12_n_0 ));
  MUXF7 \alu_out[15]_INST_0_i_2 
       (.I0(\alu_out[15]_INST_0_i_4_n_0 ),
        .I1(\alu_out[15]_INST_0_i_5_n_0 ),
        .O(\alu_out[15]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[15]_INST_0_i_3 
       (.I0(\alu_out[15]_INST_0_i_6_n_0 ),
        .I1(\alu_out[15]_INST_0_i_7_n_0 ),
        .O(\alu_out[15]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[15]_INST_0_i_4 
       (.I0(b[15]),
        .I1(a[15]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_5 
       (.I0(\alu_out[19]_INST_0_i_8_n_0 ),
        .I1(\alu_out[15]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[19]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[15]_INST_0_i_9_n_0 ),
        .O(\alu_out[15]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[15]_INST_0_i_6 
       (.I0(data1[15]),
        .I1(alu_ctrl[0]),
        .I2(data0[15]),
        .O(\alu_out[15]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[15]_INST_0_i_7 
       (.I0(\alu_out[19]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[15]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[15]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[15]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[23]_INST_0_i_10_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[15]_INST_0_i_11_n_0 ),
        .O(\alu_out[15]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[15]_INST_0_i_9 
       (.I0(\alu_out[15]_INST_0_i_12_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[23]_INST_0_i_10_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[15]_INST_0_i_11_n_0 ),
        .O(\alu_out[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[16]_INST_0 
       (.I0(\alu_out[16]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[16]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[16]_INST_0_i_3_n_0 ),
        .O(alu_out[16]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[16]_INST_0_i_1 
       (.I0(a[16]),
        .I1(b[16]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[16]_INST_0_i_10 
       (.I0(\alu_out[28]_INST_0_i_11_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[28]_INST_0_i_10_n_0 ),
        .I3(b[4]),
        .O(\alu_out[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_11 
       (.I0(a[19]),
        .I1(a[17]),
        .I2(b[0]),
        .I3(a[18]),
        .I4(b[1]),
        .I5(a[16]),
        .O(\alu_out[16]_INST_0_i_11_n_0 ));
  MUXF7 \alu_out[16]_INST_0_i_2 
       (.I0(\alu_out[16]_INST_0_i_4_n_0 ),
        .I1(\alu_out[16]_INST_0_i_5_n_0 ),
        .O(\alu_out[16]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[16]_INST_0_i_3 
       (.I0(\alu_out[16]_INST_0_i_6_n_0 ),
        .I1(\alu_out[16]_INST_0_i_7_n_0 ),
        .O(\alu_out[16]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[16]_INST_0_i_4 
       (.I0(b[16]),
        .I1(a[16]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F0FFF000)) 
    \alu_out[16]_INST_0_i_5 
       (.I0(a[31]),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[16]_INST_0_i_8_n_0 ),
        .I3(b[2]),
        .I4(\alu_out[16]_INST_0_i_9_n_0 ),
        .I5(b[4]),
        .O(\alu_out[16]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[16]_INST_0_i_6 
       (.I0(data1[16]),
        .I1(alu_ctrl[0]),
        .I2(data0[16]),
        .O(\alu_out[16]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[16]_INST_0_i_7 
       (.I0(\alu_out[20]_INST_0_i_12_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[16]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[16]_INST_0_i_8 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[20]_INST_0_i_13_n_0 ),
        .O(\alu_out[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[16]_INST_0_i_9 
       (.I0(\alu_out[24]_INST_0_i_9_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[16]_INST_0_i_11_n_0 ),
        .O(\alu_out[16]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[17]_INST_0 
       (.I0(\alu_out[17]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[17]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[17]_INST_0_i_3_n_0 ),
        .O(alu_out[17]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[17]_INST_0_i_1 
       (.I0(a[17]),
        .I1(b[17]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[17]_INST_0_i_10 
       (.I0(\alu_out[29]_INST_0_i_12_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[29]_INST_0_i_11_n_0 ),
        .I3(b[4]),
        .O(\alu_out[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_11 
       (.I0(a[20]),
        .I1(a[18]),
        .I2(b[0]),
        .I3(a[19]),
        .I4(b[1]),
        .I5(a[17]),
        .O(\alu_out[17]_INST_0_i_11_n_0 ));
  MUXF7 \alu_out[17]_INST_0_i_2 
       (.I0(\alu_out[17]_INST_0_i_4_n_0 ),
        .I1(\alu_out[17]_INST_0_i_5_n_0 ),
        .O(\alu_out[17]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[17]_INST_0_i_3 
       (.I0(\alu_out[17]_INST_0_i_6_n_0 ),
        .I1(\alu_out[17]_INST_0_i_7_n_0 ),
        .O(\alu_out[17]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[17]_INST_0_i_4 
       (.I0(b[17]),
        .I1(a[17]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_5 
       (.I0(\alu_out[21]_INST_0_i_9_n_0 ),
        .I1(\alu_out[17]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[21]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[17]_INST_0_i_9_n_0 ),
        .O(\alu_out[17]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[17]_INST_0_i_6 
       (.I0(data1[17]),
        .I1(alu_ctrl[0]),
        .I2(data0[17]),
        .O(\alu_out[17]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[17]_INST_0_i_7 
       (.I0(\alu_out[21]_INST_0_i_12_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[17]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[17]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[17]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[25]_INST_0_i_9_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[17]_INST_0_i_11_n_0 ),
        .O(\alu_out[17]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[17]_INST_0_i_9 
       (.I0(\alu_out[17]_INST_0_i_11_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[25]_INST_0_i_9_n_0 ),
        .I3(b[4]),
        .O(\alu_out[17]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[18]_INST_0 
       (.I0(\alu_out[18]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[18]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[18]_INST_0_i_3_n_0 ),
        .O(alu_out[18]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[18]_INST_0_i_1 
       (.I0(a[18]),
        .I1(b[18]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[18]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[18]_INST_0_i_10 
       (.I0(\alu_out[30]_INST_0_i_12_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[30]_INST_0_i_11_n_0 ),
        .I3(b[4]),
        .O(\alu_out[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_11 
       (.I0(a[21]),
        .I1(a[19]),
        .I2(b[0]),
        .I3(a[20]),
        .I4(b[1]),
        .I5(a[18]),
        .O(\alu_out[18]_INST_0_i_11_n_0 ));
  MUXF7 \alu_out[18]_INST_0_i_2 
       (.I0(\alu_out[18]_INST_0_i_4_n_0 ),
        .I1(\alu_out[18]_INST_0_i_5_n_0 ),
        .O(\alu_out[18]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[18]_INST_0_i_3 
       (.I0(\alu_out[18]_INST_0_i_6_n_0 ),
        .I1(\alu_out[18]_INST_0_i_7_n_0 ),
        .O(\alu_out[18]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[18]_INST_0_i_4 
       (.I0(b[18]),
        .I1(a[18]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_5 
       (.I0(\alu_out[22]_INST_0_i_8_n_0 ),
        .I1(\alu_out[18]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[22]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[18]_INST_0_i_9_n_0 ),
        .O(\alu_out[18]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[18]_INST_0_i_6 
       (.I0(data1[18]),
        .I1(alu_ctrl[0]),
        .I2(data0[18]),
        .O(\alu_out[18]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[18]_INST_0_i_7 
       (.I0(\alu_out[22]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[18]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[18]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[18]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[26]_INST_0_i_10_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[18]_INST_0_i_11_n_0 ),
        .O(\alu_out[18]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[18]_INST_0_i_9 
       (.I0(\alu_out[18]_INST_0_i_11_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[26]_INST_0_i_10_n_0 ),
        .I3(b[4]),
        .O(\alu_out[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[19]_INST_0 
       (.I0(\alu_out[19]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[19]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[19]_INST_0_i_3_n_0 ),
        .O(alu_out[19]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[19]_INST_0_i_1 
       (.I0(a[19]),
        .I1(b[19]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[19]_INST_0_i_10 
       (.I0(\alu_out[31]_INST_0_i_10_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[31]_INST_0_i_9_n_0 ),
        .I3(b[4]),
        .O(\alu_out[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_11 
       (.I0(a[22]),
        .I1(a[20]),
        .I2(b[0]),
        .I3(a[21]),
        .I4(b[1]),
        .I5(a[19]),
        .O(\alu_out[19]_INST_0_i_11_n_0 ));
  MUXF7 \alu_out[19]_INST_0_i_2 
       (.I0(\alu_out[19]_INST_0_i_4_n_0 ),
        .I1(\alu_out[19]_INST_0_i_5_n_0 ),
        .O(\alu_out[19]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[19]_INST_0_i_3 
       (.I0(\alu_out[19]_INST_0_i_6_n_0 ),
        .I1(\alu_out[19]_INST_0_i_7_n_0 ),
        .O(\alu_out[19]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[19]_INST_0_i_4 
       (.I0(b[19]),
        .I1(a[19]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_5 
       (.I0(\alu_out[23]_INST_0_i_7_n_0 ),
        .I1(\alu_out[19]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[23]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[19]_INST_0_i_9_n_0 ),
        .O(\alu_out[19]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[19]_INST_0_i_6 
       (.I0(data1[19]),
        .I1(alu_ctrl[0]),
        .I2(data0[19]),
        .O(\alu_out[19]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[19]_INST_0_i_7 
       (.I0(\alu_out[23]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[19]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[19]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[19]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[27]_INST_0_i_10_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[19]_INST_0_i_11_n_0 ),
        .O(\alu_out[19]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[19]_INST_0_i_9 
       (.I0(\alu_out[19]_INST_0_i_11_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[27]_INST_0_i_10_n_0 ),
        .I3(b[4]),
        .O(\alu_out[19]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[1]_INST_0 
       (.I0(\alu_out[1]_INST_0_i_1_n_0 ),
        .I1(\alu_out[1]_INST_0_i_2_n_0 ),
        .O(alu_out[1]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[1]_INST_0_i_1 
       (.I0(\alu_out[1]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[1]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[1]_INST_0_i_5_n_0 ),
        .O(\alu_out[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[1]_INST_0_i_2 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[1]_INST_0_i_3 
       (.I0(\alu_out[5]_INST_0_i_6_n_0 ),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[5]_INST_0_i_7_n_0 ),
        .I3(b[2]),
        .I4(\alu_out[1]_INST_0_i_6_n_0 ),
        .O(\alu_out[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[1]_INST_0_i_4 
       (.I0(b[1]),
        .I1(a[1]),
        .O(\alu_out[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \alu_out[1]_INST_0_i_5 
       (.I0(b[2]),
        .I1(\alu_out[1]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(data1[1]),
        .I4(alu_ctrl[0]),
        .I5(data0[1]),
        .O(\alu_out[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[1]_INST_0_i_6 
       (.I0(\alu_out[25]_INST_0_i_9_n_0 ),
        .I1(\alu_out[17]_INST_0_i_11_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[9]_INST_0_i_9_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[1]_INST_0_i_8_n_0 ),
        .O(\alu_out[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \alu_out[1]_INST_0_i_7 
       (.I0(b[3]),
        .I1(a[0]),
        .I2(b[0]),
        .I3(a[1]),
        .I4(b[1]),
        .I5(b[4]),
        .O(\alu_out[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[1]_INST_0_i_8 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(b[0]),
        .I3(a[3]),
        .I4(b[1]),
        .I5(a[1]),
        .O(\alu_out[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[20]_INST_0 
       (.I0(\alu_out[20]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[20]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[20]_INST_0_i_3_n_0 ),
        .O(alu_out[20]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[20]_INST_0_i_1 
       (.I0(a[20]),
        .I1(b[20]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[20]_INST_0_i_10 
       (.I0(b[3]),
        .I1(\alu_out[24]_INST_0_i_9_n_0 ),
        .I2(b[4]),
        .O(\alu_out[20]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[20]_INST_0_i_11 
       (.I0(\alu_out[20]_INST_0_i_13_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[28]_INST_0_i_7_n_0 ),
        .I3(b[4]),
        .O(\alu_out[20]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[20]_INST_0_i_12 
       (.I0(\alu_out[20]_INST_0_i_14_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[28]_INST_0_i_15_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[28]_INST_0_i_16_n_0 ),
        .O(\alu_out[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_13 
       (.I0(a[23]),
        .I1(a[21]),
        .I2(b[0]),
        .I3(a[22]),
        .I4(b[1]),
        .I5(a[20]),
        .O(\alu_out[20]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \alu_out[20]_INST_0_i_14 
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(b[3]),
        .O(\alu_out[20]_INST_0_i_14_n_0 ));
  MUXF7 \alu_out[20]_INST_0_i_2 
       (.I0(\alu_out[20]_INST_0_i_4_n_0 ),
        .I1(\alu_out[20]_INST_0_i_5_n_0 ),
        .O(\alu_out[20]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[20]_INST_0_i_3 
       (.I0(\alu_out[20]_INST_0_i_6_n_0 ),
        .I1(\alu_out[20]_INST_0_i_7_n_0 ),
        .O(\alu_out[20]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[20]_INST_0_i_4 
       (.I0(b[20]),
        .I1(a[20]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_5 
       (.I0(\alu_out[20]_INST_0_i_8_n_0 ),
        .I1(\alu_out[20]_INST_0_i_9_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[20]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[20]_INST_0_i_11_n_0 ),
        .O(\alu_out[20]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[20]_INST_0_i_6 
       (.I0(data1[20]),
        .I1(alu_ctrl[0]),
        .I2(data0[20]),
        .O(\alu_out[20]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[20]_INST_0_i_7 
       (.I0(\alu_out[24]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[20]_INST_0_i_12_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[20]_INST_0_i_8 
       (.I0(b[4]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(\alu_out[24]_INST_0_i_9_n_0 ),
        .O(\alu_out[20]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[20]_INST_0_i_9 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[28]_INST_0_i_7_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[20]_INST_0_i_13_n_0 ),
        .O(\alu_out[20]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[21]_INST_0 
       (.I0(\alu_out[21]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[21]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[21]_INST_0_i_3_n_0 ),
        .O(alu_out[21]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[21]_INST_0_i_1 
       (.I0(a[21]),
        .I1(b[21]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[21]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[21]_INST_0_i_10 
       (.I0(b[3]),
        .I1(\alu_out[25]_INST_0_i_9_n_0 ),
        .I2(b[4]),
        .O(\alu_out[21]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[21]_INST_0_i_11 
       (.I0(\alu_out[21]_INST_0_i_14_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[21]_INST_0_i_15_n_0 ),
        .I3(b[4]),
        .O(\alu_out[21]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[21]_INST_0_i_12 
       (.I0(\alu_out[21]_INST_0_i_16_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[29]_INST_0_i_16_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[29]_INST_0_i_17_n_0 ),
        .O(\alu_out[21]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[21]_INST_0_i_13 
       (.I0(a[30]),
        .I1(b[0]),
        .I2(a[31]),
        .I3(b[1]),
        .I4(a[29]),
        .O(\alu_out[21]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[21]_INST_0_i_14 
       (.I0(a[24]),
        .I1(a[22]),
        .I2(b[0]),
        .I3(a[23]),
        .I4(b[1]),
        .I5(a[21]),
        .O(\alu_out[21]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[21]_INST_0_i_15 
       (.I0(a[30]),
        .I1(b[0]),
        .I2(a[31]),
        .I3(b[1]),
        .I4(a[29]),
        .O(\alu_out[21]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00005404)) 
    \alu_out[21]_INST_0_i_16 
       (.I0(b[1]),
        .I1(a[1]),
        .I2(b[0]),
        .I3(a[0]),
        .I4(b[3]),
        .O(\alu_out[21]_INST_0_i_16_n_0 ));
  MUXF7 \alu_out[21]_INST_0_i_2 
       (.I0(\alu_out[21]_INST_0_i_4_n_0 ),
        .I1(\alu_out[21]_INST_0_i_5_n_0 ),
        .O(\alu_out[21]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[21]_INST_0_i_3 
       (.I0(\alu_out[21]_INST_0_i_6_n_0 ),
        .I1(\alu_out[21]_INST_0_i_7_n_0 ),
        .O(\alu_out[21]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[21]_INST_0_i_4 
       (.I0(b[21]),
        .I1(a[21]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[21]_INST_0_i_5 
       (.I0(\alu_out[21]_INST_0_i_8_n_0 ),
        .I1(\alu_out[21]_INST_0_i_9_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[21]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[21]_INST_0_i_11_n_0 ),
        .O(\alu_out[21]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[21]_INST_0_i_6 
       (.I0(data1[21]),
        .I1(alu_ctrl[0]),
        .I2(data0[21]),
        .O(\alu_out[21]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[21]_INST_0_i_7 
       (.I0(\alu_out[25]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[21]_INST_0_i_12_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[21]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[21]_INST_0_i_8 
       (.I0(b[4]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(\alu_out[25]_INST_0_i_9_n_0 ),
        .O(\alu_out[21]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[21]_INST_0_i_9 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[21]_INST_0_i_13_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[21]_INST_0_i_14_n_0 ),
        .O(\alu_out[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[22]_INST_0 
       (.I0(\alu_out[22]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[22]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[22]_INST_0_i_3_n_0 ),
        .O(alu_out[22]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[22]_INST_0_i_1 
       (.I0(a[22]),
        .I1(b[22]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[22]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[22]_INST_0_i_10 
       (.I0(\alu_out[22]_INST_0_i_14_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[30]_INST_0_i_16_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[30]_INST_0_i_17_n_0 ),
        .O(\alu_out[22]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[22]_INST_0_i_11 
       (.I0(b[0]),
        .I1(a[31]),
        .I2(b[1]),
        .I3(a[30]),
        .O(\alu_out[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[22]_INST_0_i_12 
       (.I0(a[25]),
        .I1(a[23]),
        .I2(b[0]),
        .I3(a[24]),
        .I4(b[1]),
        .I5(a[22]),
        .O(\alu_out[22]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[22]_INST_0_i_13 
       (.I0(a[31]),
        .I1(b[0]),
        .I2(a[30]),
        .I3(b[1]),
        .O(\alu_out[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \alu_out[22]_INST_0_i_14 
       (.I0(a[2]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(a[1]),
        .I5(b[3]),
        .O(\alu_out[22]_INST_0_i_14_n_0 ));
  MUXF7 \alu_out[22]_INST_0_i_2 
       (.I0(\alu_out[22]_INST_0_i_4_n_0 ),
        .I1(\alu_out[22]_INST_0_i_5_n_0 ),
        .O(\alu_out[22]_INST_0_i_2_n_0 ),
        .S(alu_ctrl[1]));
  MUXF7 \alu_out[22]_INST_0_i_3 
       (.I0(\alu_out[22]_INST_0_i_6_n_0 ),
        .I1(\alu_out[22]_INST_0_i_7_n_0 ),
        .O(\alu_out[22]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[22]_INST_0_i_4 
       (.I0(b[22]),
        .I1(a[22]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[22]_INST_0_i_5 
       (.I0(\alu_out[26]_INST_0_i_7_n_0 ),
        .I1(\alu_out[22]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[26]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[22]_INST_0_i_9_n_0 ),
        .O(\alu_out[22]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[22]_INST_0_i_6 
       (.I0(data1[22]),
        .I1(alu_ctrl[0]),
        .I2(data0[22]),
        .O(\alu_out[22]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[22]_INST_0_i_7 
       (.I0(\alu_out[26]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[22]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[22]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[22]_INST_0_i_8 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(\alu_out[22]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[22]_INST_0_i_12_n_0 ),
        .O(\alu_out[22]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[22]_INST_0_i_9 
       (.I0(\alu_out[22]_INST_0_i_12_n_0 ),
        .I1(b[3]),
        .I2(\alu_out[22]_INST_0_i_13_n_0 ),
        .I3(b[4]),
        .O(\alu_out[22]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[23]_INST_0 
       (.I0(\alu_out[23]_INST_0_i_1_n_0 ),
        .I1(\alu_out[23]_INST_0_i_2_n_0 ),
        .O(alu_out[23]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[23]_INST_0_i_1 
       (.I0(\alu_out[23]_INST_0_i_3_n_0 ),
        .I1(\alu_out[23]_INST_0_i_4_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[23]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[23]_INST_0_i_6_n_0 ),
        .O(\alu_out[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[23]_INST_0_i_10 
       (.I0(a[26]),
        .I1(a[24]),
        .I2(b[0]),
        .I3(a[25]),
        .I4(b[1]),
        .I5(a[23]),
        .O(\alu_out[23]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[23]_INST_0_i_2 
       (.I0(a[23]),
        .I1(b[23]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[23]_INST_0_i_3 
       (.I0(\alu_out[27]_INST_0_i_7_n_0 ),
        .I1(\alu_out[23]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[27]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[23]_INST_0_i_8_n_0 ),
        .O(\alu_out[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[23]_INST_0_i_4 
       (.I0(b[23]),
        .I1(a[23]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[23]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[23]_INST_0_i_5 
       (.I0(\alu_out[27]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[23]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[23]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[23]_INST_0_i_6 
       (.I0(data1[23]),
        .I1(alu_ctrl[0]),
        .I2(data0[23]),
        .O(\alu_out[23]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[23]_INST_0_i_7 
       (.I0(b[4]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(\alu_out[23]_INST_0_i_10_n_0 ),
        .O(\alu_out[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \alu_out[23]_INST_0_i_8 
       (.I0(\alu_out[23]_INST_0_i_10_n_0 ),
        .I1(b[3]),
        .I2(b[0]),
        .I3(a[31]),
        .I4(b[1]),
        .I5(b[4]),
        .O(\alu_out[23]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[23]_INST_0_i_9 
       (.I0(\alu_out[31]_INST_0_i_13_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[31]_INST_0_i_14_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[31]_INST_0_i_15_n_0 ),
        .O(\alu_out[23]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[24]_INST_0 
       (.I0(\alu_out[24]_INST_0_i_1_n_0 ),
        .I1(\alu_out[24]_INST_0_i_2_n_0 ),
        .O(alu_out[24]),
        .S(alu_ctrl[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[24]_INST_0_i_1 
       (.I0(\alu_out[24]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[2]),
        .I2(\alu_out[24]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[1]),
        .I4(\alu_out[24]_INST_0_i_5_n_0 ),
        .O(\alu_out[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[24]_INST_0_i_2 
       (.I0(a[24]),
        .I1(b[24]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFAFA0C0C0C0C0)) 
    \alu_out[24]_INST_0_i_3 
       (.I0(\alu_out[24]_INST_0_i_6_n_0 ),
        .I1(\alu_out[24]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(b[24]),
        .I4(a[24]),
        .I5(alu_ctrl[0]),
        .O(\alu_out[24]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[24]_INST_0_i_4 
       (.I0(\alu_out[28]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[24]_INST_0_i_8_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[24]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[24]_INST_0_i_5 
       (.I0(data1[24]),
        .I1(alu_ctrl[0]),
        .I2(data0[24]),
        .O(\alu_out[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \alu_out[24]_INST_0_i_6 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(b[4]),
        .I3(a[31]),
        .I4(b[3]),
        .I5(\alu_out[24]_INST_0_i_9_n_0 ),
        .O(\alu_out[24]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[24]_INST_0_i_7 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(b[3]),
        .I3(\alu_out[24]_INST_0_i_9_n_0 ),
        .I4(b[4]),
        .O(\alu_out[24]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[24]_INST_0_i_8 
       (.I0(\alu_out[28]_INST_0_i_10_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[28]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[28]_INST_0_i_12_n_0 ),
        .O(\alu_out[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[24]_INST_0_i_9 
       (.I0(a[27]),
        .I1(a[25]),
        .I2(b[0]),
        .I3(a[26]),
        .I4(b[1]),
        .I5(a[24]),
        .O(\alu_out[24]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[25]_INST_0 
       (.I0(\alu_out[25]_INST_0_i_1_n_0 ),
        .I1(\alu_out[25]_INST_0_i_2_n_0 ),
        .O(alu_out[25]),
        .S(alu_ctrl[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[25]_INST_0_i_1 
       (.I0(\alu_out[25]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[2]),
        .I2(\alu_out[25]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[1]),
        .I4(\alu_out[25]_INST_0_i_5_n_0 ),
        .O(\alu_out[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[25]_INST_0_i_2 
       (.I0(a[25]),
        .I1(b[25]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFAFA0C0C0C0C0)) 
    \alu_out[25]_INST_0_i_3 
       (.I0(\alu_out[25]_INST_0_i_6_n_0 ),
        .I1(\alu_out[25]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(b[25]),
        .I4(a[25]),
        .I5(alu_ctrl[0]),
        .O(\alu_out[25]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[25]_INST_0_i_4 
       (.I0(\alu_out[29]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[25]_INST_0_i_8_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[25]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[25]_INST_0_i_5 
       (.I0(data1[25]),
        .I1(alu_ctrl[0]),
        .I2(data0[25]),
        .O(\alu_out[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FB0BFB08F808)) 
    \alu_out[25]_INST_0_i_6 
       (.I0(\alu_out[29]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(b[4]),
        .I3(a[31]),
        .I4(b[3]),
        .I5(\alu_out[25]_INST_0_i_9_n_0 ),
        .O(\alu_out[25]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00008B88)) 
    \alu_out[25]_INST_0_i_7 
       (.I0(\alu_out[29]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(b[3]),
        .I3(\alu_out[25]_INST_0_i_9_n_0 ),
        .I4(b[4]),
        .O(\alu_out[25]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[25]_INST_0_i_8 
       (.I0(\alu_out[29]_INST_0_i_11_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[29]_INST_0_i_12_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[29]_INST_0_i_13_n_0 ),
        .O(\alu_out[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[25]_INST_0_i_9 
       (.I0(a[28]),
        .I1(a[26]),
        .I2(b[0]),
        .I3(a[27]),
        .I4(b[1]),
        .I5(a[25]),
        .O(\alu_out[25]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[26]_INST_0 
       (.I0(\alu_out[26]_INST_0_i_1_n_0 ),
        .I1(\alu_out[26]_INST_0_i_2_n_0 ),
        .O(alu_out[26]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[26]_INST_0_i_1 
       (.I0(\alu_out[26]_INST_0_i_3_n_0 ),
        .I1(\alu_out[26]_INST_0_i_4_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[26]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[26]_INST_0_i_6_n_0 ),
        .O(\alu_out[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[26]_INST_0_i_10 
       (.I0(a[29]),
        .I1(a[27]),
        .I2(b[0]),
        .I3(a[28]),
        .I4(b[1]),
        .I5(a[26]),
        .O(\alu_out[26]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[26]_INST_0_i_2 
       (.I0(a[26]),
        .I1(b[26]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[26]_INST_0_i_3 
       (.I0(\alu_out[30]_INST_0_i_7_n_0 ),
        .I1(\alu_out[26]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[30]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[26]_INST_0_i_8_n_0 ),
        .O(\alu_out[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[26]_INST_0_i_4 
       (.I0(b[26]),
        .I1(a[26]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[26]_INST_0_i_5 
       (.I0(\alu_out[30]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[26]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[26]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[26]_INST_0_i_6 
       (.I0(data1[26]),
        .I1(alu_ctrl[0]),
        .I2(data0[26]),
        .O(\alu_out[26]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[26]_INST_0_i_7 
       (.I0(b[4]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(\alu_out[26]_INST_0_i_10_n_0 ),
        .O(\alu_out[26]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[26]_INST_0_i_8 
       (.I0(b[3]),
        .I1(\alu_out[26]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .O(\alu_out[26]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[26]_INST_0_i_9 
       (.I0(\alu_out[30]_INST_0_i_11_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[30]_INST_0_i_12_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[30]_INST_0_i_13_n_0 ),
        .O(\alu_out[26]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[27]_INST_0 
       (.I0(\alu_out[27]_INST_0_i_1_n_0 ),
        .I1(\alu_out[27]_INST_0_i_2_n_0 ),
        .O(alu_out[27]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[27]_INST_0_i_1 
       (.I0(\alu_out[27]_INST_0_i_3_n_0 ),
        .I1(\alu_out[27]_INST_0_i_4_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[27]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[27]_INST_0_i_6_n_0 ),
        .O(\alu_out[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[27]_INST_0_i_10 
       (.I0(a[30]),
        .I1(a[28]),
        .I2(b[0]),
        .I3(a[29]),
        .I4(b[1]),
        .I5(a[27]),
        .O(\alu_out[27]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[27]_INST_0_i_2 
       (.I0(a[27]),
        .I1(b[27]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[27]_INST_0_i_3 
       (.I0(a[31]),
        .I1(\alu_out[27]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[31]_INST_0_i_6_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[27]_INST_0_i_8_n_0 ),
        .O(\alu_out[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \alu_out[27]_INST_0_i_4 
       (.I0(b[27]),
        .I1(a[27]),
        .I2(alu_ctrl[0]),
        .O(\alu_out[27]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[27]_INST_0_i_5 
       (.I0(\alu_out[31]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[27]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[27]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[27]_INST_0_i_6 
       (.I0(data1[27]),
        .I1(alu_ctrl[0]),
        .I2(data0[27]),
        .O(\alu_out[27]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[27]_INST_0_i_7 
       (.I0(b[4]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(\alu_out[27]_INST_0_i_10_n_0 ),
        .O(\alu_out[27]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[27]_INST_0_i_8 
       (.I0(b[3]),
        .I1(\alu_out[27]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .O(\alu_out[27]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[27]_INST_0_i_9 
       (.I0(\alu_out[31]_INST_0_i_9_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[31]_INST_0_i_10_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[31]_INST_0_i_11_n_0 ),
        .O(\alu_out[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[28]_INST_0 
       (.I0(\alu_out[28]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[28]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[28]_INST_0_i_3_n_0 ),
        .O(alu_out[28]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[28]_INST_0_i_1 
       (.I0(a[28]),
        .I1(b[28]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_10 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(b[0]),
        .I3(a[2]),
        .I4(b[1]),
        .I5(a[4]),
        .O(\alu_out[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_11 
       (.I0(a[9]),
        .I1(a[11]),
        .I2(b[0]),
        .I3(a[10]),
        .I4(b[1]),
        .I5(a[12]),
        .O(\alu_out[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_12 
       (.I0(a[17]),
        .I1(a[19]),
        .I2(b[0]),
        .I3(a[18]),
        .I4(b[1]),
        .I5(a[20]),
        .O(\alu_out[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_13 
       (.I0(a[25]),
        .I1(a[27]),
        .I2(b[0]),
        .I3(a[26]),
        .I4(b[1]),
        .I5(a[28]),
        .O(\alu_out[28]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[28]_INST_0_i_14 
       (.I0(b[1]),
        .I1(a[0]),
        .I2(b[0]),
        .O(\alu_out[28]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_15 
       (.I0(a[5]),
        .I1(a[7]),
        .I2(b[0]),
        .I3(a[6]),
        .I4(b[1]),
        .I5(a[8]),
        .O(\alu_out[28]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_16 
       (.I0(a[13]),
        .I1(a[15]),
        .I2(b[0]),
        .I3(a[14]),
        .I4(b[1]),
        .I5(a[16]),
        .O(\alu_out[28]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_17 
       (.I0(a[21]),
        .I1(a[23]),
        .I2(b[0]),
        .I3(a[22]),
        .I4(b[1]),
        .I5(a[24]),
        .O(\alu_out[28]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \alu_out[28]_INST_0_i_2 
       (.I0(\alu_out[28]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(b[28]),
        .I3(a[28]),
        .I4(alu_ctrl[0]),
        .O(\alu_out[28]_INST_0_i_2_n_0 ));
  MUXF7 \alu_out[28]_INST_0_i_3 
       (.I0(\alu_out[28]_INST_0_i_5_n_0 ),
        .I1(\alu_out[28]_INST_0_i_6_n_0 ),
        .O(\alu_out[28]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT6 #(
    .INIT(64'h8888888888888F80)) 
    \alu_out[28]_INST_0_i_4 
       (.I0(a[31]),
        .I1(alu_ctrl[0]),
        .I2(b[4]),
        .I3(\alu_out[28]_INST_0_i_7_n_0 ),
        .I4(b[3]),
        .I5(b[2]),
        .O(\alu_out[28]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[28]_INST_0_i_5 
       (.I0(data1[28]),
        .I1(alu_ctrl[0]),
        .I2(data0[28]),
        .O(\alu_out[28]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[28]_INST_0_i_6 
       (.I0(\alu_out[28]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[28]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_7 
       (.I0(a[31]),
        .I1(a[29]),
        .I2(b[0]),
        .I3(a[30]),
        .I4(b[1]),
        .I5(a[28]),
        .O(\alu_out[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_8 
       (.I0(\alu_out[28]_INST_0_i_10_n_0 ),
        .I1(\alu_out[28]_INST_0_i_11_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[28]_INST_0_i_12_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[28]_INST_0_i_13_n_0 ),
        .O(\alu_out[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_9 
       (.I0(\alu_out[28]_INST_0_i_14_n_0 ),
        .I1(\alu_out[28]_INST_0_i_15_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[28]_INST_0_i_16_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[28]_INST_0_i_17_n_0 ),
        .O(\alu_out[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[29]_INST_0 
       (.I0(\alu_out[29]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[29]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[29]_INST_0_i_3_n_0 ),
        .O(alu_out[29]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[29]_INST_0_i_1 
       (.I0(a[29]),
        .I1(b[29]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_10 
       (.I0(\alu_out[29]_INST_0_i_15_n_0 ),
        .I1(\alu_out[29]_INST_0_i_16_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[29]_INST_0_i_17_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[29]_INST_0_i_18_n_0 ),
        .O(\alu_out[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(b[0]),
        .I3(a[3]),
        .I4(b[1]),
        .I5(a[5]),
        .O(\alu_out[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_12 
       (.I0(a[10]),
        .I1(a[12]),
        .I2(b[0]),
        .I3(a[11]),
        .I4(b[1]),
        .I5(a[13]),
        .O(\alu_out[29]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_13 
       (.I0(a[18]),
        .I1(a[20]),
        .I2(b[0]),
        .I3(a[19]),
        .I4(b[1]),
        .I5(a[21]),
        .O(\alu_out[29]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_14 
       (.I0(a[26]),
        .I1(a[28]),
        .I2(b[0]),
        .I3(a[27]),
        .I4(b[1]),
        .I5(a[29]),
        .O(\alu_out[29]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[29]_INST_0_i_15 
       (.I0(a[0]),
        .I1(b[0]),
        .I2(a[1]),
        .I3(b[1]),
        .O(\alu_out[29]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_16 
       (.I0(a[6]),
        .I1(a[8]),
        .I2(b[0]),
        .I3(a[7]),
        .I4(b[1]),
        .I5(a[9]),
        .O(\alu_out[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_17 
       (.I0(a[14]),
        .I1(a[16]),
        .I2(b[0]),
        .I3(a[15]),
        .I4(b[1]),
        .I5(a[17]),
        .O(\alu_out[29]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_18 
       (.I0(a[22]),
        .I1(a[24]),
        .I2(b[0]),
        .I3(a[23]),
        .I4(b[1]),
        .I5(a[25]),
        .O(\alu_out[29]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \alu_out[29]_INST_0_i_2 
       (.I0(\alu_out[29]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(b[29]),
        .I3(a[29]),
        .I4(alu_ctrl[0]),
        .O(\alu_out[29]_INST_0_i_2_n_0 ));
  MUXF7 \alu_out[29]_INST_0_i_3 
       (.I0(\alu_out[29]_INST_0_i_5_n_0 ),
        .I1(\alu_out[29]_INST_0_i_6_n_0 ),
        .O(\alu_out[29]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0CFA0C0)) 
    \alu_out[29]_INST_0_i_4 
       (.I0(a[31]),
        .I1(\alu_out[29]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(b[4]),
        .I4(\alu_out[29]_INST_0_i_8_n_0 ),
        .I5(b[2]),
        .O(\alu_out[29]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[29]_INST_0_i_5 
       (.I0(data1[29]),
        .I1(alu_ctrl[0]),
        .I2(data0[29]),
        .O(\alu_out[29]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[29]_INST_0_i_6 
       (.I0(\alu_out[29]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[29]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00EF45FF00EA40)) 
    \alu_out[29]_INST_0_i_7 
       (.I0(b[3]),
        .I1(a[30]),
        .I2(b[0]),
        .I3(a[31]),
        .I4(b[1]),
        .I5(a[29]),
        .O(\alu_out[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \alu_out[29]_INST_0_i_8 
       (.I0(a[29]),
        .I1(b[1]),
        .I2(a[31]),
        .I3(b[0]),
        .I4(a[30]),
        .I5(b[3]),
        .O(\alu_out[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_9 
       (.I0(\alu_out[29]_INST_0_i_11_n_0 ),
        .I1(\alu_out[29]_INST_0_i_12_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[29]_INST_0_i_13_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[29]_INST_0_i_14_n_0 ),
        .O(\alu_out[29]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[2]_INST_0 
       (.I0(\alu_out[2]_INST_0_i_1_n_0 ),
        .I1(\alu_out[2]_INST_0_i_2_n_0 ),
        .O(alu_out[2]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[2]_INST_0_i_1 
       (.I0(\alu_out[2]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[2]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[2]_INST_0_i_5_n_0 ),
        .O(\alu_out[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[2]_INST_0_i_2 
       (.I0(b[2]),
        .I1(a[2]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[2]_INST_0_i_3 
       (.I0(\alu_out[6]_INST_0_i_6_n_0 ),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[6]_INST_0_i_7_n_0 ),
        .I3(b[2]),
        .I4(\alu_out[2]_INST_0_i_6_n_0 ),
        .O(\alu_out[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[2]_INST_0_i_4 
       (.I0(b[2]),
        .I1(a[2]),
        .O(\alu_out[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \alu_out[2]_INST_0_i_5 
       (.I0(b[2]),
        .I1(\alu_out[2]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(data1[2]),
        .I4(alu_ctrl[0]),
        .I5(data0[2]),
        .O(\alu_out[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_6 
       (.I0(\alu_out[26]_INST_0_i_10_n_0 ),
        .I1(\alu_out[18]_INST_0_i_11_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[10]_INST_0_i_9_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[2]_INST_0_i_8_n_0 ),
        .O(\alu_out[2]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \alu_out[2]_INST_0_i_7 
       (.I0(\alu_out[22]_INST_0_i_14_n_0 ),
        .I1(b[4]),
        .O(\alu_out[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_8 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(b[0]),
        .I3(a[4]),
        .I4(b[1]),
        .I5(a[2]),
        .O(\alu_out[2]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[30]_INST_0 
       (.I0(\alu_out[30]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[30]_INST_0_i_2_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[30]_INST_0_i_3_n_0 ),
        .O(alu_out[30]));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[30]_INST_0_i_1 
       (.I0(a[30]),
        .I1(b[30]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_10 
       (.I0(\alu_out[30]_INST_0_i_15_n_0 ),
        .I1(\alu_out[30]_INST_0_i_16_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[30]_INST_0_i_17_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[30]_INST_0_i_18_n_0 ),
        .O(\alu_out[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(b[0]),
        .I3(a[4]),
        .I4(b[1]),
        .I5(a[6]),
        .O(\alu_out[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_12 
       (.I0(a[11]),
        .I1(a[13]),
        .I2(b[0]),
        .I3(a[12]),
        .I4(b[1]),
        .I5(a[14]),
        .O(\alu_out[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_13 
       (.I0(a[19]),
        .I1(a[21]),
        .I2(b[0]),
        .I3(a[20]),
        .I4(b[1]),
        .I5(a[22]),
        .O(\alu_out[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_14 
       (.I0(a[27]),
        .I1(a[29]),
        .I2(b[0]),
        .I3(a[28]),
        .I4(b[1]),
        .I5(a[30]),
        .O(\alu_out[30]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[30]_INST_0_i_15 
       (.I0(a[1]),
        .I1(b[0]),
        .I2(a[0]),
        .I3(b[1]),
        .I4(a[2]),
        .O(\alu_out[30]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_16 
       (.I0(a[7]),
        .I1(a[9]),
        .I2(b[0]),
        .I3(a[8]),
        .I4(b[1]),
        .I5(a[10]),
        .O(\alu_out[30]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_17 
       (.I0(a[15]),
        .I1(a[17]),
        .I2(b[0]),
        .I3(a[16]),
        .I4(b[1]),
        .I5(a[18]),
        .O(\alu_out[30]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_18 
       (.I0(a[23]),
        .I1(a[25]),
        .I2(b[0]),
        .I3(a[24]),
        .I4(b[1]),
        .I5(a[26]),
        .O(\alu_out[30]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \alu_out[30]_INST_0_i_2 
       (.I0(\alu_out[30]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(b[30]),
        .I3(a[30]),
        .I4(alu_ctrl[0]),
        .O(\alu_out[30]_INST_0_i_2_n_0 ));
  MUXF7 \alu_out[30]_INST_0_i_3 
       (.I0(\alu_out[30]_INST_0_i_5_n_0 ),
        .I1(\alu_out[30]_INST_0_i_6_n_0 ),
        .O(\alu_out[30]_INST_0_i_3_n_0 ),
        .S(alu_ctrl[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \alu_out[30]_INST_0_i_4 
       (.I0(a[31]),
        .I1(\alu_out[30]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[30]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .O(\alu_out[30]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[30]_INST_0_i_5 
       (.I0(data1[30]),
        .I1(alu_ctrl[0]),
        .I2(data0[30]),
        .O(\alu_out[30]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[30]_INST_0_i_6 
       (.I0(\alu_out[30]_INST_0_i_9_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[30]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \alu_out[30]_INST_0_i_7 
       (.I0(b[4]),
        .I1(b[3]),
        .I2(b[0]),
        .I3(a[31]),
        .I4(b[1]),
        .I5(a[30]),
        .O(\alu_out[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \alu_out[30]_INST_0_i_8 
       (.I0(b[3]),
        .I1(a[31]),
        .I2(b[0]),
        .I3(a[30]),
        .I4(b[1]),
        .I5(b[4]),
        .O(\alu_out[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_9 
       (.I0(\alu_out[30]_INST_0_i_11_n_0 ),
        .I1(\alu_out[30]_INST_0_i_12_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[30]_INST_0_i_13_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[30]_INST_0_i_14_n_0 ),
        .O(\alu_out[30]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[31]_INST_0 
       (.I0(\alu_out[31]_INST_0_i_1_n_0 ),
        .I1(\alu_out[31]_INST_0_i_2_n_0 ),
        .O(alu_out[31]),
        .S(alu_ctrl[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[31]_INST_0_i_1 
       (.I0(\alu_out[31]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[2]),
        .I2(\alu_out[31]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[1]),
        .I4(\alu_out[31]_INST_0_i_5_n_0 ),
        .O(\alu_out[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_10 
       (.I0(a[12]),
        .I1(a[14]),
        .I2(b[0]),
        .I3(a[13]),
        .I4(b[1]),
        .I5(a[15]),
        .O(\alu_out[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_11 
       (.I0(a[20]),
        .I1(a[22]),
        .I2(b[0]),
        .I3(a[21]),
        .I4(b[1]),
        .I5(a[23]),
        .O(\alu_out[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_12 
       (.I0(a[28]),
        .I1(a[30]),
        .I2(b[0]),
        .I3(a[29]),
        .I4(b[1]),
        .I5(a[31]),
        .O(\alu_out[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_13 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(b[0]),
        .I3(a[1]),
        .I4(b[1]),
        .I5(a[3]),
        .O(\alu_out[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_14 
       (.I0(a[8]),
        .I1(a[10]),
        .I2(b[0]),
        .I3(a[9]),
        .I4(b[1]),
        .I5(a[11]),
        .O(\alu_out[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_15 
       (.I0(a[16]),
        .I1(a[18]),
        .I2(b[0]),
        .I3(a[17]),
        .I4(b[1]),
        .I5(a[19]),
        .O(\alu_out[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_16 
       (.I0(a[24]),
        .I1(a[26]),
        .I2(b[0]),
        .I3(a[25]),
        .I4(b[1]),
        .I5(a[27]),
        .O(\alu_out[31]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[31]_INST_0_i_2 
       (.I0(a[31]),
        .I1(b[31]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF0F0020202020)) 
    \alu_out[31]_INST_0_i_3 
       (.I0(\alu_out[31]_INST_0_i_6_n_0 ),
        .I1(b[2]),
        .I2(alu_ctrl[1]),
        .I3(b[31]),
        .I4(a[31]),
        .I5(alu_ctrl[0]),
        .O(\alu_out[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[31]_INST_0_i_4 
       (.I0(\alu_out[31]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[31]_INST_0_i_8_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[31]_INST_0_i_5 
       (.I0(data1[31]),
        .I1(alu_ctrl[0]),
        .I2(data0[31]),
        .O(\alu_out[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \alu_out[31]_INST_0_i_6 
       (.I0(b[3]),
        .I1(b[1]),
        .I2(a[31]),
        .I3(b[0]),
        .I4(b[4]),
        .O(\alu_out[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_7 
       (.I0(\alu_out[31]_INST_0_i_9_n_0 ),
        .I1(\alu_out[31]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[31]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[31]_INST_0_i_12_n_0 ),
        .O(\alu_out[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_8 
       (.I0(\alu_out[31]_INST_0_i_13_n_0 ),
        .I1(\alu_out[31]_INST_0_i_14_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[31]_INST_0_i_15_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[31]_INST_0_i_16_n_0 ),
        .O(\alu_out[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_9 
       (.I0(a[4]),
        .I1(a[6]),
        .I2(b[0]),
        .I3(a[5]),
        .I4(b[1]),
        .I5(a[7]),
        .O(\alu_out[31]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[3]_INST_0 
       (.I0(\alu_out[3]_INST_0_i_1_n_0 ),
        .I1(\alu_out[3]_INST_0_i_2_n_0 ),
        .O(alu_out[3]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[3]_INST_0_i_1 
       (.I0(\alu_out[3]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[3]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[3]_INST_0_i_5_n_0 ),
        .O(\alu_out[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[3]_INST_0_i_2 
       (.I0(b[3]),
        .I1(a[3]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[3]_INST_0_i_3 
       (.I0(\alu_out[7]_INST_0_i_6_n_0 ),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[7]_INST_0_i_7_n_0 ),
        .I3(b[2]),
        .I4(\alu_out[3]_INST_0_i_6_n_0 ),
        .O(\alu_out[3]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[3]_INST_0_i_4 
       (.I0(b[3]),
        .I1(a[3]),
        .O(\alu_out[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \alu_out[3]_INST_0_i_5 
       (.I0(b[2]),
        .I1(\alu_out[3]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(data1[3]),
        .I4(alu_ctrl[0]),
        .I5(data0[3]),
        .O(\alu_out[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_6 
       (.I0(\alu_out[27]_INST_0_i_10_n_0 ),
        .I1(\alu_out[19]_INST_0_i_11_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[11]_INST_0_i_9_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[3]_INST_0_i_8_n_0 ),
        .O(\alu_out[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[3]_INST_0_i_7 
       (.I0(b[3]),
        .I1(\alu_out[31]_INST_0_i_13_n_0 ),
        .I2(b[4]),
        .O(\alu_out[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_8 
       (.I0(a[6]),
        .I1(a[4]),
        .I2(b[0]),
        .I3(a[5]),
        .I4(b[1]),
        .I5(a[3]),
        .O(\alu_out[3]_INST_0_i_8_n_0 ));
  MUXF7 \alu_out[4]_INST_0 
       (.I0(\alu_out[4]_INST_0_i_1_n_0 ),
        .I1(\alu_out[4]_INST_0_i_2_n_0 ),
        .O(alu_out[4]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[4]_INST_0_i_1 
       (.I0(\alu_out[4]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[4]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[4]_INST_0_i_5_n_0 ),
        .O(\alu_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[4]_INST_0_i_2 
       (.I0(b[4]),
        .I1(a[4]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[4]_INST_0_i_3 
       (.I0(\alu_out[8]_INST_0_i_6_n_0 ),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[8]_INST_0_i_7_n_0 ),
        .I3(b[2]),
        .I4(\alu_out[4]_INST_0_i_6_n_0 ),
        .O(\alu_out[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[4]_INST_0_i_4 
       (.I0(b[4]),
        .I1(a[4]),
        .O(\alu_out[4]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[4]_INST_0_i_5 
       (.I0(\alu_out[4]_INST_0_i_7_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[4]),
        .I3(alu_ctrl[0]),
        .I4(data0[4]),
        .O(\alu_out[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_6 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(\alu_out[20]_INST_0_i_13_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[12]_INST_0_i_13_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[4]_INST_0_i_8_n_0 ),
        .O(\alu_out[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF040004)) 
    \alu_out[4]_INST_0_i_7 
       (.I0(b[4]),
        .I1(\alu_out[28]_INST_0_i_10_n_0 ),
        .I2(b[3]),
        .I3(b[2]),
        .I4(\alu_out[4]_INST_0_i_9_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_8 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(b[0]),
        .I3(a[6]),
        .I4(b[1]),
        .I5(a[4]),
        .O(\alu_out[4]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \alu_out[4]_INST_0_i_9 
       (.I0(b[3]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[0]),
        .I4(b[4]),
        .O(\alu_out[4]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[5]_INST_0 
       (.I0(\alu_out[5]_INST_0_i_1_n_0 ),
        .I1(\alu_out[5]_INST_0_i_2_n_0 ),
        .O(alu_out[5]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[5]_INST_0_i_1 
       (.I0(\alu_out[5]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[5]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[5]_INST_0_i_5_n_0 ),
        .O(\alu_out[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[5]_INST_0_i_2 
       (.I0(a[5]),
        .I1(b[5]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_3 
       (.I0(\alu_out[9]_INST_0_i_6_n_0 ),
        .I1(\alu_out[5]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[9]_INST_0_i_7_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[5]_INST_0_i_7_n_0 ),
        .O(\alu_out[5]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[5]_INST_0_i_4 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\alu_out[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[5]_INST_0_i_5 
       (.I0(\alu_out[5]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[5]),
        .I3(alu_ctrl[0]),
        .I4(data0[5]),
        .O(\alu_out[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_6 
       (.I0(\alu_out[21]_INST_0_i_13_n_0 ),
        .I1(\alu_out[21]_INST_0_i_14_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[13]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[5]_INST_0_i_9_n_0 ),
        .O(\alu_out[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_7 
       (.I0(\alu_out[21]_INST_0_i_15_n_0 ),
        .I1(\alu_out[21]_INST_0_i_14_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[13]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[5]_INST_0_i_9_n_0 ),
        .O(\alu_out[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF040004)) 
    \alu_out[5]_INST_0_i_8 
       (.I0(b[4]),
        .I1(\alu_out[29]_INST_0_i_11_n_0 ),
        .I2(b[3]),
        .I3(b[2]),
        .I4(\alu_out[1]_INST_0_i_7_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_9 
       (.I0(a[8]),
        .I1(a[6]),
        .I2(b[0]),
        .I3(a[7]),
        .I4(b[1]),
        .I5(a[5]),
        .O(\alu_out[5]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[6]_INST_0 
       (.I0(\alu_out[6]_INST_0_i_1_n_0 ),
        .I1(\alu_out[6]_INST_0_i_2_n_0 ),
        .O(alu_out[6]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[6]_INST_0_i_1 
       (.I0(\alu_out[6]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[6]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[6]_INST_0_i_5_n_0 ),
        .O(\alu_out[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[6]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_3 
       (.I0(\alu_out[10]_INST_0_i_6_n_0 ),
        .I1(\alu_out[6]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[10]_INST_0_i_7_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[6]_INST_0_i_7_n_0 ),
        .O(\alu_out[6]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[6]_INST_0_i_4 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\alu_out[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[6]_INST_0_i_5 
       (.I0(\alu_out[6]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[6]),
        .I3(alu_ctrl[0]),
        .I4(data0[6]),
        .O(\alu_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_6 
       (.I0(\alu_out[22]_INST_0_i_11_n_0 ),
        .I1(\alu_out[22]_INST_0_i_12_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[14]_INST_0_i_12_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[6]_INST_0_i_9_n_0 ),
        .O(\alu_out[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_7 
       (.I0(\alu_out[22]_INST_0_i_13_n_0 ),
        .I1(\alu_out[22]_INST_0_i_12_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[14]_INST_0_i_12_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[6]_INST_0_i_9_n_0 ),
        .O(\alu_out[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055040004)) 
    \alu_out[6]_INST_0_i_8 
       (.I0(b[4]),
        .I1(\alu_out[30]_INST_0_i_11_n_0 ),
        .I2(b[3]),
        .I3(b[2]),
        .I4(\alu_out[22]_INST_0_i_14_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_9 
       (.I0(a[9]),
        .I1(a[7]),
        .I2(b[0]),
        .I3(a[8]),
        .I4(b[1]),
        .I5(a[6]),
        .O(\alu_out[6]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[7]_INST_0 
       (.I0(\alu_out[7]_INST_0_i_1_n_0 ),
        .I1(\alu_out[7]_INST_0_i_2_n_0 ),
        .O(alu_out[7]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[7]_INST_0_i_1 
       (.I0(\alu_out[7]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[7]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[7]_INST_0_i_5_n_0 ),
        .O(\alu_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[7]_INST_0_i_10 
       (.I0(b[1]),
        .I1(a[31]),
        .I2(b[0]),
        .O(\alu_out[7]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[7]_INST_0_i_2 
       (.I0(a[7]),
        .I1(b[7]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_3 
       (.I0(\alu_out[11]_INST_0_i_6_n_0 ),
        .I1(\alu_out[7]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[11]_INST_0_i_7_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[7]_INST_0_i_7_n_0 ),
        .O(\alu_out[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[7]_INST_0_i_4 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\alu_out[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[7]_INST_0_i_5 
       (.I0(\alu_out[7]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[7]),
        .I3(alu_ctrl[0]),
        .I4(data0[7]),
        .O(\alu_out[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_6 
       (.I0(a[31]),
        .I1(\alu_out[23]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[15]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[7]_INST_0_i_9_n_0 ),
        .O(\alu_out[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_7 
       (.I0(\alu_out[7]_INST_0_i_10_n_0 ),
        .I1(\alu_out[23]_INST_0_i_10_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[15]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[7]_INST_0_i_9_n_0 ),
        .O(\alu_out[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000005040004)) 
    \alu_out[7]_INST_0_i_8 
       (.I0(b[4]),
        .I1(\alu_out[31]_INST_0_i_9_n_0 ),
        .I2(b[3]),
        .I3(b[2]),
        .I4(\alu_out[31]_INST_0_i_13_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_9 
       (.I0(a[10]),
        .I1(a[8]),
        .I2(b[0]),
        .I3(a[9]),
        .I4(b[1]),
        .I5(a[7]),
        .O(\alu_out[7]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[8]_INST_0 
       (.I0(\alu_out[8]_INST_0_i_1_n_0 ),
        .I1(\alu_out[8]_INST_0_i_2_n_0 ),
        .O(alu_out[8]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[8]_INST_0_i_1 
       (.I0(\alu_out[8]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[8]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[8]_INST_0_i_5_n_0 ),
        .O(\alu_out[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[8]_INST_0_i_2 
       (.I0(a[8]),
        .I1(b[8]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_3 
       (.I0(\alu_out[12]_INST_0_i_9_n_0 ),
        .I1(\alu_out[8]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[12]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[8]_INST_0_i_7_n_0 ),
        .O(\alu_out[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\alu_out[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[8]_INST_0_i_5 
       (.I0(\alu_out[8]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[8]),
        .I3(alu_ctrl[0]),
        .I4(data0[8]),
        .O(\alu_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_6 
       (.I0(a[31]),
        .I1(\alu_out[24]_INST_0_i_9_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[16]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[8]_INST_0_i_9_n_0 ),
        .O(\alu_out[8]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[8]_INST_0_i_7 
       (.I0(\alu_out[24]_INST_0_i_9_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[16]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[8]_INST_0_i_9_n_0 ),
        .O(\alu_out[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \alu_out[8]_INST_0_i_8 
       (.I0(\alu_out[28]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[28]_INST_0_i_15_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[28]_INST_0_i_14_n_0 ),
        .I5(b[4]),
        .O(\alu_out[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_9 
       (.I0(a[11]),
        .I1(a[9]),
        .I2(b[0]),
        .I3(a[10]),
        .I4(b[1]),
        .I5(a[8]),
        .O(\alu_out[8]_INST_0_i_9_n_0 ));
  MUXF7 \alu_out[9]_INST_0 
       (.I0(\alu_out[9]_INST_0_i_1_n_0 ),
        .I1(\alu_out[9]_INST_0_i_2_n_0 ),
        .O(alu_out[9]),
        .S(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[9]_INST_0_i_1 
       (.I0(\alu_out[9]_INST_0_i_3_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[9]_INST_0_i_4_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[9]_INST_0_i_5_n_0 ),
        .O(\alu_out[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000C8E)) 
    \alu_out[9]_INST_0_i_2 
       (.I0(a[9]),
        .I1(b[9]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_3 
       (.I0(\alu_out[13]_INST_0_i_8_n_0 ),
        .I1(\alu_out[9]_INST_0_i_6_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[13]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\alu_out[9]_INST_0_i_7_n_0 ),
        .O(\alu_out[9]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[9]_INST_0_i_4 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\alu_out[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[9]_INST_0_i_5 
       (.I0(\alu_out[9]_INST_0_i_8_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(data1[9]),
        .I3(alu_ctrl[0]),
        .I4(data0[9]),
        .O(\alu_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_6 
       (.I0(a[31]),
        .I1(\alu_out[25]_INST_0_i_9_n_0 ),
        .I2(b[4]),
        .I3(\alu_out[17]_INST_0_i_11_n_0 ),
        .I4(b[3]),
        .I5(\alu_out[9]_INST_0_i_9_n_0 ),
        .O(\alu_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[9]_INST_0_i_7 
       (.I0(\alu_out[25]_INST_0_i_9_n_0 ),
        .I1(b[4]),
        .I2(\alu_out[17]_INST_0_i_11_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[9]_INST_0_i_9_n_0 ),
        .O(\alu_out[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \alu_out[9]_INST_0_i_8 
       (.I0(\alu_out[29]_INST_0_i_11_n_0 ),
        .I1(b[2]),
        .I2(\alu_out[29]_INST_0_i_16_n_0 ),
        .I3(b[3]),
        .I4(\alu_out[29]_INST_0_i_15_n_0 ),
        .I5(b[4]),
        .O(\alu_out[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_9 
       (.I0(a[12]),
        .I1(a[10]),
        .I2(b[0]),
        .I3(a[11]),
        .I4(b[1]),
        .I5(a[9]),
        .O(\alu_out[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(b[7]),
        .I1(a[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(b[6]),
        .I1(a[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(b[5]),
        .I1(a[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(a[4]),
        .I1(b[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1
       (.I0(b[11]),
        .I1(a[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(b[10]),
        .I1(a[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(b[9]),
        .I1(a[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(b[8]),
        .I1(a[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(b[15]),
        .I1(a[15]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(b[14]),
        .I1(a[14]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(b[13]),
        .I1(a[13]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(b[12]),
        .I1(a[12]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(b[19]),
        .I1(a[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(b[18]),
        .I1(a[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(b[17]),
        .I1(a[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(b[16]),
        .I1(a[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(b[23]),
        .I1(a[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(b[22]),
        .I1(a[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(b[21]),
        .I1(a[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(b[20]),
        .I1(a[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(b[27]),
        .I1(a[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(b[26]),
        .I1(a[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(b[25]),
        .I1(a[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(b[24]),
        .I1(a[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(a[31]),
        .I1(b[31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(b[30]),
        .I1(a[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(b[29]),
        .I1(a[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(b[28]),
        .I1(a[28]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry_i_1
       (.I0(a[31]),
        .I1(a[30]),
        .I2(b[30]),
        .I3(b[31]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_1__0
       (.I0(a[23]),
        .I1(b[22]),
        .I2(a[22]),
        .I3(b[23]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_1__1
       (.I0(a[15]),
        .I1(b[14]),
        .I2(a[14]),
        .I3(b[15]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_1__2
       (.I0(a[7]),
        .I1(b[6]),
        .I2(a[6]),
        .I3(b[7]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(a[3]),
        .I1(b[3]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_2
       (.I0(a[29]),
        .I1(b[28]),
        .I2(a[28]),
        .I3(b[29]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_2__0
       (.I0(a[21]),
        .I1(b[20]),
        .I2(a[20]),
        .I3(b[21]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_2__1
       (.I0(a[13]),
        .I1(b[12]),
        .I2(a[12]),
        .I3(b[13]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    i__carry_i_2__2
       (.I0(a[5]),
        .I1(b[5]),
        .I2(a[4]),
        .I3(b[4]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(a[2]),
        .I1(b[2]),
        .O(i__carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    i__carry_i_3
       (.I0(a[3]),
        .I1(b[3]),
        .I2(a[2]),
        .I3(b[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_3__0
       (.I0(a[27]),
        .I1(b[26]),
        .I2(a[26]),
        .I3(b[27]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_3__1
       (.I0(a[19]),
        .I1(b[18]),
        .I2(a[18]),
        .I3(b[19]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_3__2
       (.I0(a[11]),
        .I1(b[10]),
        .I2(a[10]),
        .I3(b[11]),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(a[1]),
        .I1(b[1]),
        .O(i__carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h4D44)) 
    i__carry_i_4
       (.I0(a[1]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_4__0
       (.I0(a[25]),
        .I1(b[24]),
        .I2(a[24]),
        .I3(b[25]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_4__1
       (.I0(a[17]),
        .I1(b[16]),
        .I2(a[16]),
        .I3(b[17]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h5D04)) 
    i__carry_i_4__2
       (.I0(a[9]),
        .I1(b[8]),
        .I2(a[8]),
        .I3(b[9]),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(a[0]),
        .I1(b[0]),
        .O(i__carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(b[31]),
        .I1(a[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(b[22]),
        .I1(a[22]),
        .I2(b[23]),
        .I3(a[23]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(b[14]),
        .I1(a[14]),
        .I2(b[15]),
        .I3(a[15]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(b[6]),
        .I1(a[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(b[4]),
        .I1(a[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(b[28]),
        .I1(a[28]),
        .I2(b[29]),
        .I3(a[29]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(b[20]),
        .I1(a[20]),
        .I2(b[21]),
        .I3(a[21]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(b[12]),
        .I1(a[12]),
        .I2(b[13]),
        .I3(a[13]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(b[2]),
        .I1(a[2]),
        .I2(b[3]),
        .I3(a[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(b[26]),
        .I1(a[26]),
        .I2(b[27]),
        .I3(a[27]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(b[18]),
        .I1(a[18]),
        .I2(b[19]),
        .I3(a[19]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(b[10]),
        .I1(a[10]),
        .I2(b[11]),
        .I3(a[11]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(b[24]),
        .I1(a[24]),
        .I2(b[25]),
        .I3(a[25]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(b[16]),
        .I1(a[16]),
        .I2(b[17]),
        .I3(a[17]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(b[8]),
        .I1(a[8]),
        .I2(b[9]),
        .I3(a[9]),
        .O(i__carry_i_8__2_n_0));
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
