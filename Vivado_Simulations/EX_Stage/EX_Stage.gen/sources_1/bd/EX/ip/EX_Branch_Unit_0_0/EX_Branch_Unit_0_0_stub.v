// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:31 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_Branch_Unit_0_0/EX_Branch_Unit_0_0_stub.v
// Design      : EX_Branch_Unit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "EX_Branch_Unit_0_0,Branch_Unit,{}" *) (* CORE_GENERATION_INFO = "EX_Branch_Unit_0_0,Branch_Unit,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Branch_Unit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "Branch_Unit,Vivado 2024.2" *) 
module EX_Branch_Unit_0_0(funct3, a, b, branch_taken)
/* synthesis syn_black_box black_box_pad_pin="funct3[2:0],a[31:0],b[31:0],branch_taken" */;
  input [2:0]funct3;
  input [31:0]a;
  input [31:0]b;
  output branch_taken;
endmodule
