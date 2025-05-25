// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:36 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ForwardingUnitWithMUX_0_0/EX_ForwardingUnitWithMUX_0_0_stub.v
// Design      : EX_ForwardingUnitWithMUX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{}" *) (* CORE_GENERATION_INFO = "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ForwardingUnitWithMUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ForwardingUnitWithMUX,Vivado 2024.2" *) 
module EX_ForwardingUnitWithMUX_0_0(EX_MEM_RegWrite_i, MEM_WB_RegWrite_i, 
  ID_EX_RS_i, ID_EX_RT_i, EX_MEM_RD_i, MEM_WB_RD_i, rs1_data, rs2_data, EX_MEM_i, MEM_WB_i, 
  ForwardedDataA_o, ForwardedDataB_o)
/* synthesis syn_black_box black_box_pad_pin="EX_MEM_RegWrite_i,MEM_WB_RegWrite_i,ID_EX_RS_i[4:0],ID_EX_RT_i[4:0],EX_MEM_RD_i[4:0],MEM_WB_RD_i[4:0],rs1_data[31:0],rs2_data[31:0],EX_MEM_i[31:0],MEM_WB_i[31:0],ForwardedDataA_o[31:0],ForwardedDataB_o[31:0]" */;
  input EX_MEM_RegWrite_i;
  input MEM_WB_RegWrite_i;
  input [4:0]ID_EX_RS_i;
  input [4:0]ID_EX_RT_i;
  input [4:0]EX_MEM_RD_i;
  input [4:0]MEM_WB_RD_i;
  input [31:0]rs1_data;
  input [31:0]rs2_data;
  input [31:0]EX_MEM_i;
  input [31:0]MEM_WB_i;
  output [31:0]ForwardedDataA_o;
  output [31:0]ForwardedDataB_o;
endmodule
