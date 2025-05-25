// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:47 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ExecutionStage_0_0/EX_ExecutionStage_0_0_stub.v
// Design      : EX_ExecutionStage_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "EX_ExecutionStage_0_0,ExecutionStage,{}" *) (* CORE_GENERATION_INFO = "EX_ExecutionStage_0_0,ExecutionStage,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ExecutionStage,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ExecutionStage,Vivado 2024.2" *) 
module EX_ExecutionStage_0_0(EX_MEM_RegWrite_i, MEM_WB_RegWrite_i, 
  ID_EX_RS_i, ID_EX_RT_i, EX_MEM_RD_i, MEM_WB_RD_i, rs1_data, rs2_data, EX_MEM_i, MEM_WB_i, alu_op, 
  is_lui, funct3, funct7, alu_src, immediate_data, PC_ID_EX, ALUSrcA, is_jalr, alu_out, branch_taken, 
  branch_addr)
/* synthesis syn_black_box black_box_pad_pin="EX_MEM_RegWrite_i,MEM_WB_RegWrite_i,ID_EX_RS_i[4:0],ID_EX_RT_i[4:0],EX_MEM_RD_i[4:0],MEM_WB_RD_i[4:0],rs1_data[31:0],rs2_data[31:0],EX_MEM_i[31:0],MEM_WB_i[31:0],alu_op[1:0],is_lui,funct3[2:0],funct7[6:0],alu_src,immediate_data[31:0],PC_ID_EX[31:0],ALUSrcA,is_jalr,alu_out[31:0],branch_taken,branch_addr[31:0]" */;
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
  input [1:0]alu_op;
  input is_lui;
  input [2:0]funct3;
  input [6:0]funct7;
  input alu_src;
  input [31:0]immediate_data;
  input [31:0]PC_ID_EX;
  input ALUSrcA;
  input is_jalr;
  output [31:0]alu_out;
  output branch_taken;
  output [31:0]branch_addr;
endmodule
