// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:31 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_Control_0_0/EX_ALU_Control_0_0_stub.v
// Design      : EX_ALU_Control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "EX_ALU_Control_0_0,ALU_Control,{}" *) (* CORE_GENERATION_INFO = "EX_ALU_Control_0_0,ALU_Control,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ALU_Control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ALU_Control,Vivado 2024.2" *) 
module EX_ALU_Control_0_0(alu_op, is_lui, funct3, funct7, alu_ctrl)
/* synthesis syn_black_box black_box_pad_pin="alu_op[1:0],is_lui,funct3[2:0],funct7[6:0],alu_ctrl[3:0]" */;
  input [1:0]alu_op;
  input is_lui;
  input [2:0]funct3;
  input [6:0]funct7;
  output [3:0]alu_ctrl;
endmodule
