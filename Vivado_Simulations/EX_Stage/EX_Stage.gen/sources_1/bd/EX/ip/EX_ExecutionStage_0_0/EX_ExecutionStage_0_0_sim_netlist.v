// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:47 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ExecutionStage_0_0/EX_ExecutionStage_0_0_sim_netlist.v
// Design      : EX_ExecutionStage_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EX_ExecutionStage_0_0,ExecutionStage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ExecutionStage,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module EX_ExecutionStage_0_0
   (EX_MEM_RegWrite_i,
    MEM_WB_RegWrite_i,
    ID_EX_RS_i,
    ID_EX_RT_i,
    EX_MEM_RD_i,
    MEM_WB_RD_i,
    rs1_data,
    rs2_data,
    EX_MEM_i,
    MEM_WB_i,
    alu_op,
    is_lui,
    funct3,
    funct7,
    alu_src,
    immediate_data,
    PC_ID_EX,
    ALUSrcA,
    is_jalr,
    alu_out,
    branch_taken,
    branch_addr);
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

  wire ALUSrcA;
  wire [4:0]EX_MEM_RD_i;
  wire EX_MEM_RegWrite_i;
  wire [31:0]EX_MEM_i;
  wire [4:0]ID_EX_RS_i;
  wire [4:0]ID_EX_RT_i;
  wire [4:0]MEM_WB_RD_i;
  wire MEM_WB_RegWrite_i;
  wire [31:0]MEM_WB_i;
  wire [31:0]PC_ID_EX;
  wire [1:0]alu_op;
  wire [31:0]alu_out;
  wire alu_src;
  wire [31:0]branch_addr;
  wire branch_taken;
  wire [2:0]funct3;
  wire [6:0]funct7;
  wire [31:0]immediate_data;
  wire is_jalr;
  wire is_lui;
  wire [31:0]rs1_data;
  wire [31:0]rs2_data;

  EX_ExecutionStage_0_0_ExecutionStage inst
       (.ALUSrcA(ALUSrcA),
        .EX_MEM_RD_i(EX_MEM_RD_i),
        .EX_MEM_RegWrite_i(EX_MEM_RegWrite_i),
        .EX_MEM_i(EX_MEM_i),
        .ID_EX_RS_i(ID_EX_RS_i),
        .ID_EX_RT_i(ID_EX_RT_i),
        .MEM_WB_RD_i(MEM_WB_RD_i),
        .MEM_WB_RegWrite_i(MEM_WB_RegWrite_i),
        .MEM_WB_i(MEM_WB_i),
        .PC_ID_EX(PC_ID_EX),
        .alu_op(alu_op),
        .alu_out(alu_out),
        .alu_src(alu_src),
        .branch_addr(branch_addr),
        .branch_taken(branch_taken),
        .funct3(funct3),
        .funct7(funct7[5]),
        .immediate_data(immediate_data),
        .is_jalr(is_jalr),
        .is_lui(is_lui),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module EX_ExecutionStage_0_0_ALU
   (branch_addr,
    alu_out,
    is_jalr,
    branch_addr0__93,
    PC_plus_4__60,
    PC_ID_EX,
    alu_op,
    funct3,
    is_lui,
    funct7,
    forwarded_rs1,
    ALUSrcA,
    immediate_data,
    forwarded_rs2,
    alu_src);
  output [30:0]branch_addr;
  output [31:0]alu_out;
  input is_jalr;
  input [30:0]branch_addr0__93;
  input [30:0]PC_plus_4__60;
  input [31:0]PC_ID_EX;
  input [1:0]alu_op;
  input [2:0]funct3;
  input is_lui;
  input [0:0]funct7;
  input [31:0]forwarded_rs1;
  input ALUSrcA;
  input [31:0]immediate_data;
  input [31:0]forwarded_rs2;
  input alu_src;

  wire ALUSrcA;
  wire [31:0]PC_ID_EX;
  wire [30:0]PC_plus_4__60;
  wire [3:0]alu_ctrl;
  wire [1:0]alu_op;
  wire [31:0]alu_out;
  wire alu_out0_carry__0_i_5_n_0;
  wire alu_out0_carry__0_i_6_n_0;
  wire alu_out0_carry__0_i_7_n_0;
  wire alu_out0_carry__0_i_8_n_0;
  wire alu_out0_carry__0_n_0;
  wire alu_out0_carry__0_n_1;
  wire alu_out0_carry__0_n_2;
  wire alu_out0_carry__0_n_3;
  wire alu_out0_carry__1_i_5_n_0;
  wire alu_out0_carry__1_i_6_n_0;
  wire alu_out0_carry__1_i_7_n_0;
  wire alu_out0_carry__1_i_8_n_0;
  wire alu_out0_carry__1_n_0;
  wire alu_out0_carry__1_n_1;
  wire alu_out0_carry__1_n_2;
  wire alu_out0_carry__1_n_3;
  wire alu_out0_carry__2_i_5_n_0;
  wire alu_out0_carry__2_i_6_n_0;
  wire alu_out0_carry__2_i_7_n_0;
  wire alu_out0_carry__2_i_8_n_0;
  wire alu_out0_carry__2_n_0;
  wire alu_out0_carry__2_n_1;
  wire alu_out0_carry__2_n_2;
  wire alu_out0_carry__2_n_3;
  wire alu_out0_carry__3_i_5_n_0;
  wire alu_out0_carry__3_i_6_n_0;
  wire alu_out0_carry__3_i_7_n_0;
  wire alu_out0_carry__3_i_8_n_0;
  wire alu_out0_carry__3_n_0;
  wire alu_out0_carry__3_n_1;
  wire alu_out0_carry__3_n_2;
  wire alu_out0_carry__3_n_3;
  wire alu_out0_carry__4_i_5_n_0;
  wire alu_out0_carry__4_i_6_n_0;
  wire alu_out0_carry__4_i_7_n_0;
  wire alu_out0_carry__4_i_8_n_0;
  wire alu_out0_carry__4_n_0;
  wire alu_out0_carry__4_n_1;
  wire alu_out0_carry__4_n_2;
  wire alu_out0_carry__4_n_3;
  wire alu_out0_carry__5_i_5_n_0;
  wire alu_out0_carry__5_i_6_n_0;
  wire alu_out0_carry__5_i_7_n_0;
  wire alu_out0_carry__5_i_8_n_0;
  wire alu_out0_carry__5_n_0;
  wire alu_out0_carry__5_n_1;
  wire alu_out0_carry__5_n_2;
  wire alu_out0_carry__5_n_3;
  wire alu_out0_carry__6_i_4_n_0;
  wire alu_out0_carry__6_i_5_n_0;
  wire alu_out0_carry__6_i_6_n_0;
  wire alu_out0_carry__6_i_7_n_0;
  wire alu_out0_carry__6_n_1;
  wire alu_out0_carry__6_n_2;
  wire alu_out0_carry__6_n_3;
  wire alu_out0_carry_i_5_n_0;
  wire alu_out0_carry_i_6_n_0;
  wire alu_out0_carry_i_7_n_0;
  wire alu_out0_carry_i_8_n_0;
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
  wire \alu_out[0]_INST_0_i_10_n_0 ;
  wire \alu_out[0]_INST_0_i_1_n_0 ;
  wire \alu_out[0]_INST_0_i_2_n_0 ;
  wire \alu_out[0]_INST_0_i_5_n_0 ;
  wire \alu_out[0]_INST_0_i_6_n_0 ;
  wire \alu_out[0]_INST_0_i_7_n_0 ;
  wire \alu_out[0]_INST_0_i_8_n_0 ;
  wire \alu_out[0]_INST_0_i_9_n_0 ;
  wire \alu_out[10]_INST_0_i_10_n_0 ;
  wire \alu_out[10]_INST_0_i_11_n_0 ;
  wire \alu_out[10]_INST_0_i_12_n_0 ;
  wire \alu_out[10]_INST_0_i_13_n_0 ;
  wire \alu_out[10]_INST_0_i_1_n_0 ;
  wire \alu_out[10]_INST_0_i_2_n_0 ;
  wire \alu_out[10]_INST_0_i_4_n_0 ;
  wire \alu_out[10]_INST_0_i_5_n_0 ;
  wire \alu_out[10]_INST_0_i_6_n_0 ;
  wire \alu_out[10]_INST_0_i_7_n_0 ;
  wire \alu_out[10]_INST_0_i_8_n_0 ;
  wire \alu_out[10]_INST_0_i_9_n_0 ;
  wire \alu_out[11]_INST_0_i_10_n_0 ;
  wire \alu_out[11]_INST_0_i_11_n_0 ;
  wire \alu_out[11]_INST_0_i_12_n_0 ;
  wire \alu_out[11]_INST_0_i_13_n_0 ;
  wire \alu_out[11]_INST_0_i_1_n_0 ;
  wire \alu_out[11]_INST_0_i_2_n_0 ;
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
  wire \alu_out[12]_INST_0_i_4_n_0 ;
  wire \alu_out[12]_INST_0_i_5_n_0 ;
  wire \alu_out[12]_INST_0_i_6_n_0 ;
  wire \alu_out[12]_INST_0_i_7_n_0 ;
  wire \alu_out[12]_INST_0_i_8_n_0 ;
  wire \alu_out[12]_INST_0_i_9_n_0 ;
  wire \alu_out[13]_INST_0_i_10_n_0 ;
  wire \alu_out[13]_INST_0_i_11_n_0 ;
  wire \alu_out[13]_INST_0_i_12_n_0 ;
  wire \alu_out[13]_INST_0_i_1_n_0 ;
  wire \alu_out[13]_INST_0_i_2_n_0 ;
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
  wire \alu_out[14]_INST_0_i_4_n_0 ;
  wire \alu_out[14]_INST_0_i_5_n_0 ;
  wire \alu_out[14]_INST_0_i_6_n_0 ;
  wire \alu_out[14]_INST_0_i_7_n_0 ;
  wire \alu_out[14]_INST_0_i_8_n_0 ;
  wire \alu_out[14]_INST_0_i_9_n_0 ;
  wire \alu_out[15]_INST_0_i_10_n_0 ;
  wire \alu_out[15]_INST_0_i_11_n_0 ;
  wire \alu_out[15]_INST_0_i_12_n_0 ;
  wire \alu_out[15]_INST_0_i_13_n_0 ;
  wire \alu_out[15]_INST_0_i_1_n_0 ;
  wire \alu_out[15]_INST_0_i_2_n_0 ;
  wire \alu_out[15]_INST_0_i_4_n_0 ;
  wire \alu_out[15]_INST_0_i_5_n_0 ;
  wire \alu_out[15]_INST_0_i_6_n_0 ;
  wire \alu_out[15]_INST_0_i_7_n_0 ;
  wire \alu_out[15]_INST_0_i_8_n_0 ;
  wire \alu_out[15]_INST_0_i_9_n_0 ;
  wire \alu_out[16]_INST_0_i_10_n_0 ;
  wire \alu_out[16]_INST_0_i_11_n_0 ;
  wire \alu_out[16]_INST_0_i_12_n_0 ;
  wire \alu_out[16]_INST_0_i_13_n_0 ;
  wire \alu_out[16]_INST_0_i_14_n_0 ;
  wire \alu_out[16]_INST_0_i_1_n_0 ;
  wire \alu_out[16]_INST_0_i_2_n_0 ;
  wire \alu_out[16]_INST_0_i_4_n_0 ;
  wire \alu_out[16]_INST_0_i_5_n_0 ;
  wire \alu_out[16]_INST_0_i_6_n_0 ;
  wire \alu_out[16]_INST_0_i_7_n_0 ;
  wire \alu_out[16]_INST_0_i_8_n_0 ;
  wire \alu_out[16]_INST_0_i_9_n_0 ;
  wire \alu_out[17]_INST_0_i_10_n_0 ;
  wire \alu_out[17]_INST_0_i_11_n_0 ;
  wire \alu_out[17]_INST_0_i_12_n_0 ;
  wire \alu_out[17]_INST_0_i_13_n_0 ;
  wire \alu_out[17]_INST_0_i_14_n_0 ;
  wire \alu_out[17]_INST_0_i_1_n_0 ;
  wire \alu_out[17]_INST_0_i_2_n_0 ;
  wire \alu_out[17]_INST_0_i_4_n_0 ;
  wire \alu_out[17]_INST_0_i_5_n_0 ;
  wire \alu_out[17]_INST_0_i_6_n_0 ;
  wire \alu_out[17]_INST_0_i_7_n_0 ;
  wire \alu_out[17]_INST_0_i_8_n_0 ;
  wire \alu_out[17]_INST_0_i_9_n_0 ;
  wire \alu_out[18]_INST_0_i_10_n_0 ;
  wire \alu_out[18]_INST_0_i_11_n_0 ;
  wire \alu_out[18]_INST_0_i_12_n_0 ;
  wire \alu_out[18]_INST_0_i_13_n_0 ;
  wire \alu_out[18]_INST_0_i_14_n_0 ;
  wire \alu_out[18]_INST_0_i_1_n_0 ;
  wire \alu_out[18]_INST_0_i_2_n_0 ;
  wire \alu_out[18]_INST_0_i_4_n_0 ;
  wire \alu_out[18]_INST_0_i_5_n_0 ;
  wire \alu_out[18]_INST_0_i_6_n_0 ;
  wire \alu_out[18]_INST_0_i_7_n_0 ;
  wire \alu_out[18]_INST_0_i_8_n_0 ;
  wire \alu_out[18]_INST_0_i_9_n_0 ;
  wire \alu_out[19]_INST_0_i_10_n_0 ;
  wire \alu_out[19]_INST_0_i_11_n_0 ;
  wire \alu_out[19]_INST_0_i_12_n_0 ;
  wire \alu_out[19]_INST_0_i_13_n_0 ;
  wire \alu_out[19]_INST_0_i_14_n_0 ;
  wire \alu_out[19]_INST_0_i_15_n_0 ;
  wire \alu_out[19]_INST_0_i_1_n_0 ;
  wire \alu_out[19]_INST_0_i_2_n_0 ;
  wire \alu_out[19]_INST_0_i_4_n_0 ;
  wire \alu_out[19]_INST_0_i_5_n_0 ;
  wire \alu_out[19]_INST_0_i_6_n_0 ;
  wire \alu_out[19]_INST_0_i_7_n_0 ;
  wire \alu_out[19]_INST_0_i_8_n_0 ;
  wire \alu_out[19]_INST_0_i_9_n_0 ;
  wire \alu_out[1]_INST_0_i_10_n_0 ;
  wire \alu_out[1]_INST_0_i_11_n_0 ;
  wire \alu_out[1]_INST_0_i_1_n_0 ;
  wire \alu_out[1]_INST_0_i_2_n_0 ;
  wire \alu_out[1]_INST_0_i_4_n_0 ;
  wire \alu_out[1]_INST_0_i_5_n_0 ;
  wire \alu_out[1]_INST_0_i_6_n_0 ;
  wire \alu_out[1]_INST_0_i_7_n_0 ;
  wire \alu_out[1]_INST_0_i_9_n_0 ;
  wire \alu_out[20]_INST_0_i_10_n_0 ;
  wire \alu_out[20]_INST_0_i_11_n_0 ;
  wire \alu_out[20]_INST_0_i_12_n_0 ;
  wire \alu_out[20]_INST_0_i_13_n_0 ;
  wire \alu_out[20]_INST_0_i_14_n_0 ;
  wire \alu_out[20]_INST_0_i_1_n_0 ;
  wire \alu_out[20]_INST_0_i_2_n_0 ;
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
  wire \alu_out[21]_INST_0_i_1_n_0 ;
  wire \alu_out[21]_INST_0_i_2_n_0 ;
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
  wire \alu_out[22]_INST_0_i_4_n_0 ;
  wire \alu_out[22]_INST_0_i_5_n_0 ;
  wire \alu_out[22]_INST_0_i_6_n_0 ;
  wire \alu_out[22]_INST_0_i_7_n_0 ;
  wire \alu_out[22]_INST_0_i_8_n_0 ;
  wire \alu_out[22]_INST_0_i_9_n_0 ;
  wire \alu_out[23]_INST_0_i_10_n_0 ;
  wire \alu_out[23]_INST_0_i_11_n_0 ;
  wire \alu_out[23]_INST_0_i_12_n_0 ;
  wire \alu_out[23]_INST_0_i_13_n_0 ;
  wire \alu_out[23]_INST_0_i_1_n_0 ;
  wire \alu_out[23]_INST_0_i_2_n_0 ;
  wire \alu_out[23]_INST_0_i_4_n_0 ;
  wire \alu_out[23]_INST_0_i_5_n_0 ;
  wire \alu_out[23]_INST_0_i_6_n_0 ;
  wire \alu_out[23]_INST_0_i_7_n_0 ;
  wire \alu_out[23]_INST_0_i_8_n_0 ;
  wire \alu_out[23]_INST_0_i_9_n_0 ;
  wire \alu_out[24]_INST_0_i_10_n_0 ;
  wire \alu_out[24]_INST_0_i_11_n_0 ;
  wire \alu_out[24]_INST_0_i_12_n_0 ;
  wire \alu_out[24]_INST_0_i_13_n_0 ;
  wire \alu_out[24]_INST_0_i_1_n_0 ;
  wire \alu_out[24]_INST_0_i_2_n_0 ;
  wire \alu_out[24]_INST_0_i_4_n_0 ;
  wire \alu_out[24]_INST_0_i_5_n_0 ;
  wire \alu_out[24]_INST_0_i_6_n_0 ;
  wire \alu_out[24]_INST_0_i_7_n_0 ;
  wire \alu_out[24]_INST_0_i_8_n_0 ;
  wire \alu_out[24]_INST_0_i_9_n_0 ;
  wire \alu_out[25]_INST_0_i_10_n_0 ;
  wire \alu_out[25]_INST_0_i_11_n_0 ;
  wire \alu_out[25]_INST_0_i_12_n_0 ;
  wire \alu_out[25]_INST_0_i_13_n_0 ;
  wire \alu_out[25]_INST_0_i_1_n_0 ;
  wire \alu_out[25]_INST_0_i_2_n_0 ;
  wire \alu_out[25]_INST_0_i_4_n_0 ;
  wire \alu_out[25]_INST_0_i_5_n_0 ;
  wire \alu_out[25]_INST_0_i_6_n_0 ;
  wire \alu_out[25]_INST_0_i_7_n_0 ;
  wire \alu_out[25]_INST_0_i_8_n_0 ;
  wire \alu_out[25]_INST_0_i_9_n_0 ;
  wire \alu_out[26]_INST_0_i_10_n_0 ;
  wire \alu_out[26]_INST_0_i_11_n_0 ;
  wire \alu_out[26]_INST_0_i_12_n_0 ;
  wire \alu_out[26]_INST_0_i_13_n_0 ;
  wire \alu_out[26]_INST_0_i_1_n_0 ;
  wire \alu_out[26]_INST_0_i_2_n_0 ;
  wire \alu_out[26]_INST_0_i_4_n_0 ;
  wire \alu_out[26]_INST_0_i_5_n_0 ;
  wire \alu_out[26]_INST_0_i_6_n_0 ;
  wire \alu_out[26]_INST_0_i_7_n_0 ;
  wire \alu_out[26]_INST_0_i_8_n_0 ;
  wire \alu_out[26]_INST_0_i_9_n_0 ;
  wire \alu_out[27]_INST_0_i_10_n_0 ;
  wire \alu_out[27]_INST_0_i_11_n_0 ;
  wire \alu_out[27]_INST_0_i_12_n_0 ;
  wire \alu_out[27]_INST_0_i_13_n_0 ;
  wire \alu_out[27]_INST_0_i_14_n_0 ;
  wire \alu_out[27]_INST_0_i_1_n_0 ;
  wire \alu_out[27]_INST_0_i_2_n_0 ;
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
  wire \alu_out[28]_INST_0_i_18_n_0 ;
  wire \alu_out[28]_INST_0_i_1_n_0 ;
  wire \alu_out[28]_INST_0_i_3_n_0 ;
  wire \alu_out[28]_INST_0_i_7_n_0 ;
  wire \alu_out[28]_INST_0_i_8_n_0 ;
  wire \alu_out[28]_INST_0_i_9_n_0 ;
  wire \alu_out[29]_INST_0_i_2_n_0 ;
  wire \alu_out[29]_INST_0_i_3_n_0 ;
  wire \alu_out[29]_INST_0_i_4_n_0 ;
  wire \alu_out[29]_INST_0_i_5_n_0 ;
  wire \alu_out[29]_INST_0_i_6_n_0 ;
  wire \alu_out[29]_INST_0_i_7_n_0 ;
  wire \alu_out[29]_INST_0_i_8_n_0 ;
  wire \alu_out[2]_INST_0_i_10_n_0 ;
  wire \alu_out[2]_INST_0_i_11_n_0 ;
  wire \alu_out[2]_INST_0_i_1_n_0 ;
  wire \alu_out[2]_INST_0_i_2_n_0 ;
  wire \alu_out[2]_INST_0_i_4_n_0 ;
  wire \alu_out[2]_INST_0_i_5_n_0 ;
  wire \alu_out[2]_INST_0_i_6_n_0 ;
  wire \alu_out[2]_INST_0_i_7_n_0 ;
  wire \alu_out[2]_INST_0_i_8_n_0 ;
  wire \alu_out[30]_INST_0_i_10_n_0 ;
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
  wire \alu_out[31]_INST_0_i_17_n_0 ;
  wire \alu_out[31]_INST_0_i_2_n_0 ;
  wire \alu_out[31]_INST_0_i_3_n_0 ;
  wire \alu_out[31]_INST_0_i_5_n_0 ;
  wire \alu_out[31]_INST_0_i_6_n_0 ;
  wire \alu_out[31]_INST_0_i_7_n_0 ;
  wire \alu_out[31]_INST_0_i_8_n_0 ;
  wire \alu_out[31]_INST_0_i_9_n_0 ;
  wire \alu_out[3]_INST_0_i_10_n_0 ;
  wire \alu_out[3]_INST_0_i_11_n_0 ;
  wire \alu_out[3]_INST_0_i_1_n_0 ;
  wire \alu_out[3]_INST_0_i_2_n_0 ;
  wire \alu_out[3]_INST_0_i_4_n_0 ;
  wire \alu_out[3]_INST_0_i_5_n_0 ;
  wire \alu_out[3]_INST_0_i_6_n_0 ;
  wire \alu_out[3]_INST_0_i_7_n_0 ;
  wire \alu_out[3]_INST_0_i_8_n_0 ;
  wire \alu_out[4]_INST_0_i_10_n_0 ;
  wire \alu_out[4]_INST_0_i_11_n_0 ;
  wire \alu_out[4]_INST_0_i_1_n_0 ;
  wire \alu_out[4]_INST_0_i_2_n_0 ;
  wire \alu_out[4]_INST_0_i_4_n_0 ;
  wire \alu_out[4]_INST_0_i_5_n_0 ;
  wire \alu_out[4]_INST_0_i_6_n_0 ;
  wire \alu_out[4]_INST_0_i_7_n_0 ;
  wire \alu_out[4]_INST_0_i_8_n_0 ;
  wire \alu_out[4]_INST_0_i_9_n_0 ;
  wire \alu_out[5]_INST_0_i_10_n_0 ;
  wire \alu_out[5]_INST_0_i_11_n_0 ;
  wire \alu_out[5]_INST_0_i_1_n_0 ;
  wire \alu_out[5]_INST_0_i_2_n_0 ;
  wire \alu_out[5]_INST_0_i_4_n_0 ;
  wire \alu_out[5]_INST_0_i_5_n_0 ;
  wire \alu_out[5]_INST_0_i_6_n_0 ;
  wire \alu_out[5]_INST_0_i_7_n_0 ;
  wire \alu_out[5]_INST_0_i_8_n_0 ;
  wire \alu_out[5]_INST_0_i_9_n_0 ;
  wire \alu_out[6]_INST_0_i_10_n_0 ;
  wire \alu_out[6]_INST_0_i_11_n_0 ;
  wire \alu_out[6]_INST_0_i_1_n_0 ;
  wire \alu_out[6]_INST_0_i_2_n_0 ;
  wire \alu_out[6]_INST_0_i_4_n_0 ;
  wire \alu_out[6]_INST_0_i_5_n_0 ;
  wire \alu_out[6]_INST_0_i_6_n_0 ;
  wire \alu_out[6]_INST_0_i_7_n_0 ;
  wire \alu_out[6]_INST_0_i_8_n_0 ;
  wire \alu_out[6]_INST_0_i_9_n_0 ;
  wire \alu_out[7]_INST_0_i_10_n_0 ;
  wire \alu_out[7]_INST_0_i_11_n_0 ;
  wire \alu_out[7]_INST_0_i_12_n_0 ;
  wire \alu_out[7]_INST_0_i_1_n_0 ;
  wire \alu_out[7]_INST_0_i_2_n_0 ;
  wire \alu_out[7]_INST_0_i_4_n_0 ;
  wire \alu_out[7]_INST_0_i_5_n_0 ;
  wire \alu_out[7]_INST_0_i_6_n_0 ;
  wire \alu_out[7]_INST_0_i_7_n_0 ;
  wire \alu_out[7]_INST_0_i_8_n_0 ;
  wire \alu_out[7]_INST_0_i_9_n_0 ;
  wire \alu_out[8]_INST_0_i_10_n_0 ;
  wire \alu_out[8]_INST_0_i_11_n_0 ;
  wire \alu_out[8]_INST_0_i_12_n_0 ;
  wire \alu_out[8]_INST_0_i_13_n_0 ;
  wire \alu_out[8]_INST_0_i_1_n_0 ;
  wire \alu_out[8]_INST_0_i_2_n_0 ;
  wire \alu_out[8]_INST_0_i_4_n_0 ;
  wire \alu_out[8]_INST_0_i_5_n_0 ;
  wire \alu_out[8]_INST_0_i_6_n_0 ;
  wire \alu_out[8]_INST_0_i_7_n_0 ;
  wire \alu_out[8]_INST_0_i_8_n_0 ;
  wire \alu_out[8]_INST_0_i_9_n_0 ;
  wire \alu_out[9]_INST_0_i_10_n_0 ;
  wire \alu_out[9]_INST_0_i_11_n_0 ;
  wire \alu_out[9]_INST_0_i_12_n_0 ;
  wire \alu_out[9]_INST_0_i_1_n_0 ;
  wire \alu_out[9]_INST_0_i_2_n_0 ;
  wire \alu_out[9]_INST_0_i_4_n_0 ;
  wire \alu_out[9]_INST_0_i_5_n_0 ;
  wire \alu_out[9]_INST_0_i_6_n_0 ;
  wire \alu_out[9]_INST_0_i_7_n_0 ;
  wire \alu_out[9]_INST_0_i_8_n_0 ;
  wire \alu_out[9]_INST_0_i_9_n_0 ;
  wire alu_src;
  wire [30:0]branch_addr;
  wire [30:0]branch_addr0__93;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [3:1]data2;
  wire data3;
  wire data4;
  wire [0:0]data6;
  wire [31:0]forwarded_rs1;
  wire [31:0]forwarded_rs2;
  wire [2:0]funct3;
  wire [0:0]funct7;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__3_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__3_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__3_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__3_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__3_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
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
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [31:0]immediate_data;
  wire is_jalr;
  wire is_lui;
  wire [30:0]operandA;
  wire [31:31]operandA__63;
  wire [30:0]operandB;
  wire [31:31]operandB__95;
  wire [31:29]raw_alu_out;
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
        .DI(operandA[3:0]),
        .O(data0[3:0]),
        .S({alu_out0_carry_i_5_n_0,alu_out0_carry_i_6_n_0,alu_out0_carry_i_7_n_0,alu_out0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__0
       (.CI(alu_out0_carry_n_0),
        .CO({alu_out0_carry__0_n_0,alu_out0_carry__0_n_1,alu_out0_carry__0_n_2,alu_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[7:4]),
        .O(data0[7:4]),
        .S({alu_out0_carry__0_i_5_n_0,alu_out0_carry__0_i_6_n_0,alu_out0_carry__0_i_7_n_0,alu_out0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__0_i_1
       (.I0(forwarded_rs1[7]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[7]),
        .I3(is_lui),
        .O(operandA[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__0_i_2
       (.I0(forwarded_rs1[6]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[6]),
        .I3(is_lui),
        .O(operandA[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__0_i_3
       (.I0(forwarded_rs1[5]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[5]),
        .I3(is_lui),
        .O(operandA[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__0_i_4
       (.I0(forwarded_rs1[4]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[4]),
        .I3(is_lui),
        .O(operandA[4]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_5
       (.I0(operandA[7]),
        .I1(operandB[7]),
        .O(alu_out0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_6
       (.I0(operandA[6]),
        .I1(operandB[6]),
        .O(alu_out0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_7
       (.I0(operandA[5]),
        .I1(operandB[5]),
        .O(alu_out0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__0_i_8
       (.I0(operandA[4]),
        .I1(operandB[4]),
        .O(alu_out0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__1
       (.CI(alu_out0_carry__0_n_0),
        .CO({alu_out0_carry__1_n_0,alu_out0_carry__1_n_1,alu_out0_carry__1_n_2,alu_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[11:8]),
        .O(data0[11:8]),
        .S({alu_out0_carry__1_i_5_n_0,alu_out0_carry__1_i_6_n_0,alu_out0_carry__1_i_7_n_0,alu_out0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__1_i_1
       (.I0(forwarded_rs1[11]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[11]),
        .I3(is_lui),
        .O(operandA[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__1_i_2
       (.I0(forwarded_rs1[10]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[10]),
        .I3(is_lui),
        .O(operandA[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__1_i_3
       (.I0(forwarded_rs1[9]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[9]),
        .I3(is_lui),
        .O(operandA[9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__1_i_4
       (.I0(forwarded_rs1[8]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[8]),
        .I3(is_lui),
        .O(operandA[8]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_5
       (.I0(operandA[11]),
        .I1(operandB[11]),
        .O(alu_out0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_6
       (.I0(operandA[10]),
        .I1(operandB[10]),
        .O(alu_out0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_7
       (.I0(operandA[9]),
        .I1(operandB[9]),
        .O(alu_out0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__1_i_8
       (.I0(operandA[8]),
        .I1(operandB[8]),
        .O(alu_out0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__2
       (.CI(alu_out0_carry__1_n_0),
        .CO({alu_out0_carry__2_n_0,alu_out0_carry__2_n_1,alu_out0_carry__2_n_2,alu_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[15:12]),
        .O(data0[15:12]),
        .S({alu_out0_carry__2_i_5_n_0,alu_out0_carry__2_i_6_n_0,alu_out0_carry__2_i_7_n_0,alu_out0_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__2_i_1
       (.I0(forwarded_rs1[15]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[15]),
        .I3(is_lui),
        .O(operandA[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__2_i_2
       (.I0(forwarded_rs1[14]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[14]),
        .I3(is_lui),
        .O(operandA[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__2_i_3
       (.I0(forwarded_rs1[13]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[13]),
        .I3(is_lui),
        .O(operandA[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__2_i_4
       (.I0(forwarded_rs1[12]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[12]),
        .I3(is_lui),
        .O(operandA[12]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_5
       (.I0(operandA[15]),
        .I1(operandB[15]),
        .O(alu_out0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_6
       (.I0(operandA[14]),
        .I1(operandB[14]),
        .O(alu_out0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_7
       (.I0(operandA[13]),
        .I1(operandB[13]),
        .O(alu_out0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__2_i_8
       (.I0(operandA[12]),
        .I1(operandB[12]),
        .O(alu_out0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__3
       (.CI(alu_out0_carry__2_n_0),
        .CO({alu_out0_carry__3_n_0,alu_out0_carry__3_n_1,alu_out0_carry__3_n_2,alu_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[19:16]),
        .O(data0[19:16]),
        .S({alu_out0_carry__3_i_5_n_0,alu_out0_carry__3_i_6_n_0,alu_out0_carry__3_i_7_n_0,alu_out0_carry__3_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__3_i_1
       (.I0(forwarded_rs1[19]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[19]),
        .I3(is_lui),
        .O(operandA[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__3_i_2
       (.I0(forwarded_rs1[18]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[18]),
        .I3(is_lui),
        .O(operandA[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__3_i_3
       (.I0(forwarded_rs1[17]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[17]),
        .I3(is_lui),
        .O(operandA[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__3_i_4
       (.I0(forwarded_rs1[16]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[16]),
        .I3(is_lui),
        .O(operandA[16]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_5
       (.I0(operandA[19]),
        .I1(operandB[19]),
        .O(alu_out0_carry__3_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_6
       (.I0(operandA[18]),
        .I1(operandB[18]),
        .O(alu_out0_carry__3_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_7
       (.I0(operandA[17]),
        .I1(operandB[17]),
        .O(alu_out0_carry__3_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__3_i_8
       (.I0(operandA[16]),
        .I1(operandB[16]),
        .O(alu_out0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__4
       (.CI(alu_out0_carry__3_n_0),
        .CO({alu_out0_carry__4_n_0,alu_out0_carry__4_n_1,alu_out0_carry__4_n_2,alu_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[23:20]),
        .O(data0[23:20]),
        .S({alu_out0_carry__4_i_5_n_0,alu_out0_carry__4_i_6_n_0,alu_out0_carry__4_i_7_n_0,alu_out0_carry__4_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__4_i_1
       (.I0(forwarded_rs1[23]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[23]),
        .I3(is_lui),
        .O(operandA[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__4_i_2
       (.I0(forwarded_rs1[22]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[22]),
        .I3(is_lui),
        .O(operandA[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__4_i_3
       (.I0(forwarded_rs1[21]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[21]),
        .I3(is_lui),
        .O(operandA[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__4_i_4
       (.I0(forwarded_rs1[20]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[20]),
        .I3(is_lui),
        .O(operandA[20]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_5
       (.I0(operandA[23]),
        .I1(operandB[23]),
        .O(alu_out0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_6
       (.I0(operandA[22]),
        .I1(operandB[22]),
        .O(alu_out0_carry__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_7
       (.I0(operandA[21]),
        .I1(operandB[21]),
        .O(alu_out0_carry__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__4_i_8
       (.I0(operandA[20]),
        .I1(operandB[20]),
        .O(alu_out0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__5
       (.CI(alu_out0_carry__4_n_0),
        .CO({alu_out0_carry__5_n_0,alu_out0_carry__5_n_1,alu_out0_carry__5_n_2,alu_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(operandA[27:24]),
        .O(data0[27:24]),
        .S({alu_out0_carry__5_i_5_n_0,alu_out0_carry__5_i_6_n_0,alu_out0_carry__5_i_7_n_0,alu_out0_carry__5_i_8_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__5_i_1
       (.I0(forwarded_rs1[27]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[27]),
        .I3(is_lui),
        .O(operandA[27]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__5_i_2
       (.I0(forwarded_rs1[26]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[26]),
        .I3(is_lui),
        .O(operandA[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__5_i_3
       (.I0(forwarded_rs1[25]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[25]),
        .I3(is_lui),
        .O(operandA[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__5_i_4
       (.I0(forwarded_rs1[24]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[24]),
        .I3(is_lui),
        .O(operandA[24]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_5
       (.I0(operandA[27]),
        .I1(operandB[27]),
        .O(alu_out0_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_6
       (.I0(operandA[26]),
        .I1(operandB[26]),
        .O(alu_out0_carry__5_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_7
       (.I0(operandA[25]),
        .I1(operandB[25]),
        .O(alu_out0_carry__5_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__5_i_8
       (.I0(operandA[24]),
        .I1(operandB[24]),
        .O(alu_out0_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 alu_out0_carry__6
       (.CI(alu_out0_carry__5_n_0),
        .CO({NLW_alu_out0_carry__6_CO_UNCONNECTED[3],alu_out0_carry__6_n_1,alu_out0_carry__6_n_2,alu_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,operandA[30:28]}),
        .O(data0[31:28]),
        .S({alu_out0_carry__6_i_4_n_0,alu_out0_carry__6_i_5_n_0,alu_out0_carry__6_i_6_n_0,alu_out0_carry__6_i_7_n_0}));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__6_i_1
       (.I0(forwarded_rs1[30]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[30]),
        .I3(is_lui),
        .O(operandA[30]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__6_i_11
       (.I0(forwarded_rs1[31]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[31]),
        .I3(is_lui),
        .O(operandA__63));
  LUT3 #(
    .INIT(8'hAC)) 
    alu_out0_carry__6_i_12
       (.I0(immediate_data[31]),
        .I1(forwarded_rs2[31]),
        .I2(alu_src),
        .O(operandB__95));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    alu_out0_carry__6_i_13
       (.I0(immediate_data[30]),
        .I1(forwarded_rs2[30]),
        .I2(alu_src),
        .O(operandB[30]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    alu_out0_carry__6_i_14
       (.I0(immediate_data[29]),
        .I1(forwarded_rs2[29]),
        .I2(alu_src),
        .O(operandB[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__6_i_2
       (.I0(forwarded_rs1[29]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[29]),
        .I3(is_lui),
        .O(operandA[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry__6_i_3
       (.I0(forwarded_rs1[28]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[28]),
        .I3(is_lui),
        .O(operandA[28]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_4
       (.I0(operandA__63),
        .I1(operandB__95),
        .O(alu_out0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_5
       (.I0(operandA[30]),
        .I1(operandB[30]),
        .O(alu_out0_carry__6_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_6
       (.I0(operandA[29]),
        .I1(operandB[29]),
        .O(alu_out0_carry__6_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry__6_i_7
       (.I0(operandA[28]),
        .I1(operandB[28]),
        .O(alu_out0_carry__6_i_7_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry_i_1
       (.I0(forwarded_rs1[3]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[3]),
        .I3(is_lui),
        .O(operandA[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry_i_2
       (.I0(forwarded_rs1[2]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[2]),
        .I3(is_lui),
        .O(operandA[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry_i_3
       (.I0(forwarded_rs1[1]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[1]),
        .I3(is_lui),
        .O(operandA[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    alu_out0_carry_i_4
       (.I0(forwarded_rs1[0]),
        .I1(ALUSrcA),
        .I2(PC_ID_EX[0]),
        .I3(is_lui),
        .O(operandA[0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_5
       (.I0(operandA[3]),
        .I1(operandB[3]),
        .O(alu_out0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_6
       (.I0(operandA[2]),
        .I1(operandB[2]),
        .O(alu_out0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_7
       (.I0(operandA[1]),
        .I1(operandB[1]),
        .O(alu_out0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out0_carry_i_8
       (.I0(operandA[0]),
        .I1(operandB[0]),
        .O(alu_out0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__0/i__carry_n_0 ,\alu_out0_inferred__0/i__carry_n_1 ,\alu_out0_inferred__0/i__carry_n_2 ,\alu_out0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(operandA[3:0]),
        .O(data1[3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__0 
       (.CI(\alu_out0_inferred__0/i__carry_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__0_n_0 ,\alu_out0_inferred__0/i__carry__0_n_1 ,\alu_out0_inferred__0/i__carry__0_n_2 ,\alu_out0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[7:4]),
        .O(data1[7:4]),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__1 
       (.CI(\alu_out0_inferred__0/i__carry__0_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__1_n_0 ,\alu_out0_inferred__0/i__carry__1_n_1 ,\alu_out0_inferred__0/i__carry__1_n_2 ,\alu_out0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[11:8]),
        .O(data1[11:8]),
        .S({i__carry__1_i_1__3_n_0,i__carry__1_i_2__3_n_0,i__carry__1_i_3__3_n_0,i__carry__1_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__2 
       (.CI(\alu_out0_inferred__0/i__carry__1_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__2_n_0 ,\alu_out0_inferred__0/i__carry__2_n_1 ,\alu_out0_inferred__0/i__carry__2_n_2 ,\alu_out0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[15:12]),
        .O(data1[15:12]),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__3_n_0,i__carry__2_i_3__3_n_0,i__carry__2_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__3 
       (.CI(\alu_out0_inferred__0/i__carry__2_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__3_n_0 ,\alu_out0_inferred__0/i__carry__3_n_1 ,\alu_out0_inferred__0/i__carry__3_n_2 ,\alu_out0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[19:16]),
        .O(data1[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__4 
       (.CI(\alu_out0_inferred__0/i__carry__3_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__4_n_0 ,\alu_out0_inferred__0/i__carry__4_n_1 ,\alu_out0_inferred__0/i__carry__4_n_2 ,\alu_out0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[23:20]),
        .O(data1[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__5 
       (.CI(\alu_out0_inferred__0/i__carry__4_n_0 ),
        .CO({\alu_out0_inferred__0/i__carry__5_n_0 ,\alu_out0_inferred__0/i__carry__5_n_1 ,\alu_out0_inferred__0/i__carry__5_n_2 ,\alu_out0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(operandA[27:24]),
        .O(data1[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \alu_out0_inferred__0/i__carry__6 
       (.CI(\alu_out0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_alu_out0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\alu_out0_inferred__0/i__carry__6_n_1 ,\alu_out0_inferred__0/i__carry__6_n_2 ,\alu_out0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,operandA[30:28]}),
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
    .INIT(16'h2F02)) 
    alu_out2_carry__0_i_1
       (.I0(operandB[14]),
        .I1(operandA[14]),
        .I2(operandA[15]),
        .I3(operandB[15]),
        .O(alu_out2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__0_i_2
       (.I0(operandB[12]),
        .I1(operandA[12]),
        .I2(operandA[13]),
        .I3(operandB[13]),
        .O(alu_out2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__0_i_3
       (.I0(operandB[10]),
        .I1(operandA[10]),
        .I2(operandA[11]),
        .I3(operandB[11]),
        .O(alu_out2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__0_i_4
       (.I0(operandB[8]),
        .I1(operandA[8]),
        .I2(operandA[9]),
        .I3(operandB[9]),
        .O(alu_out2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_5
       (.I0(operandB[14]),
        .I1(operandA[14]),
        .I2(operandB[15]),
        .I3(operandA[15]),
        .O(alu_out2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_6
       (.I0(operandB[12]),
        .I1(operandA[12]),
        .I2(operandB[13]),
        .I3(operandA[13]),
        .O(alu_out2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_7
       (.I0(operandB[10]),
        .I1(operandA[10]),
        .I2(operandB[11]),
        .I3(operandA[11]),
        .O(alu_out2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__0_i_8
       (.I0(operandB[8]),
        .I1(operandA[8]),
        .I2(operandB[9]),
        .I3(operandA[9]),
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
    .INIT(16'h2F02)) 
    alu_out2_carry__1_i_1
       (.I0(operandB[22]),
        .I1(operandA[22]),
        .I2(operandA[23]),
        .I3(operandB[23]),
        .O(alu_out2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__1_i_2
       (.I0(operandB[20]),
        .I1(operandA[20]),
        .I2(operandA[21]),
        .I3(operandB[21]),
        .O(alu_out2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__1_i_3
       (.I0(operandB[18]),
        .I1(operandA[18]),
        .I2(operandA[19]),
        .I3(operandB[19]),
        .O(alu_out2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__1_i_4
       (.I0(operandB[16]),
        .I1(operandA[16]),
        .I2(operandA[17]),
        .I3(operandB[17]),
        .O(alu_out2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_5
       (.I0(operandB[22]),
        .I1(operandA[22]),
        .I2(operandB[23]),
        .I3(operandA[23]),
        .O(alu_out2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_6
       (.I0(operandB[20]),
        .I1(operandA[20]),
        .I2(operandB[21]),
        .I3(operandA[21]),
        .O(alu_out2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_7
       (.I0(operandB[18]),
        .I1(operandA[18]),
        .I2(operandB[19]),
        .I3(operandA[19]),
        .O(alu_out2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__1_i_8
       (.I0(operandB[16]),
        .I1(operandA[16]),
        .I2(operandB[17]),
        .I3(operandA[17]),
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
    .INIT(16'h2F02)) 
    alu_out2_carry__2_i_1
       (.I0(operandB[30]),
        .I1(operandA[30]),
        .I2(operandB__95),
        .I3(operandA__63),
        .O(alu_out2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__2_i_2
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .I2(operandA[29]),
        .I3(operandB[29]),
        .O(alu_out2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__2_i_3
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .I2(operandA[27]),
        .I3(operandB[27]),
        .O(alu_out2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry__2_i_4
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .I2(operandA[25]),
        .I3(operandB[25]),
        .O(alu_out2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_5
       (.I0(operandB[30]),
        .I1(operandA[30]),
        .I2(operandB__95),
        .I3(operandA__63),
        .O(alu_out2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_6
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .I2(operandB[29]),
        .I3(operandA[29]),
        .O(alu_out2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_7
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .I2(operandB[27]),
        .I3(operandA[27]),
        .O(alu_out2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry__2_i_8
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .I2(operandB[25]),
        .I3(operandA[25]),
        .O(alu_out2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry_i_1
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .I2(operandA[7]),
        .I3(operandB[7]),
        .O(alu_out2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry_i_2
       (.I0(operandB[4]),
        .I1(operandA[4]),
        .I2(operandA[5]),
        .I3(operandB[5]),
        .O(alu_out2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry_i_3
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .I2(operandA[3]),
        .I3(operandB[3]),
        .O(alu_out2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out2_carry_i_4
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(operandA[1]),
        .I3(operandB[1]),
        .O(alu_out2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_5
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .I2(operandB[7]),
        .I3(operandA[7]),
        .O(alu_out2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_6
       (.I0(operandB[4]),
        .I1(operandA[4]),
        .I2(operandB[5]),
        .I3(operandA[5]),
        .O(alu_out2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_7
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .I2(operandB[3]),
        .I3(operandA[3]),
        .O(alu_out2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_8
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(operandB[1]),
        .I3(operandA[1]),
        .O(alu_out2_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out2_inferred__0/i__carry_n_0 ,\alu_out2_inferred__0/i__carry_n_1 ,\alu_out2_inferred__0/i__carry_n_2 ,\alu_out2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__0 
       (.CI(\alu_out2_inferred__0/i__carry_n_0 ),
        .CO({\alu_out2_inferred__0/i__carry__0_n_0 ,\alu_out2_inferred__0/i__carry__0_n_1 ,\alu_out2_inferred__0/i__carry__0_n_2 ,\alu_out2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__1 
       (.CI(\alu_out2_inferred__0/i__carry__0_n_0 ),
        .CO({\alu_out2_inferred__0/i__carry__1_n_0 ,\alu_out2_inferred__0/i__carry__1_n_1 ,\alu_out2_inferred__0/i__carry__1_n_2 ,\alu_out2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \alu_out2_inferred__0/i__carry__2 
       (.CI(\alu_out2_inferred__0/i__carry__1_n_0 ),
        .CO({data4,\alu_out2_inferred__0/i__carry__2_n_1 ,\alu_out2_inferred__0/i__carry__2_n_2 ,\alu_out2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[0]_INST_0 
       (.I0(PC_ID_EX[0]),
        .I1(\alu_out[0]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[0]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[0]));
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[0]_INST_0_i_1 
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[0]_INST_0_i_10 
       (.I0(operandA[24]),
        .I1(operandA[8]),
        .I2(operandB[3]),
        .I3(operandA[16]),
        .I4(operandB[4]),
        .I5(operandA[0]),
        .O(\alu_out[0]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[0]_INST_0_i_2 
       (.I0(data6),
        .I1(alu_ctrl[1]),
        .I2(\alu_out[0]_INST_0_i_5_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[0]_INST_0_i_6_n_0 ),
        .O(\alu_out[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[0]_INST_0_i_3 
       (.I0(immediate_data[0]),
        .I1(forwarded_rs2[0]),
        .I2(alu_src),
        .O(operandB[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[0]_INST_0_i_4 
       (.I0(\alu_out[1]_INST_0_i_7_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[0]_INST_0_i_7_n_0 ),
        .I3(operandB[1]),
        .I4(\alu_out[0]_INST_0_i_8_n_0 ),
        .O(data6));
  LUT4 #(
    .INIT(16'h6F60)) 
    \alu_out[0]_INST_0_i_5 
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(alu_ctrl[0]),
        .I3(data4),
        .O(\alu_out[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[0]_INST_0_i_6 
       (.I0(data3),
        .I1(\alu_out[0]_INST_0_i_9_n_0 ),
        .I2(alu_ctrl[1]),
        .I3(data1[0]),
        .I4(alu_ctrl[0]),
        .I5(data0[0]),
        .O(\alu_out[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[0]_INST_0_i_7 
       (.I0(\alu_out[6]_INST_0_i_11_n_0 ),
        .I1(operandB[2]),
        .I2(\alu_out[2]_INST_0_i_10_n_0 ),
        .O(\alu_out[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[0]_INST_0_i_8 
       (.I0(\alu_out[4]_INST_0_i_11_n_0 ),
        .I1(operandB[2]),
        .I2(\alu_out[0]_INST_0_i_10_n_0 ),
        .O(\alu_out[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \alu_out[0]_INST_0_i_9 
       (.I0(operandB[1]),
        .I1(operandB[3]),
        .I2(operandA[0]),
        .I3(operandB[4]),
        .I4(operandB[2]),
        .I5(operandB[0]),
        .O(\alu_out[0]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[10]_INST_0 
       (.I0(PC_plus_4__60[9]),
        .I1(\alu_out[10]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[10]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[10]_INST_0_i_1 
       (.I0(operandB[10]),
        .I1(operandA[10]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[10]_INST_0_i_10 
       (.I0(\alu_out[10]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[12]_INST_0_i_13_n_0 ),
        .O(\alu_out[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[18]),
        .I2(operandB[3]),
        .I3(operandA[26]),
        .I4(operandB[4]),
        .I5(operandA[10]),
        .O(\alu_out[10]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[10]_INST_0_i_12 
       (.I0(operandA[18]),
        .I1(operandB[3]),
        .I2(operandA[26]),
        .I3(operandB[4]),
        .I4(operandA[10]),
        .O(\alu_out[10]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[10]_INST_0_i_13 
       (.I0(operandA[3]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[7]),
        .I4(operandB[3]),
        .O(\alu_out[10]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_2 
       (.I0(\alu_out[10]_INST_0_i_4_n_0 ),
        .I1(\alu_out[10]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[10]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[10]_INST_0_i_7_n_0 ),
        .O(\alu_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[10]_INST_0_i_3 
       (.I0(immediate_data[10]),
        .I1(forwarded_rs2[10]),
        .I2(alu_src),
        .O(operandB[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_4 
       (.I0(\alu_out[11]_INST_0_i_8_n_0 ),
        .I1(\alu_out[10]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[11]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[10]_INST_0_i_9_n_0 ),
        .O(\alu_out[10]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[10]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[10]),
        .I2(operandB[10]),
        .O(\alu_out[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \alu_out[10]_INST_0_i_6 
       (.I0(\alu_out[11]_INST_0_i_10_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[11]_INST_0_i_11_n_0 ),
        .I3(operandB[0]),
        .I4(\alu_out[10]_INST_0_i_10_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[10]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[10]_INST_0_i_7 
       (.I0(data1[10]),
        .I1(alu_ctrl[0]),
        .I2(data0[10]),
        .O(\alu_out[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_8 
       (.I0(\alu_out[16]_INST_0_i_11_n_0 ),
        .I1(\alu_out[12]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[14]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[10]_INST_0_i_11_n_0 ),
        .O(\alu_out[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[10]_INST_0_i_9 
       (.I0(\alu_out[16]_INST_0_i_13_n_0 ),
        .I1(\alu_out[12]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[14]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[10]_INST_0_i_12_n_0 ),
        .O(\alu_out[10]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[11]_INST_0 
       (.I0(PC_plus_4__60[10]),
        .I1(\alu_out[11]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[11]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[11]_INST_0_i_1 
       (.I0(operandB[11]),
        .I1(operandA[11]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[11]_INST_0_i_10 
       (.I0(operandA[4]),
        .I1(operandB[2]),
        .I2(operandA[0]),
        .I3(operandB[3]),
        .I4(operandA[8]),
        .I5(operandB[4]),
        .O(\alu_out[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[11]_INST_0_i_11 
       (.I0(operandA[6]),
        .I1(operandB[2]),
        .I2(operandA[2]),
        .I3(operandB[3]),
        .I4(operandA[10]),
        .I5(operandB[4]),
        .O(\alu_out[11]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_12 
       (.I0(operandA__63),
        .I1(operandA[19]),
        .I2(operandB[3]),
        .I3(operandA[27]),
        .I4(operandB[4]),
        .I5(operandA[11]),
        .O(\alu_out[11]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[11]_INST_0_i_13 
       (.I0(operandA[19]),
        .I1(operandB[3]),
        .I2(operandA[27]),
        .I3(operandB[4]),
        .I4(operandA[11]),
        .O(\alu_out[11]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_2 
       (.I0(\alu_out[11]_INST_0_i_4_n_0 ),
        .I1(\alu_out[11]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[11]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[11]_INST_0_i_7_n_0 ),
        .O(\alu_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[11]_INST_0_i_3 
       (.I0(immediate_data[11]),
        .I1(forwarded_rs2[11]),
        .I2(alu_src),
        .O(operandB[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_4 
       (.I0(\alu_out[12]_INST_0_i_8_n_0 ),
        .I1(\alu_out[11]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[12]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[11]_INST_0_i_9_n_0 ),
        .O(\alu_out[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[11]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[11]),
        .I2(operandB[11]),
        .O(\alu_out[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \alu_out[11]_INST_0_i_6 
       (.I0(\alu_out[11]_INST_0_i_10_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[11]_INST_0_i_11_n_0 ),
        .I3(\alu_out[12]_INST_0_i_10_n_0 ),
        .I4(operandB[0]),
        .I5(alu_ctrl[0]),
        .O(\alu_out[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[11]_INST_0_i_7 
       (.I0(data1[11]),
        .I1(alu_ctrl[0]),
        .I2(data0[11]),
        .O(\alu_out[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_8 
       (.I0(\alu_out[17]_INST_0_i_11_n_0 ),
        .I1(\alu_out[13]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[15]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[11]_INST_0_i_12_n_0 ),
        .O(\alu_out[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[11]_INST_0_i_9 
       (.I0(\alu_out[17]_INST_0_i_13_n_0 ),
        .I1(\alu_out[13]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[15]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[11]_INST_0_i_13_n_0 ),
        .O(\alu_out[11]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[12]_INST_0 
       (.I0(PC_plus_4__60[11]),
        .I1(\alu_out[12]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[12]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[12]_INST_0_i_1 
       (.I0(operandB[12]),
        .I1(operandA[12]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[12]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[12]_INST_0_i_10 
       (.I0(\alu_out[12]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[14]_INST_0_i_13_n_0 ),
        .O(\alu_out[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[20]),
        .I2(operandB[3]),
        .I3(operandA[28]),
        .I4(operandB[4]),
        .I5(operandA[12]),
        .O(\alu_out[12]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[12]_INST_0_i_12 
       (.I0(operandA[20]),
        .I1(operandB[3]),
        .I2(operandA[28]),
        .I3(operandB[4]),
        .I4(operandA[12]),
        .O(\alu_out[12]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[12]_INST_0_i_13 
       (.I0(operandA[5]),
        .I1(operandB[2]),
        .I2(operandA[1]),
        .I3(operandB[3]),
        .I4(operandA[9]),
        .I5(operandB[4]),
        .O(\alu_out[12]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_2 
       (.I0(\alu_out[12]_INST_0_i_4_n_0 ),
        .I1(\alu_out[12]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[12]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[12]_INST_0_i_7_n_0 ),
        .O(\alu_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[12]_INST_0_i_3 
       (.I0(immediate_data[12]),
        .I1(forwarded_rs2[12]),
        .I2(alu_src),
        .O(operandB[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_4 
       (.I0(\alu_out[13]_INST_0_i_8_n_0 ),
        .I1(\alu_out[12]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[13]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[12]_INST_0_i_9_n_0 ),
        .O(\alu_out[12]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[12]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[12]),
        .I2(operandB[12]),
        .O(\alu_out[12]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[12]_INST_0_i_6 
       (.I0(\alu_out[13]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[12]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[12]_INST_0_i_7 
       (.I0(data1[12]),
        .I1(alu_ctrl[0]),
        .I2(data0[12]),
        .O(\alu_out[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_8 
       (.I0(\alu_out[18]_INST_0_i_11_n_0 ),
        .I1(\alu_out[14]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[16]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[12]_INST_0_i_11_n_0 ),
        .O(\alu_out[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[12]_INST_0_i_9 
       (.I0(\alu_out[18]_INST_0_i_13_n_0 ),
        .I1(\alu_out[14]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[16]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[12]_INST_0_i_12_n_0 ),
        .O(\alu_out[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[13]_INST_0 
       (.I0(PC_plus_4__60[12]),
        .I1(\alu_out[13]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[13]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[13]_INST_0_i_1 
       (.I0(operandB[13]),
        .I1(operandA[13]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[13]_INST_0_i_10 
       (.I0(\alu_out[11]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[15]_INST_0_i_13_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[19]_INST_0_i_15_n_0 ),
        .O(\alu_out[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[21]),
        .I2(operandB[3]),
        .I3(operandA[29]),
        .I4(operandB[4]),
        .I5(operandA[13]),
        .O(\alu_out[13]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[13]_INST_0_i_12 
       (.I0(operandA[21]),
        .I1(operandB[3]),
        .I2(operandA[29]),
        .I3(operandB[4]),
        .I4(operandA[13]),
        .O(\alu_out[13]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_2 
       (.I0(\alu_out[13]_INST_0_i_4_n_0 ),
        .I1(\alu_out[13]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[13]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[13]_INST_0_i_7_n_0 ),
        .O(\alu_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[13]_INST_0_i_3 
       (.I0(immediate_data[13]),
        .I1(forwarded_rs2[13]),
        .I2(alu_src),
        .O(operandB[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_4 
       (.I0(\alu_out[14]_INST_0_i_8_n_0 ),
        .I1(\alu_out[13]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[14]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[13]_INST_0_i_9_n_0 ),
        .O(\alu_out[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[13]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[13]),
        .I2(operandB[13]),
        .O(\alu_out[13]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[13]_INST_0_i_6 
       (.I0(\alu_out[14]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[13]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[13]_INST_0_i_7 
       (.I0(data1[13]),
        .I1(alu_ctrl[0]),
        .I2(data0[13]),
        .O(\alu_out[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_8 
       (.I0(\alu_out[19]_INST_0_i_12_n_0 ),
        .I1(\alu_out[15]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[17]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[13]_INST_0_i_11_n_0 ),
        .O(\alu_out[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[13]_INST_0_i_9 
       (.I0(\alu_out[19]_INST_0_i_14_n_0 ),
        .I1(\alu_out[15]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[17]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[13]_INST_0_i_12_n_0 ),
        .O(\alu_out[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[14]_INST_0 
       (.I0(PC_plus_4__60[13]),
        .I1(\alu_out[14]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[14]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[14]_INST_0_i_1 
       (.I0(operandB[14]),
        .I1(operandA[14]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[14]_INST_0_i_10 
       (.I0(\alu_out[14]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[16]_INST_0_i_14_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[20]_INST_0_i_14_n_0 ),
        .O(\alu_out[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[22]),
        .I2(operandB[3]),
        .I3(operandA[30]),
        .I4(operandB[4]),
        .I5(operandA[14]),
        .O(\alu_out[14]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[14]_INST_0_i_12 
       (.I0(operandA[22]),
        .I1(operandB[3]),
        .I2(operandA[30]),
        .I3(operandB[4]),
        .I4(operandA[14]),
        .O(\alu_out[14]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[14]_INST_0_i_13 
       (.I0(operandA[7]),
        .I1(operandB[2]),
        .I2(operandA[3]),
        .I3(operandB[3]),
        .I4(operandA[11]),
        .I5(operandB[4]),
        .O(\alu_out[14]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_2 
       (.I0(\alu_out[14]_INST_0_i_4_n_0 ),
        .I1(\alu_out[14]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[14]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[14]_INST_0_i_7_n_0 ),
        .O(\alu_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[14]_INST_0_i_3 
       (.I0(immediate_data[14]),
        .I1(forwarded_rs2[14]),
        .I2(alu_src),
        .O(operandB[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_4 
       (.I0(\alu_out[15]_INST_0_i_8_n_0 ),
        .I1(\alu_out[14]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[15]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[14]_INST_0_i_9_n_0 ),
        .O(\alu_out[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[14]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[14]),
        .I2(operandB[14]),
        .O(\alu_out[14]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[14]_INST_0_i_6 
       (.I0(\alu_out[15]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[14]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[14]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[14]_INST_0_i_7 
       (.I0(data1[14]),
        .I1(alu_ctrl[0]),
        .I2(data0[14]),
        .O(\alu_out[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_8 
       (.I0(\alu_out[20]_INST_0_i_12_n_0 ),
        .I1(\alu_out[16]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[18]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[14]_INST_0_i_11_n_0 ),
        .O(\alu_out[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[14]_INST_0_i_9 
       (.I0(\alu_out[16]_INST_0_i_12_n_0 ),
        .I1(\alu_out[16]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[18]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[14]_INST_0_i_12_n_0 ),
        .O(\alu_out[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[15]_INST_0 
       (.I0(PC_plus_4__60[14]),
        .I1(\alu_out[15]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[15]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[15]_INST_0_i_1 
       (.I0(operandB[15]),
        .I1(operandA[15]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_10 
       (.I0(\alu_out[15]_INST_0_i_13_n_0 ),
        .I1(\alu_out[19]_INST_0_i_15_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[17]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[21]_INST_0_i_14_n_0 ),
        .O(\alu_out[15]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[15]_INST_0_i_11 
       (.I0(operandA[23]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[15]),
        .O(\alu_out[15]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[15]_INST_0_i_12 
       (.I0(operandA[23]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[15]),
        .O(\alu_out[15]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[15]_INST_0_i_13 
       (.I0(operandA[0]),
        .I1(operandB[3]),
        .I2(operandA[8]),
        .I3(operandB[4]),
        .O(\alu_out[15]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_2 
       (.I0(\alu_out[15]_INST_0_i_4_n_0 ),
        .I1(\alu_out[15]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[15]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[15]_INST_0_i_7_n_0 ),
        .O(\alu_out[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[15]_INST_0_i_3 
       (.I0(immediate_data[15]),
        .I1(forwarded_rs2[15]),
        .I2(alu_src),
        .O(operandB[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_4 
       (.I0(\alu_out[16]_INST_0_i_8_n_0 ),
        .I1(\alu_out[15]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[16]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[15]_INST_0_i_9_n_0 ),
        .O(\alu_out[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[15]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[15]),
        .I2(operandB[15]),
        .O(\alu_out[15]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[15]_INST_0_i_6 
       (.I0(\alu_out[16]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[15]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[15]_INST_0_i_7 
       (.I0(data1[15]),
        .I1(alu_ctrl[0]),
        .I2(data0[15]),
        .O(\alu_out[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_8 
       (.I0(\alu_out[21]_INST_0_i_12_n_0 ),
        .I1(\alu_out[17]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[19]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[15]_INST_0_i_11_n_0 ),
        .O(\alu_out[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[15]_INST_0_i_9 
       (.I0(\alu_out[17]_INST_0_i_12_n_0 ),
        .I1(\alu_out[17]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[19]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[15]_INST_0_i_12_n_0 ),
        .O(\alu_out[15]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[16]_INST_0 
       (.I0(PC_plus_4__60[15]),
        .I1(\alu_out[16]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[16]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[16]_INST_0_i_1 
       (.I0(operandB[16]),
        .I1(operandA[16]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_10 
       (.I0(\alu_out[16]_INST_0_i_14_n_0 ),
        .I1(\alu_out[20]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[18]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[22]_INST_0_i_14_n_0 ),
        .O(\alu_out[16]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[16]_INST_0_i_11 
       (.I0(operandA[24]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[16]),
        .O(\alu_out[16]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[16]_INST_0_i_12 
       (.I0(operandA[28]),
        .I1(operandB[3]),
        .I2(operandA[20]),
        .I3(operandB[4]),
        .O(\alu_out[16]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[16]_INST_0_i_13 
       (.I0(operandA[24]),
        .I1(operandB[3]),
        .I2(operandA[16]),
        .I3(operandB[4]),
        .O(\alu_out[16]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[16]_INST_0_i_14 
       (.I0(operandA[1]),
        .I1(operandB[3]),
        .I2(operandA[9]),
        .I3(operandB[4]),
        .O(\alu_out[16]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_2 
       (.I0(\alu_out[16]_INST_0_i_4_n_0 ),
        .I1(\alu_out[16]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[16]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[16]_INST_0_i_7_n_0 ),
        .O(\alu_out[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[16]_INST_0_i_3 
       (.I0(immediate_data[16]),
        .I1(forwarded_rs2[16]),
        .I2(alu_src),
        .O(operandB[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_4 
       (.I0(\alu_out[17]_INST_0_i_8_n_0 ),
        .I1(\alu_out[16]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[17]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[16]_INST_0_i_9_n_0 ),
        .O(\alu_out[16]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[16]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[16]),
        .I2(operandB[16]),
        .O(\alu_out[16]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[16]_INST_0_i_6 
       (.I0(\alu_out[17]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[16]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[16]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[16]_INST_0_i_7 
       (.I0(data1[16]),
        .I1(alu_ctrl[0]),
        .I2(data0[16]),
        .O(\alu_out[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_8 
       (.I0(\alu_out[22]_INST_0_i_12_n_0 ),
        .I1(\alu_out[18]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[20]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[16]_INST_0_i_11_n_0 ),
        .O(\alu_out[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[16]_INST_0_i_9 
       (.I0(\alu_out[18]_INST_0_i_12_n_0 ),
        .I1(\alu_out[18]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[16]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[16]_INST_0_i_13_n_0 ),
        .O(\alu_out[16]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[17]_INST_0 
       (.I0(PC_plus_4__60[16]),
        .I1(\alu_out[17]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[17]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[17]_INST_0_i_1 
       (.I0(operandB[17]),
        .I1(operandA[17]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_10 
       (.I0(\alu_out[17]_INST_0_i_14_n_0 ),
        .I1(\alu_out[21]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[19]_INST_0_i_15_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[23]_INST_0_i_13_n_0 ),
        .O(\alu_out[17]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[17]_INST_0_i_11 
       (.I0(operandA[25]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[17]),
        .O(\alu_out[17]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[17]_INST_0_i_12 
       (.I0(operandA[29]),
        .I1(operandB[3]),
        .I2(operandA[21]),
        .I3(operandB[4]),
        .O(\alu_out[17]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[17]_INST_0_i_13 
       (.I0(operandA[25]),
        .I1(operandB[3]),
        .I2(operandA[17]),
        .I3(operandB[4]),
        .O(\alu_out[17]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[17]_INST_0_i_14 
       (.I0(operandA[2]),
        .I1(operandB[3]),
        .I2(operandA[10]),
        .I3(operandB[4]),
        .O(\alu_out[17]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_2 
       (.I0(\alu_out[17]_INST_0_i_4_n_0 ),
        .I1(\alu_out[17]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[17]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[17]_INST_0_i_7_n_0 ),
        .O(\alu_out[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[17]_INST_0_i_3 
       (.I0(immediate_data[17]),
        .I1(forwarded_rs2[17]),
        .I2(alu_src),
        .O(operandB[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_4 
       (.I0(\alu_out[18]_INST_0_i_8_n_0 ),
        .I1(\alu_out[17]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[18]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[17]_INST_0_i_9_n_0 ),
        .O(\alu_out[17]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[17]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[17]),
        .I2(operandB[17]),
        .O(\alu_out[17]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[17]_INST_0_i_6 
       (.I0(\alu_out[18]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[17]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[17]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[17]_INST_0_i_7 
       (.I0(data1[17]),
        .I1(alu_ctrl[0]),
        .I2(data0[17]),
        .O(\alu_out[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_8 
       (.I0(\alu_out[19]_INST_0_i_11_n_0 ),
        .I1(\alu_out[19]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[21]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[17]_INST_0_i_11_n_0 ),
        .O(\alu_out[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[17]_INST_0_i_9 
       (.I0(\alu_out[19]_INST_0_i_13_n_0 ),
        .I1(\alu_out[19]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[17]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[17]_INST_0_i_13_n_0 ),
        .O(\alu_out[17]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[18]_INST_0 
       (.I0(PC_plus_4__60[17]),
        .I1(\alu_out[18]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[18]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[18]_INST_0_i_1 
       (.I0(operandB[18]),
        .I1(operandA[18]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_10 
       (.I0(\alu_out[18]_INST_0_i_14_n_0 ),
        .I1(\alu_out[22]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[20]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[24]_INST_0_i_13_n_0 ),
        .O(\alu_out[18]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[18]_INST_0_i_11 
       (.I0(operandA[26]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[18]),
        .O(\alu_out[18]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[18]_INST_0_i_12 
       (.I0(operandA[30]),
        .I1(operandB[3]),
        .I2(operandA[22]),
        .I3(operandB[4]),
        .O(\alu_out[18]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[18]_INST_0_i_13 
       (.I0(operandA[26]),
        .I1(operandB[3]),
        .I2(operandA[18]),
        .I3(operandB[4]),
        .O(\alu_out[18]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[18]_INST_0_i_14 
       (.I0(operandA[3]),
        .I1(operandB[3]),
        .I2(operandA[11]),
        .I3(operandB[4]),
        .O(\alu_out[18]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_2 
       (.I0(\alu_out[18]_INST_0_i_4_n_0 ),
        .I1(\alu_out[18]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[18]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[18]_INST_0_i_7_n_0 ),
        .O(\alu_out[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[18]_INST_0_i_3 
       (.I0(immediate_data[18]),
        .I1(forwarded_rs2[18]),
        .I2(alu_src),
        .O(operandB[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_4 
       (.I0(\alu_out[19]_INST_0_i_8_n_0 ),
        .I1(\alu_out[18]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[19]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[18]_INST_0_i_9_n_0 ),
        .O(\alu_out[18]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[18]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[18]),
        .I2(operandB[18]),
        .O(\alu_out[18]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[18]_INST_0_i_6 
       (.I0(\alu_out[19]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[18]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[18]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[18]_INST_0_i_7 
       (.I0(data1[18]),
        .I1(alu_ctrl[0]),
        .I2(data0[18]),
        .O(\alu_out[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[18]_INST_0_i_8 
       (.I0(\alu_out[20]_INST_0_i_11_n_0 ),
        .I1(\alu_out[20]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[22]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[18]_INST_0_i_11_n_0 ),
        .O(\alu_out[18]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[18]_INST_0_i_9 
       (.I0(\alu_out[20]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[18]_INST_0_i_12_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[18]_INST_0_i_13_n_0 ),
        .O(\alu_out[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[19]_INST_0 
       (.I0(PC_plus_4__60[18]),
        .I1(\alu_out[19]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[19]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[19]_INST_0_i_1 
       (.I0(operandB[19]),
        .I1(operandA[19]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_10 
       (.I0(\alu_out[19]_INST_0_i_15_n_0 ),
        .I1(\alu_out[23]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[21]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[25]_INST_0_i_13_n_0 ),
        .O(\alu_out[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[19]_INST_0_i_11 
       (.I0(operandB[3]),
        .I1(operandA__63),
        .I2(operandB[4]),
        .I3(operandA[23]),
        .O(\alu_out[19]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[19]_INST_0_i_12 
       (.I0(operandA[27]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[19]),
        .O(\alu_out[19]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[19]_INST_0_i_13 
       (.I0(operandA__63),
        .I1(operandB[3]),
        .I2(operandA[23]),
        .I3(operandB[4]),
        .O(\alu_out[19]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[19]_INST_0_i_14 
       (.I0(operandA[27]),
        .I1(operandB[3]),
        .I2(operandA[19]),
        .I3(operandB[4]),
        .O(\alu_out[19]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[19]_INST_0_i_15 
       (.I0(operandA[4]),
        .I1(operandB[3]),
        .I2(operandA[12]),
        .I3(operandB[4]),
        .O(\alu_out[19]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_2 
       (.I0(\alu_out[19]_INST_0_i_4_n_0 ),
        .I1(\alu_out[19]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[19]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[19]_INST_0_i_7_n_0 ),
        .O(\alu_out[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[19]_INST_0_i_3 
       (.I0(immediate_data[19]),
        .I1(forwarded_rs2[19]),
        .I2(alu_src),
        .O(operandB[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_4 
       (.I0(\alu_out[20]_INST_0_i_8_n_0 ),
        .I1(\alu_out[19]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[20]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[19]_INST_0_i_9_n_0 ),
        .O(\alu_out[19]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[19]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[19]),
        .I2(operandB[19]),
        .O(\alu_out[19]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[19]_INST_0_i_6 
       (.I0(\alu_out[20]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[19]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[19]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[19]_INST_0_i_7 
       (.I0(data1[19]),
        .I1(alu_ctrl[0]),
        .I2(data0[19]),
        .O(\alu_out[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[19]_INST_0_i_8 
       (.I0(\alu_out[21]_INST_0_i_11_n_0 ),
        .I1(\alu_out[21]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[19]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[19]_INST_0_i_12_n_0 ),
        .O(\alu_out[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[19]_INST_0_i_9 
       (.I0(\alu_out[21]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[19]_INST_0_i_13_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[19]_INST_0_i_14_n_0 ),
        .O(\alu_out[19]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[1]_INST_0 
       (.I0(PC_plus_4__60[0]),
        .I1(\alu_out[1]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[1]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[1]_INST_0_i_1 
       (.I0(operandB[1]),
        .I1(operandA[1]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[1]_INST_0_i_10 
       (.I0(operandB[4]),
        .I1(operandA[0]),
        .I2(operandB[3]),
        .O(\alu_out[1]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \alu_out[1]_INST_0_i_11 
       (.I0(operandB[4]),
        .I1(operandA[1]),
        .I2(operandB[3]),
        .O(\alu_out[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[1]_INST_0_i_2 
       (.I0(\alu_out[1]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[1]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[1]_INST_0_i_6_n_0 ),
        .O(\alu_out[1]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[1]_INST_0_i_3 
       (.I0(immediate_data[1]),
        .I1(forwarded_rs2[1]),
        .I2(alu_src),
        .O(operandB[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \alu_out[1]_INST_0_i_4 
       (.I0(\alu_out[2]_INST_0_i_7_n_0 ),
        .I1(alu_ctrl[0]),
        .I2(\alu_out[2]_INST_0_i_8_n_0 ),
        .I3(operandB[0]),
        .I4(\alu_out[1]_INST_0_i_7_n_0 ),
        .O(\alu_out[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[1]_INST_0_i_5 
       (.I0(operandB[1]),
        .I1(operandA[1]),
        .O(\alu_out[1]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[1]_INST_0_i_6 
       (.I0(data2[1]),
        .I1(alu_ctrl[1]),
        .I2(data1[1]),
        .I3(alu_ctrl[0]),
        .I4(data0[1]),
        .O(\alu_out[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[1]_INST_0_i_7 
       (.I0(\alu_out[7]_INST_0_i_11_n_0 ),
        .I1(\alu_out[3]_INST_0_i_10_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[5]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[1]_INST_0_i_9_n_0 ),
        .O(\alu_out[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[1]_INST_0_i_8 
       (.I0(\alu_out[1]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(operandB[2]),
        .I3(\alu_out[1]_INST_0_i_11_n_0 ),
        .I4(operandB[1]),
        .O(data2[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[1]_INST_0_i_9 
       (.I0(operandA[25]),
        .I1(operandA[9]),
        .I2(operandB[3]),
        .I3(operandA[17]),
        .I4(operandB[4]),
        .I5(operandA[1]),
        .O(\alu_out[1]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[20]_INST_0 
       (.I0(PC_plus_4__60[19]),
        .I1(\alu_out[20]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[20]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[20]_INST_0_i_1 
       (.I0(operandB[20]),
        .I1(operandA[20]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_10 
       (.I0(\alu_out[20]_INST_0_i_14_n_0 ),
        .I1(\alu_out[24]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[22]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[26]_INST_0_i_13_n_0 ),
        .O(\alu_out[20]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[20]_INST_0_i_11 
       (.I0(operandB[3]),
        .I1(operandA__63),
        .I2(operandB[4]),
        .I3(operandA[24]),
        .O(\alu_out[20]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[20]_INST_0_i_12 
       (.I0(operandA[28]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[20]),
        .O(\alu_out[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[20]_INST_0_i_13 
       (.I0(operandA[24]),
        .I1(operandB[2]),
        .I2(operandA[28]),
        .I3(operandB[3]),
        .I4(operandA[20]),
        .I5(operandB[4]),
        .O(\alu_out[20]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[20]_INST_0_i_14 
       (.I0(operandA[5]),
        .I1(operandB[3]),
        .I2(operandA[13]),
        .I3(operandB[4]),
        .O(\alu_out[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_2 
       (.I0(\alu_out[20]_INST_0_i_4_n_0 ),
        .I1(\alu_out[20]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[20]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[20]_INST_0_i_7_n_0 ),
        .O(\alu_out[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[20]_INST_0_i_3 
       (.I0(immediate_data[20]),
        .I1(forwarded_rs2[20]),
        .I2(alu_src),
        .O(operandB[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_4 
       (.I0(\alu_out[21]_INST_0_i_8_n_0 ),
        .I1(\alu_out[20]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[21]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[20]_INST_0_i_9_n_0 ),
        .O(\alu_out[20]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[20]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[20]),
        .I2(operandB[20]),
        .O(\alu_out[20]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[20]_INST_0_i_6 
       (.I0(\alu_out[21]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[20]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[20]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[20]_INST_0_i_7 
       (.I0(data1[20]),
        .I1(alu_ctrl[0]),
        .I2(data0[20]),
        .O(\alu_out[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[20]_INST_0_i_8 
       (.I0(\alu_out[22]_INST_0_i_11_n_0 ),
        .I1(\alu_out[22]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[20]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[20]_INST_0_i_12_n_0 ),
        .O(\alu_out[20]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[20]_INST_0_i_9 
       (.I0(\alu_out[22]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[20]_INST_0_i_13_n_0 ),
        .O(\alu_out[20]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[21]_INST_0 
       (.I0(PC_plus_4__60[20]),
        .I1(\alu_out[21]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[21]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[21]_INST_0_i_1 
       (.I0(operandB[21]),
        .I1(operandA[21]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[21]_INST_0_i_10 
       (.I0(\alu_out[21]_INST_0_i_14_n_0 ),
        .I1(\alu_out[25]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[23]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[27]_INST_0_i_14_n_0 ),
        .O(\alu_out[21]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[21]_INST_0_i_11 
       (.I0(operandB[3]),
        .I1(operandA__63),
        .I2(operandB[4]),
        .I3(operandA[25]),
        .O(\alu_out[21]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[21]_INST_0_i_12 
       (.I0(operandA[29]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[21]),
        .O(\alu_out[21]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[21]_INST_0_i_13 
       (.I0(operandA[25]),
        .I1(operandB[2]),
        .I2(operandA[29]),
        .I3(operandB[3]),
        .I4(operandA[21]),
        .I5(operandB[4]),
        .O(\alu_out[21]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[21]_INST_0_i_14 
       (.I0(operandA[6]),
        .I1(operandB[3]),
        .I2(operandA[14]),
        .I3(operandB[4]),
        .O(\alu_out[21]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[21]_INST_0_i_2 
       (.I0(\alu_out[21]_INST_0_i_4_n_0 ),
        .I1(\alu_out[21]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[21]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[21]_INST_0_i_7_n_0 ),
        .O(\alu_out[21]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[21]_INST_0_i_3 
       (.I0(immediate_data[21]),
        .I1(forwarded_rs2[21]),
        .I2(alu_src),
        .O(operandB[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[21]_INST_0_i_4 
       (.I0(\alu_out[22]_INST_0_i_8_n_0 ),
        .I1(\alu_out[21]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[22]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[21]_INST_0_i_9_n_0 ),
        .O(\alu_out[21]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[21]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[21]),
        .I2(operandB[21]),
        .O(\alu_out[21]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[21]_INST_0_i_6 
       (.I0(\alu_out[22]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[21]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[21]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[21]_INST_0_i_7 
       (.I0(data1[21]),
        .I1(alu_ctrl[0]),
        .I2(data0[21]),
        .O(\alu_out[21]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[21]_INST_0_i_8 
       (.I0(\alu_out[23]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[21]_INST_0_i_11_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[21]_INST_0_i_12_n_0 ),
        .O(\alu_out[21]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[21]_INST_0_i_9 
       (.I0(\alu_out[23]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[21]_INST_0_i_13_n_0 ),
        .O(\alu_out[21]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[22]_INST_0 
       (.I0(PC_plus_4__60[21]),
        .I1(\alu_out[22]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[22]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[22]_INST_0_i_1 
       (.I0(operandB[22]),
        .I1(operandA[22]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[22]_INST_0_i_10 
       (.I0(\alu_out[22]_INST_0_i_14_n_0 ),
        .I1(\alu_out[26]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[24]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[28]_INST_0_i_18_n_0 ),
        .O(\alu_out[22]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \alu_out[22]_INST_0_i_11 
       (.I0(operandB[3]),
        .I1(operandA__63),
        .I2(operandB[4]),
        .I3(operandA[26]),
        .O(\alu_out[22]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \alu_out[22]_INST_0_i_12 
       (.I0(operandA[30]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[22]),
        .O(\alu_out[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[22]_INST_0_i_13 
       (.I0(operandA[26]),
        .I1(operandB[2]),
        .I2(operandA[30]),
        .I3(operandB[3]),
        .I4(operandA[22]),
        .I5(operandB[4]),
        .O(\alu_out[22]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \alu_out[22]_INST_0_i_14 
       (.I0(operandA[7]),
        .I1(operandB[3]),
        .I2(operandA[15]),
        .I3(operandB[4]),
        .O(\alu_out[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[22]_INST_0_i_2 
       (.I0(\alu_out[22]_INST_0_i_4_n_0 ),
        .I1(\alu_out[22]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[22]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[22]_INST_0_i_7_n_0 ),
        .O(\alu_out[22]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[22]_INST_0_i_3 
       (.I0(immediate_data[22]),
        .I1(forwarded_rs2[22]),
        .I2(alu_src),
        .O(operandB[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[22]_INST_0_i_4 
       (.I0(\alu_out[23]_INST_0_i_7_n_0 ),
        .I1(\alu_out[22]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[23]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[22]_INST_0_i_9_n_0 ),
        .O(\alu_out[22]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[22]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[22]),
        .I2(operandB[22]),
        .O(\alu_out[22]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[22]_INST_0_i_6 
       (.I0(\alu_out[23]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[22]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[22]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[22]_INST_0_i_7 
       (.I0(data1[22]),
        .I1(alu_ctrl[0]),
        .I2(data0[22]),
        .O(\alu_out[22]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \alu_out[22]_INST_0_i_8 
       (.I0(\alu_out[24]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[22]_INST_0_i_11_n_0 ),
        .I3(operandB[2]),
        .I4(\alu_out[22]_INST_0_i_12_n_0 ),
        .O(\alu_out[22]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[22]_INST_0_i_9 
       (.I0(\alu_out[24]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[22]_INST_0_i_13_n_0 ),
        .O(\alu_out[22]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[23]_INST_0 
       (.I0(PC_plus_4__60[22]),
        .I1(\alu_out[23]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[23]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[23]_INST_0_i_1 
       (.I0(operandB[23]),
        .I1(operandA[23]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[23]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[23]_INST_0_i_10 
       (.I0(data1[23]),
        .I1(alu_ctrl[0]),
        .I2(data0[23]),
        .O(\alu_out[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \alu_out[23]_INST_0_i_11 
       (.I0(operandA[27]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[23]),
        .O(\alu_out[23]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \alu_out[23]_INST_0_i_12 
       (.I0(operandA[27]),
        .I1(operandB[2]),
        .I2(operandA__63),
        .I3(operandB[3]),
        .I4(operandA[23]),
        .I5(operandB[4]),
        .O(\alu_out[23]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[23]_INST_0_i_13 
       (.I0(operandA[8]),
        .I1(operandB[3]),
        .I2(operandA[0]),
        .I3(operandB[4]),
        .I4(operandA[16]),
        .O(\alu_out[23]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[23]_INST_0_i_2 
       (.I0(\alu_out[23]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[23]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[23]_INST_0_i_6_n_0 ),
        .O(\alu_out[23]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[23]_INST_0_i_3 
       (.I0(immediate_data[23]),
        .I1(forwarded_rs2[23]),
        .I2(alu_src),
        .O(operandB[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[23]_INST_0_i_4 
       (.I0(\alu_out[24]_INST_0_i_7_n_0 ),
        .I1(\alu_out[23]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[24]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[23]_INST_0_i_8_n_0 ),
        .O(\alu_out[23]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[23]_INST_0_i_5 
       (.I0(operandB[23]),
        .I1(operandA[23]),
        .O(\alu_out[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[23]_INST_0_i_6 
       (.I0(\alu_out[24]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[23]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[23]_INST_0_i_10_n_0 ),
        .O(\alu_out[23]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[23]_INST_0_i_7 
       (.I0(\alu_out[25]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[23]_INST_0_i_11_n_0 ),
        .O(\alu_out[23]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[23]_INST_0_i_8 
       (.I0(\alu_out[25]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[23]_INST_0_i_12_n_0 ),
        .O(\alu_out[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[23]_INST_0_i_9 
       (.I0(\alu_out[23]_INST_0_i_13_n_0 ),
        .I1(\alu_out[27]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[25]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[29]_INST_0_i_8_n_0 ),
        .O(\alu_out[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[24]_INST_0 
       (.I0(PC_plus_4__60[23]),
        .I1(\alu_out[24]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[24]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[24]_INST_0_i_1 
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[24]_INST_0_i_10 
       (.I0(data1[24]),
        .I1(alu_ctrl[0]),
        .I2(data0[24]),
        .O(\alu_out[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \alu_out[24]_INST_0_i_11 
       (.I0(operandA[28]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[24]),
        .O(\alu_out[24]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[24]_INST_0_i_12 
       (.I0(operandA[28]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[24]),
        .I4(operandB[3]),
        .O(\alu_out[24]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[24]_INST_0_i_13 
       (.I0(operandA[9]),
        .I1(operandB[3]),
        .I2(operandA[1]),
        .I3(operandB[4]),
        .I4(operandA[17]),
        .O(\alu_out[24]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[24]_INST_0_i_2 
       (.I0(\alu_out[24]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[24]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[24]_INST_0_i_6_n_0 ),
        .O(\alu_out[24]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[24]_INST_0_i_3 
       (.I0(immediate_data[24]),
        .I1(forwarded_rs2[24]),
        .I2(alu_src),
        .O(operandB[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[24]_INST_0_i_4 
       (.I0(\alu_out[25]_INST_0_i_7_n_0 ),
        .I1(\alu_out[24]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[25]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[24]_INST_0_i_8_n_0 ),
        .O(\alu_out[24]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[24]_INST_0_i_5 
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .O(\alu_out[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[24]_INST_0_i_6 
       (.I0(\alu_out[25]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[24]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[24]_INST_0_i_10_n_0 ),
        .O(\alu_out[24]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[24]_INST_0_i_7 
       (.I0(\alu_out[26]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[24]_INST_0_i_11_n_0 ),
        .O(\alu_out[24]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[24]_INST_0_i_8 
       (.I0(\alu_out[26]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[24]_INST_0_i_12_n_0 ),
        .O(\alu_out[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[24]_INST_0_i_9 
       (.I0(\alu_out[24]_INST_0_i_13_n_0 ),
        .I1(\alu_out[28]_INST_0_i_18_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[26]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[30]_INST_0_i_10_n_0 ),
        .O(\alu_out[24]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[25]_INST_0 
       (.I0(PC_plus_4__60[24]),
        .I1(\alu_out[25]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[25]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[25]_INST_0_i_1 
       (.I0(operandB[25]),
        .I1(operandA[25]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[25]_INST_0_i_10 
       (.I0(data1[25]),
        .I1(alu_ctrl[0]),
        .I2(data0[25]),
        .O(\alu_out[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \alu_out[25]_INST_0_i_11 
       (.I0(operandA[29]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[25]),
        .O(\alu_out[25]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[25]_INST_0_i_12 
       (.I0(operandA[29]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[25]),
        .I4(operandB[3]),
        .O(\alu_out[25]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[25]_INST_0_i_13 
       (.I0(operandA[10]),
        .I1(operandB[3]),
        .I2(operandA[2]),
        .I3(operandB[4]),
        .I4(operandA[18]),
        .O(\alu_out[25]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[25]_INST_0_i_2 
       (.I0(\alu_out[25]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[25]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[25]_INST_0_i_6_n_0 ),
        .O(\alu_out[25]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[25]_INST_0_i_3 
       (.I0(immediate_data[25]),
        .I1(forwarded_rs2[25]),
        .I2(alu_src),
        .O(operandB[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[25]_INST_0_i_4 
       (.I0(\alu_out[26]_INST_0_i_7_n_0 ),
        .I1(\alu_out[25]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[26]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[25]_INST_0_i_8_n_0 ),
        .O(\alu_out[25]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[25]_INST_0_i_5 
       (.I0(operandB[25]),
        .I1(operandA[25]),
        .O(\alu_out[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[25]_INST_0_i_6 
       (.I0(\alu_out[26]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[25]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[25]_INST_0_i_10_n_0 ),
        .O(\alu_out[25]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[25]_INST_0_i_7 
       (.I0(\alu_out[27]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[25]_INST_0_i_11_n_0 ),
        .O(\alu_out[25]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[25]_INST_0_i_8 
       (.I0(\alu_out[27]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[25]_INST_0_i_12_n_0 ),
        .O(\alu_out[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[25]_INST_0_i_9 
       (.I0(\alu_out[25]_INST_0_i_13_n_0 ),
        .I1(\alu_out[29]_INST_0_i_8_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[27]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_14_n_0 ),
        .O(\alu_out[25]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[26]_INST_0 
       (.I0(PC_plus_4__60[25]),
        .I1(\alu_out[26]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[26]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[26]_INST_0_i_1 
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[26]_INST_0_i_10 
       (.I0(data1[26]),
        .I1(alu_ctrl[0]),
        .I2(data0[26]),
        .O(\alu_out[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \alu_out[26]_INST_0_i_11 
       (.I0(operandA[30]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[26]),
        .O(\alu_out[26]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[26]_INST_0_i_12 
       (.I0(operandA[30]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[26]),
        .I4(operandB[3]),
        .O(\alu_out[26]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[26]_INST_0_i_13 
       (.I0(operandA[11]),
        .I1(operandB[3]),
        .I2(operandA[3]),
        .I3(operandB[4]),
        .I4(operandA[19]),
        .O(\alu_out[26]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[26]_INST_0_i_2 
       (.I0(\alu_out[26]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[26]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[26]_INST_0_i_6_n_0 ),
        .O(\alu_out[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[26]_INST_0_i_3 
       (.I0(immediate_data[26]),
        .I1(forwarded_rs2[26]),
        .I2(alu_src),
        .O(operandB[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[26]_INST_0_i_4 
       (.I0(\alu_out[27]_INST_0_i_7_n_0 ),
        .I1(\alu_out[26]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[27]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[26]_INST_0_i_8_n_0 ),
        .O(\alu_out[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[26]_INST_0_i_5 
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .O(\alu_out[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[26]_INST_0_i_6 
       (.I0(\alu_out[27]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[26]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[26]_INST_0_i_10_n_0 ),
        .O(\alu_out[26]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[26]_INST_0_i_7 
       (.I0(\alu_out[28]_INST_0_i_17_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[26]_INST_0_i_11_n_0 ),
        .O(\alu_out[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \alu_out[26]_INST_0_i_8 
       (.I0(operandB[3]),
        .I1(operandA[28]),
        .I2(operandB[4]),
        .I3(operandB[2]),
        .I4(operandB[1]),
        .I5(\alu_out[26]_INST_0_i_12_n_0 ),
        .O(\alu_out[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[26]_INST_0_i_9 
       (.I0(\alu_out[26]_INST_0_i_13_n_0 ),
        .I1(\alu_out[30]_INST_0_i_10_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[28]_INST_0_i_18_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_10_n_0 ),
        .O(\alu_out[26]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[27]_INST_0 
       (.I0(PC_plus_4__60[26]),
        .I1(\alu_out[27]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[27]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[27]_INST_0_i_1 
       (.I0(operandB[27]),
        .I1(operandA[27]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[27]_INST_0_i_10 
       (.I0(data1[27]),
        .I1(alu_ctrl[0]),
        .I2(data0[27]),
        .O(\alu_out[27]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \alu_out[27]_INST_0_i_11 
       (.I0(operandB[2]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[29]),
        .O(\alu_out[27]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \alu_out[27]_INST_0_i_12 
       (.I0(operandB[2]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[27]),
        .O(\alu_out[27]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[27]_INST_0_i_13 
       (.I0(operandA__63),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[27]),
        .I4(operandB[3]),
        .O(\alu_out[27]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[27]_INST_0_i_14 
       (.I0(operandA[12]),
        .I1(operandB[3]),
        .I2(operandA[4]),
        .I3(operandB[4]),
        .I4(operandA[20]),
        .O(\alu_out[27]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[27]_INST_0_i_2 
       (.I0(\alu_out[27]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[27]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[27]_INST_0_i_6_n_0 ),
        .O(\alu_out[27]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[27]_INST_0_i_3 
       (.I0(immediate_data[27]),
        .I1(forwarded_rs2[27]),
        .I2(alu_src),
        .O(operandB[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[27]_INST_0_i_4 
       (.I0(\alu_out[28]_INST_0_i_11_n_0 ),
        .I1(\alu_out[27]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[28]_INST_0_i_13_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[27]_INST_0_i_8_n_0 ),
        .O(\alu_out[27]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[27]_INST_0_i_5 
       (.I0(operandB[27]),
        .I1(operandA[27]),
        .O(\alu_out[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[27]_INST_0_i_6 
       (.I0(\alu_out[28]_INST_0_i_14_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[27]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[27]_INST_0_i_10_n_0 ),
        .O(\alu_out[27]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[27]_INST_0_i_7 
       (.I0(\alu_out[27]_INST_0_i_11_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[27]_INST_0_i_12_n_0 ),
        .O(\alu_out[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \alu_out[27]_INST_0_i_8 
       (.I0(operandB[3]),
        .I1(operandA[29]),
        .I2(operandB[4]),
        .I3(operandB[2]),
        .I4(operandB[1]),
        .I5(\alu_out[27]_INST_0_i_13_n_0 ),
        .O(\alu_out[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[27]_INST_0_i_9 
       (.I0(\alu_out[27]_INST_0_i_14_n_0 ),
        .I1(\alu_out[31]_INST_0_i_14_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[29]_INST_0_i_8_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_16_n_0 ),
        .O(\alu_out[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[28]_INST_0 
       (.I0(PC_plus_4__60[27]),
        .I1(\alu_out[28]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[28]_INST_0_i_3_n_0 ),
        .I4(is_jalr),
        .O(alu_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[28]_INST_0_i_1 
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \alu_out[28]_INST_0_i_10 
       (.I0(operandB[1]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[29]),
        .O(\alu_out[28]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[28]_INST_0_i_11 
       (.I0(\alu_out[28]_INST_0_i_16_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[28]_INST_0_i_17_n_0 ),
        .O(\alu_out[28]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \alu_out[28]_INST_0_i_12 
       (.I0(operandA__63),
        .I1(operandB[1]),
        .I2(operandB[3]),
        .I3(operandA[29]),
        .I4(operandB[4]),
        .I5(operandB[2]),
        .O(\alu_out[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \alu_out[28]_INST_0_i_13 
       (.I0(operandA[30]),
        .I1(operandB[1]),
        .I2(operandB[3]),
        .I3(operandA[28]),
        .I4(operandB[4]),
        .I5(operandB[2]),
        .O(\alu_out[28]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_14 
       (.I0(\alu_out[28]_INST_0_i_18_n_0 ),
        .I1(\alu_out[31]_INST_0_i_10_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[30]_INST_0_i_10_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_12_n_0 ),
        .O(\alu_out[28]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[28]_INST_0_i_15 
       (.I0(data1[28]),
        .I1(alu_ctrl[0]),
        .I2(data0[28]),
        .O(\alu_out[28]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \alu_out[28]_INST_0_i_16 
       (.I0(operandB[2]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[30]),
        .O(\alu_out[28]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \alu_out[28]_INST_0_i_17 
       (.I0(operandB[2]),
        .I1(operandB[3]),
        .I2(operandA__63),
        .I3(operandB[4]),
        .I4(operandA[28]),
        .O(\alu_out[28]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[28]_INST_0_i_18 
       (.I0(operandA[13]),
        .I1(operandB[3]),
        .I2(operandA[5]),
        .I3(operandB[4]),
        .I4(operandA[21]),
        .O(\alu_out[28]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hAAC000C0)) 
    \alu_out[28]_INST_0_i_2 
       (.I0(alu_op[1]),
        .I1(funct3[1]),
        .I2(funct3[2]),
        .I3(alu_op[0]),
        .I4(is_lui),
        .O(alu_ctrl[3]));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[28]_INST_0_i_3 
       (.I0(\alu_out[28]_INST_0_i_7_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[28]_INST_0_i_8_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[28]_INST_0_i_9_n_0 ),
        .O(\alu_out[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[28]_INST_0_i_4 
       (.I0(immediate_data[28]),
        .I1(forwarded_rs2[28]),
        .I2(alu_src),
        .O(operandB[28]));
  LUT6 #(
    .INIT(64'h7477474674474744)) 
    \alu_out[28]_INST_0_i_5 
       (.I0(alu_op[1]),
        .I1(alu_op[0]),
        .I2(funct3[0]),
        .I3(funct3[1]),
        .I4(funct3[2]),
        .I5(funct7),
        .O(alu_ctrl[0]));
  LUT6 #(
    .INIT(64'hAAAA0C3C00000C3C)) 
    \alu_out[28]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(funct3[0]),
        .I2(funct3[1]),
        .I3(funct3[2]),
        .I4(alu_op[0]),
        .I5(is_lui),
        .O(alu_ctrl[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[28]_INST_0_i_7 
       (.I0(\alu_out[28]_INST_0_i_10_n_0 ),
        .I1(\alu_out[28]_INST_0_i_11_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[28]_INST_0_i_12_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[28]_INST_0_i_13_n_0 ),
        .O(\alu_out[28]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[28]_INST_0_i_8 
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .O(\alu_out[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[28]_INST_0_i_9 
       (.I0(\alu_out[29]_INST_0_i_6_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[28]_INST_0_i_14_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[28]_INST_0_i_15_n_0 ),
        .O(\alu_out[28]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[29]_INST_0 
       (.I0(PC_plus_4__60[28]),
        .I1(raw_alu_out[29]),
        .I2(is_jalr),
        .O(alu_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[29]_INST_0_i_1 
       (.I0(\alu_out[29]_INST_0_i_2_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[29]_INST_0_i_3_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[29]_INST_0_i_4_n_0 ),
        .O(raw_alu_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7310)) 
    \alu_out[29]_INST_0_i_2 
       (.I0(alu_ctrl[1]),
        .I1(alu_ctrl[0]),
        .I2(operandA[29]),
        .I3(operandB[29]),
        .O(\alu_out[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \alu_out[29]_INST_0_i_3 
       (.I0(\alu_out[29]_INST_0_i_5_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(operandA[29]),
        .I4(operandB[29]),
        .O(\alu_out[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[29]_INST_0_i_4 
       (.I0(\alu_out[30]_INST_0_i_6_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[29]_INST_0_i_6_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[29]_INST_0_i_7_n_0 ),
        .O(\alu_out[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_5 
       (.I0(\alu_out[30]_INST_0_i_8_n_0 ),
        .I1(\alu_out[28]_INST_0_i_10_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[30]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[28]_INST_0_i_12_n_0 ),
        .O(\alu_out[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[29]_INST_0_i_6 
       (.I0(\alu_out[29]_INST_0_i_8_n_0 ),
        .I1(\alu_out[31]_INST_0_i_16_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[31]_INST_0_i_14_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_15_n_0 ),
        .O(\alu_out[29]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[29]_INST_0_i_7 
       (.I0(data1[29]),
        .I1(alu_ctrl[0]),
        .I2(data0[29]),
        .O(\alu_out[29]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[29]_INST_0_i_8 
       (.I0(operandA[14]),
        .I1(operandB[3]),
        .I2(operandA[6]),
        .I3(operandB[4]),
        .I4(operandA[22]),
        .O(\alu_out[29]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[2]_INST_0 
       (.I0(PC_plus_4__60[1]),
        .I1(\alu_out[2]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[2]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[2]_INST_0_i_1 
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_10 
       (.I0(operandA[26]),
        .I1(operandA[10]),
        .I2(operandB[3]),
        .I3(operandA[18]),
        .I4(operandB[4]),
        .I5(operandA[2]),
        .O(\alu_out[2]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \alu_out[2]_INST_0_i_11 
       (.I0(operandB[2]),
        .I1(operandB[4]),
        .I2(operandA[1]),
        .I3(operandB[3]),
        .I4(operandB[1]),
        .O(\alu_out[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[2]_INST_0_i_2 
       (.I0(\alu_out[2]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[2]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[2]_INST_0_i_6_n_0 ),
        .O(\alu_out[2]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[2]_INST_0_i_3 
       (.I0(immediate_data[2]),
        .I1(forwarded_rs2[2]),
        .I2(alu_src),
        .O(operandB[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_4 
       (.I0(\alu_out[3]_INST_0_i_7_n_0 ),
        .I1(\alu_out[2]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[3]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[2]_INST_0_i_8_n_0 ),
        .O(\alu_out[2]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[2]_INST_0_i_5 
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .O(\alu_out[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[2]_INST_0_i_6 
       (.I0(data2[2]),
        .I1(alu_ctrl[1]),
        .I2(data1[2]),
        .I3(alu_ctrl[0]),
        .I4(data0[2]),
        .O(\alu_out[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_7 
       (.I0(\alu_out[8]_INST_0_i_11_n_0 ),
        .I1(\alu_out[4]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[6]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[2]_INST_0_i_10_n_0 ),
        .O(\alu_out[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[2]_INST_0_i_8 
       (.I0(\alu_out[8]_INST_0_i_12_n_0 ),
        .I1(\alu_out[4]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[6]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[2]_INST_0_i_10_n_0 ),
        .O(\alu_out[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[2]_INST_0_i_9 
       (.I0(\alu_out[2]_INST_0_i_11_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[3]_INST_0_i_11_n_0 ),
        .O(data2[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[30]_INST_0 
       (.I0(PC_plus_4__60[29]),
        .I1(raw_alu_out[30]),
        .I2(is_jalr),
        .O(alu_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[30]_INST_0_i_1 
       (.I0(\alu_out[30]_INST_0_i_2_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[30]_INST_0_i_3_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[30]_INST_0_i_4_n_0 ),
        .O(raw_alu_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[30]_INST_0_i_10 
       (.I0(operandA[15]),
        .I1(operandB[3]),
        .I2(operandA[7]),
        .I3(operandB[4]),
        .I4(operandA[23]),
        .O(\alu_out[30]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7310)) 
    \alu_out[30]_INST_0_i_2 
       (.I0(alu_ctrl[1]),
        .I1(alu_ctrl[0]),
        .I2(operandA[30]),
        .I3(operandB[30]),
        .O(\alu_out[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \alu_out[30]_INST_0_i_3 
       (.I0(\alu_out[30]_INST_0_i_5_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(operandA[30]),
        .I4(operandB[30]),
        .O(\alu_out[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[30]_INST_0_i_4 
       (.I0(\alu_out[31]_INST_0_i_8_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[30]_INST_0_i_6_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[30]_INST_0_i_7_n_0 ),
        .O(\alu_out[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_5 
       (.I0(operandA__63),
        .I1(\alu_out[30]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[31]_INST_0_i_6_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[30]_INST_0_i_9_n_0 ),
        .O(\alu_out[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[30]_INST_0_i_6 
       (.I0(\alu_out[30]_INST_0_i_10_n_0 ),
        .I1(\alu_out[31]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[31]_INST_0_i_10_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_11_n_0 ),
        .O(\alu_out[30]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[30]_INST_0_i_7 
       (.I0(data1[30]),
        .I1(alu_ctrl[0]),
        .I2(data0[30]),
        .O(\alu_out[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \alu_out[30]_INST_0_i_8 
       (.I0(operandB[1]),
        .I1(operandB[2]),
        .I2(operandB[3]),
        .I3(operandA__63),
        .I4(operandB[4]),
        .I5(operandA[30]),
        .O(\alu_out[30]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \alu_out[30]_INST_0_i_9 
       (.I0(operandB[2]),
        .I1(operandB[4]),
        .I2(operandA[30]),
        .I3(operandB[3]),
        .I4(operandB[1]),
        .O(\alu_out[30]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[31]_INST_0 
       (.I0(PC_plus_4__60[30]),
        .I1(raw_alu_out[31]),
        .I2(is_jalr),
        .O(alu_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[31]_INST_0_i_1 
       (.I0(\alu_out[31]_INST_0_i_2_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[31]_INST_0_i_3_n_0 ),
        .I3(alu_ctrl[2]),
        .I4(\alu_out[31]_INST_0_i_5_n_0 ),
        .O(raw_alu_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_10 
       (.I0(operandA[1]),
        .I1(operandA[17]),
        .I2(operandB[3]),
        .I3(operandA[9]),
        .I4(operandB[4]),
        .I5(operandA[25]),
        .O(\alu_out[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_11 
       (.I0(operandA[5]),
        .I1(operandA[21]),
        .I2(operandB[3]),
        .I3(operandA[13]),
        .I4(operandB[4]),
        .I5(operandA[29]),
        .O(\alu_out[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_12 
       (.I0(operandA[3]),
        .I1(operandA[19]),
        .I2(operandB[3]),
        .I3(operandA[11]),
        .I4(operandB[4]),
        .I5(operandA[27]),
        .O(\alu_out[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_13 
       (.I0(operandA[7]),
        .I1(operandA[23]),
        .I2(operandB[3]),
        .I3(operandA[15]),
        .I4(operandB[4]),
        .I5(operandA__63),
        .O(\alu_out[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_14 
       (.I0(operandA[0]),
        .I1(operandA[16]),
        .I2(operandB[3]),
        .I3(operandA[8]),
        .I4(operandB[4]),
        .I5(operandA[24]),
        .O(\alu_out[31]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_15 
       (.I0(operandA[4]),
        .I1(operandA[20]),
        .I2(operandB[3]),
        .I3(operandA[12]),
        .I4(operandB[4]),
        .I5(operandA[28]),
        .O(\alu_out[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_16 
       (.I0(operandA[2]),
        .I1(operandA[18]),
        .I2(operandB[3]),
        .I3(operandA[10]),
        .I4(operandB[4]),
        .I5(operandA[26]),
        .O(\alu_out[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_17 
       (.I0(operandA[6]),
        .I1(operandA[22]),
        .I2(operandB[3]),
        .I3(operandA[14]),
        .I4(operandB[4]),
        .I5(operandA[30]),
        .O(\alu_out[31]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7310)) 
    \alu_out[31]_INST_0_i_2 
       (.I0(alu_ctrl[1]),
        .I1(alu_ctrl[0]),
        .I2(operandA__63),
        .I3(operandB__95),
        .O(\alu_out[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0200F20FF200020)) 
    \alu_out[31]_INST_0_i_3 
       (.I0(\alu_out[31]_INST_0_i_6_n_0 ),
        .I1(operandB[0]),
        .I2(alu_ctrl[1]),
        .I3(alu_ctrl[0]),
        .I4(operandA__63),
        .I5(operandB__95),
        .O(\alu_out[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0062)) 
    \alu_out[31]_INST_0_i_4 
       (.I0(funct3[2]),
        .I1(funct3[1]),
        .I2(funct3[0]),
        .I3(alu_op[0]),
        .O(alu_ctrl[2]));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[31]_INST_0_i_5 
       (.I0(\alu_out[31]_INST_0_i_7_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[31]_INST_0_i_8_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[31]_INST_0_i_9_n_0 ),
        .O(\alu_out[31]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \alu_out[31]_INST_0_i_6 
       (.I0(operandB[2]),
        .I1(operandB[4]),
        .I2(operandA__63),
        .I3(operandB[3]),
        .I4(operandB[1]),
        .O(\alu_out[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_7 
       (.I0(\alu_out[31]_INST_0_i_10_n_0 ),
        .I1(\alu_out[31]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[31]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_13_n_0 ),
        .O(\alu_out[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[31]_INST_0_i_8 
       (.I0(\alu_out[31]_INST_0_i_14_n_0 ),
        .I1(\alu_out[31]_INST_0_i_15_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[31]_INST_0_i_16_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[31]_INST_0_i_17_n_0 ),
        .O(\alu_out[31]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[31]_INST_0_i_9 
       (.I0(data1[31]),
        .I1(alu_ctrl[0]),
        .I2(data0[31]),
        .O(\alu_out[31]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[3]_INST_0 
       (.I0(PC_plus_4__60[2]),
        .I1(\alu_out[3]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[3]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[3]_INST_0_i_1 
       (.I0(operandB[3]),
        .I1(operandA[3]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_10 
       (.I0(operandA[27]),
        .I1(operandA[11]),
        .I2(operandB[3]),
        .I3(operandA[19]),
        .I4(operandB[4]),
        .I5(operandA[3]),
        .O(\alu_out[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \alu_out[3]_INST_0_i_11 
       (.I0(operandA[0]),
        .I1(operandB[1]),
        .I2(operandB[3]),
        .I3(operandA[2]),
        .I4(operandB[4]),
        .I5(operandB[2]),
        .O(\alu_out[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[3]_INST_0_i_2 
       (.I0(\alu_out[3]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[3]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[3]_INST_0_i_6_n_0 ),
        .O(\alu_out[3]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[3]_INST_0_i_3 
       (.I0(immediate_data[3]),
        .I1(forwarded_rs2[3]),
        .I2(alu_src),
        .O(operandB[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_4 
       (.I0(\alu_out[4]_INST_0_i_8_n_0 ),
        .I1(\alu_out[3]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[4]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[3]_INST_0_i_8_n_0 ),
        .O(\alu_out[3]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[3]_INST_0_i_5 
       (.I0(operandB[3]),
        .I1(operandA[3]),
        .O(\alu_out[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[3]_INST_0_i_6 
       (.I0(data2[3]),
        .I1(alu_ctrl[1]),
        .I2(data1[3]),
        .I3(alu_ctrl[0]),
        .I4(data0[3]),
        .O(\alu_out[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_7 
       (.I0(\alu_out[9]_INST_0_i_11_n_0 ),
        .I1(\alu_out[5]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[7]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[3]_INST_0_i_10_n_0 ),
        .O(\alu_out[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[3]_INST_0_i_8 
       (.I0(\alu_out[9]_INST_0_i_12_n_0 ),
        .I1(\alu_out[5]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[7]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[3]_INST_0_i_10_n_0 ),
        .O(\alu_out[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[3]_INST_0_i_9 
       (.I0(\alu_out[3]_INST_0_i_11_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[4]_INST_0_i_10_n_0 ),
        .O(data2[3]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[4]_INST_0 
       (.I0(PC_plus_4__60[3]),
        .I1(\alu_out[4]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[4]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[4]_INST_0_i_1 
       (.I0(operandB[4]),
        .I1(operandA[4]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \alu_out[4]_INST_0_i_10 
       (.I0(operandA[1]),
        .I1(operandB[1]),
        .I2(operandB[3]),
        .I3(operandA[3]),
        .I4(operandB[4]),
        .I5(operandB[2]),
        .O(\alu_out[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_11 
       (.I0(operandA[28]),
        .I1(operandA[12]),
        .I2(operandB[3]),
        .I3(operandA[20]),
        .I4(operandB[4]),
        .I5(operandA[4]),
        .O(\alu_out[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_2 
       (.I0(\alu_out[4]_INST_0_i_4_n_0 ),
        .I1(\alu_out[4]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[4]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[4]_INST_0_i_7_n_0 ),
        .O(\alu_out[4]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[4]_INST_0_i_3 
       (.I0(immediate_data[4]),
        .I1(forwarded_rs2[4]),
        .I2(alu_src),
        .O(operandB[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_4 
       (.I0(\alu_out[5]_INST_0_i_8_n_0 ),
        .I1(\alu_out[4]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[5]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[4]_INST_0_i_9_n_0 ),
        .O(\alu_out[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[4]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[4]),
        .I2(operandB[4]),
        .O(\alu_out[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[4]_INST_0_i_6 
       (.I0(\alu_out[5]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[4]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[4]_INST_0_i_7 
       (.I0(data1[4]),
        .I1(alu_ctrl[0]),
        .I2(data0[4]),
        .O(\alu_out[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_8 
       (.I0(\alu_out[10]_INST_0_i_11_n_0 ),
        .I1(\alu_out[6]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[8]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[4]_INST_0_i_11_n_0 ),
        .O(\alu_out[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[4]_INST_0_i_9 
       (.I0(\alu_out[10]_INST_0_i_12_n_0 ),
        .I1(\alu_out[6]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[8]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[4]_INST_0_i_11_n_0 ),
        .O(\alu_out[4]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[5]_INST_0 
       (.I0(PC_plus_4__60[4]),
        .I1(\alu_out[5]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[5]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[5]_INST_0_i_1 
       (.I0(operandB[5]),
        .I1(operandA[5]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \alu_out[5]_INST_0_i_10 
       (.I0(operandB[3]),
        .I1(operandA[2]),
        .I2(operandB[4]),
        .I3(operandB[2]),
        .I4(operandB[1]),
        .I5(\alu_out[7]_INST_0_i_12_n_0 ),
        .O(\alu_out[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_11 
       (.I0(operandA[29]),
        .I1(operandA[13]),
        .I2(operandB[3]),
        .I3(operandA[21]),
        .I4(operandB[4]),
        .I5(operandA[5]),
        .O(\alu_out[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_2 
       (.I0(\alu_out[5]_INST_0_i_4_n_0 ),
        .I1(\alu_out[5]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[5]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[5]_INST_0_i_7_n_0 ),
        .O(\alu_out[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[5]_INST_0_i_3 
       (.I0(immediate_data[5]),
        .I1(forwarded_rs2[5]),
        .I2(alu_src),
        .O(operandB[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_4 
       (.I0(\alu_out[6]_INST_0_i_7_n_0 ),
        .I1(\alu_out[5]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[6]_INST_0_i_8_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[5]_INST_0_i_9_n_0 ),
        .O(\alu_out[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[5]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[5]),
        .I2(operandB[5]),
        .O(\alu_out[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[5]_INST_0_i_6 
       (.I0(\alu_out[6]_INST_0_i_9_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[5]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[5]_INST_0_i_7 
       (.I0(data1[5]),
        .I1(alu_ctrl[0]),
        .I2(data0[5]),
        .O(\alu_out[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_8 
       (.I0(\alu_out[11]_INST_0_i_12_n_0 ),
        .I1(\alu_out[7]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[9]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[5]_INST_0_i_11_n_0 ),
        .O(\alu_out[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[5]_INST_0_i_9 
       (.I0(\alu_out[11]_INST_0_i_13_n_0 ),
        .I1(\alu_out[7]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[9]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[5]_INST_0_i_11_n_0 ),
        .O(\alu_out[5]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[6]_INST_0 
       (.I0(PC_plus_4__60[5]),
        .I1(\alu_out[6]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[6]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[6]_INST_0_i_1 
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[6]_INST_0_i_10 
       (.I0(data1[6]),
        .I1(alu_ctrl[0]),
        .I2(data0[6]),
        .O(\alu_out[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_11 
       (.I0(operandA[30]),
        .I1(operandA[14]),
        .I2(operandB[3]),
        .I3(operandA[22]),
        .I4(operandB[4]),
        .I5(operandA[6]),
        .O(\alu_out[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \alu_out[6]_INST_0_i_2 
       (.I0(\alu_out[6]_INST_0_i_4_n_0 ),
        .I1(alu_ctrl[1]),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[6]_INST_0_i_5_n_0 ),
        .I4(alu_ctrl[2]),
        .I5(\alu_out[6]_INST_0_i_6_n_0 ),
        .O(\alu_out[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[6]_INST_0_i_3 
       (.I0(immediate_data[6]),
        .I1(forwarded_rs2[6]),
        .I2(alu_src),
        .O(operandB[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_4 
       (.I0(\alu_out[7]_INST_0_i_8_n_0 ),
        .I1(\alu_out[6]_INST_0_i_7_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[7]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[6]_INST_0_i_8_n_0 ),
        .O(\alu_out[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_out[6]_INST_0_i_5 
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .O(\alu_out[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \alu_out[6]_INST_0_i_6 
       (.I0(\alu_out[7]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[6]_INST_0_i_9_n_0 ),
        .I3(alu_ctrl[0]),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[6]_INST_0_i_10_n_0 ),
        .O(\alu_out[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_7 
       (.I0(\alu_out[12]_INST_0_i_11_n_0 ),
        .I1(\alu_out[8]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[10]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[6]_INST_0_i_11_n_0 ),
        .O(\alu_out[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[6]_INST_0_i_8 
       (.I0(\alu_out[12]_INST_0_i_12_n_0 ),
        .I1(\alu_out[8]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[10]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[6]_INST_0_i_11_n_0 ),
        .O(\alu_out[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \alu_out[6]_INST_0_i_9 
       (.I0(operandB[3]),
        .I1(operandA[3]),
        .I2(operandB[4]),
        .I3(operandB[2]),
        .I4(operandB[1]),
        .I5(\alu_out[8]_INST_0_i_13_n_0 ),
        .O(\alu_out[6]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[7]_INST_0 
       (.I0(PC_plus_4__60[6]),
        .I1(\alu_out[7]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[7]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[7]_INST_0_i_1 
       (.I0(operandB[7]),
        .I1(operandA[7]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[7]_INST_0_i_10 
       (.I0(\alu_out[7]_INST_0_i_12_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[9]_INST_0_i_10_n_0 ),
        .O(\alu_out[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[15]),
        .I2(operandB[3]),
        .I3(operandA[23]),
        .I4(operandB[4]),
        .I5(operandA[7]),
        .O(\alu_out[7]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[7]_INST_0_i_12 
       (.I0(operandA[0]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[4]),
        .I4(operandB[3]),
        .O(\alu_out[7]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_2 
       (.I0(\alu_out[7]_INST_0_i_4_n_0 ),
        .I1(\alu_out[7]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[7]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[7]_INST_0_i_7_n_0 ),
        .O(\alu_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[7]_INST_0_i_3 
       (.I0(immediate_data[7]),
        .I1(forwarded_rs2[7]),
        .I2(alu_src),
        .O(operandB[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_4 
       (.I0(\alu_out[8]_INST_0_i_8_n_0 ),
        .I1(\alu_out[7]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[8]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[7]_INST_0_i_9_n_0 ),
        .O(\alu_out[7]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[7]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[7]),
        .I2(operandB[7]),
        .O(\alu_out[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \alu_out[7]_INST_0_i_6 
       (.I0(\alu_out[8]_INST_0_i_10_n_0 ),
        .I1(operandB[0]),
        .I2(\alu_out[7]_INST_0_i_10_n_0 ),
        .I3(alu_ctrl[0]),
        .O(\alu_out[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[7]_INST_0_i_7 
       (.I0(data1[7]),
        .I1(alu_ctrl[0]),
        .I2(data0[7]),
        .O(\alu_out[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_8 
       (.I0(\alu_out[13]_INST_0_i_11_n_0 ),
        .I1(\alu_out[9]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[11]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[7]_INST_0_i_11_n_0 ),
        .O(\alu_out[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[7]_INST_0_i_9 
       (.I0(\alu_out[13]_INST_0_i_12_n_0 ),
        .I1(\alu_out[9]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[11]_INST_0_i_13_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[7]_INST_0_i_11_n_0 ),
        .O(\alu_out[7]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[8]_INST_0 
       (.I0(PC_plus_4__60[7]),
        .I1(\alu_out[8]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[8]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[8]_INST_0_i_1 
       (.I0(operandB[8]),
        .I1(operandA[8]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[8]_INST_0_i_10 
       (.I0(\alu_out[8]_INST_0_i_13_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[10]_INST_0_i_13_n_0 ),
        .O(\alu_out[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[16]),
        .I2(operandB[3]),
        .I3(operandA[24]),
        .I4(operandB[4]),
        .I5(operandA[8]),
        .O(\alu_out[8]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[8]_INST_0_i_12 
       (.I0(operandA[16]),
        .I1(operandB[3]),
        .I2(operandA[24]),
        .I3(operandB[4]),
        .I4(operandA[8]),
        .O(\alu_out[8]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[8]_INST_0_i_13 
       (.I0(operandA[1]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[5]),
        .I4(operandB[3]),
        .O(\alu_out[8]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_2 
       (.I0(\alu_out[8]_INST_0_i_4_n_0 ),
        .I1(\alu_out[8]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[8]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[8]_INST_0_i_7_n_0 ),
        .O(\alu_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[8]_INST_0_i_3 
       (.I0(immediate_data[8]),
        .I1(forwarded_rs2[8]),
        .I2(alu_src),
        .O(operandB[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_4 
       (.I0(\alu_out[9]_INST_0_i_8_n_0 ),
        .I1(\alu_out[8]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[9]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[8]_INST_0_i_9_n_0 ),
        .O(\alu_out[8]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[8]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[8]),
        .I2(operandB[8]),
        .O(\alu_out[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFB800B8)) 
    \alu_out[8]_INST_0_i_6 
       (.I0(\alu_out[9]_INST_0_i_10_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[11]_INST_0_i_10_n_0 ),
        .I3(operandB[0]),
        .I4(\alu_out[8]_INST_0_i_10_n_0 ),
        .I5(alu_ctrl[0]),
        .O(\alu_out[8]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[8]_INST_0_i_7 
       (.I0(data1[8]),
        .I1(alu_ctrl[0]),
        .I2(data0[8]),
        .O(\alu_out[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_8 
       (.I0(\alu_out[14]_INST_0_i_11_n_0 ),
        .I1(\alu_out[10]_INST_0_i_11_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[12]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[8]_INST_0_i_11_n_0 ),
        .O(\alu_out[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[8]_INST_0_i_9 
       (.I0(\alu_out[14]_INST_0_i_12_n_0 ),
        .I1(\alu_out[10]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[12]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[8]_INST_0_i_12_n_0 ),
        .O(\alu_out[8]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \alu_out[9]_INST_0 
       (.I0(PC_plus_4__60[8]),
        .I1(\alu_out[9]_INST_0_i_1_n_0 ),
        .I2(alu_ctrl[3]),
        .I3(\alu_out[9]_INST_0_i_2_n_0 ),
        .I4(is_jalr),
        .O(alu_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000A8E)) 
    \alu_out[9]_INST_0_i_1 
       (.I0(operandB[9]),
        .I1(operandA[9]),
        .I2(alu_ctrl[0]),
        .I3(alu_ctrl[1]),
        .I4(alu_ctrl[2]),
        .O(\alu_out[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \alu_out[9]_INST_0_i_10 
       (.I0(operandA[2]),
        .I1(operandB[2]),
        .I2(operandB[4]),
        .I3(operandA[6]),
        .I4(operandB[3]),
        .O(\alu_out[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_11 
       (.I0(operandA__63),
        .I1(operandA[17]),
        .I2(operandB[3]),
        .I3(operandA[25]),
        .I4(operandB[4]),
        .I5(operandA[9]),
        .O(\alu_out[9]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \alu_out[9]_INST_0_i_12 
       (.I0(operandA[17]),
        .I1(operandB[3]),
        .I2(operandA[25]),
        .I3(operandB[4]),
        .I4(operandA[9]),
        .O(\alu_out[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_2 
       (.I0(\alu_out[9]_INST_0_i_4_n_0 ),
        .I1(\alu_out[9]_INST_0_i_5_n_0 ),
        .I2(alu_ctrl[2]),
        .I3(\alu_out[9]_INST_0_i_6_n_0 ),
        .I4(alu_ctrl[1]),
        .I5(\alu_out[9]_INST_0_i_7_n_0 ),
        .O(\alu_out[9]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_out[9]_INST_0_i_3 
       (.I0(immediate_data[9]),
        .I1(forwarded_rs2[9]),
        .I2(alu_src),
        .O(operandB[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_4 
       (.I0(\alu_out[10]_INST_0_i_8_n_0 ),
        .I1(\alu_out[9]_INST_0_i_8_n_0 ),
        .I2(alu_ctrl[0]),
        .I3(\alu_out[10]_INST_0_i_9_n_0 ),
        .I4(operandB[0]),
        .I5(\alu_out[9]_INST_0_i_9_n_0 ),
        .O(\alu_out[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \alu_out[9]_INST_0_i_5 
       (.I0(alu_ctrl[0]),
        .I1(operandA[9]),
        .I2(operandB[9]),
        .O(\alu_out[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B8FF00)) 
    \alu_out[9]_INST_0_i_6 
       (.I0(\alu_out[9]_INST_0_i_10_n_0 ),
        .I1(operandB[1]),
        .I2(\alu_out[11]_INST_0_i_10_n_0 ),
        .I3(\alu_out[10]_INST_0_i_10_n_0 ),
        .I4(operandB[0]),
        .I5(alu_ctrl[0]),
        .O(\alu_out[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \alu_out[9]_INST_0_i_7 
       (.I0(data1[9]),
        .I1(alu_ctrl[0]),
        .I2(data0[9]),
        .O(\alu_out[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_8 
       (.I0(\alu_out[15]_INST_0_i_11_n_0 ),
        .I1(\alu_out[11]_INST_0_i_12_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[13]_INST_0_i_11_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[9]_INST_0_i_11_n_0 ),
        .O(\alu_out[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \alu_out[9]_INST_0_i_9 
       (.I0(\alu_out[15]_INST_0_i_12_n_0 ),
        .I1(\alu_out[11]_INST_0_i_13_n_0 ),
        .I2(operandB[1]),
        .I3(\alu_out[13]_INST_0_i_12_n_0 ),
        .I4(operandB[2]),
        .I5(\alu_out[9]_INST_0_i_12_n_0 ),
        .O(\alu_out[9]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[10]_INST_0 
       (.I0(\alu_out[10]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[10]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[9]),
        .O(branch_addr[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[11]_INST_0 
       (.I0(\alu_out[11]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[11]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[10]),
        .O(branch_addr[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[12]_INST_0 
       (.I0(\alu_out[12]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[12]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[11]),
        .O(branch_addr[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[13]_INST_0 
       (.I0(\alu_out[13]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[13]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[12]),
        .O(branch_addr[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[14]_INST_0 
       (.I0(\alu_out[14]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[14]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[13]),
        .O(branch_addr[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[15]_INST_0 
       (.I0(\alu_out[15]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[15]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[14]),
        .O(branch_addr[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[16]_INST_0 
       (.I0(\alu_out[16]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[16]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[15]),
        .O(branch_addr[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[17]_INST_0 
       (.I0(\alu_out[17]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[17]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[16]),
        .O(branch_addr[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[18]_INST_0 
       (.I0(\alu_out[18]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[18]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[17]),
        .O(branch_addr[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[19]_INST_0 
       (.I0(\alu_out[19]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[19]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[18]),
        .O(branch_addr[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[1]_INST_0 
       (.I0(\alu_out[1]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[1]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[0]),
        .O(branch_addr[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[20]_INST_0 
       (.I0(\alu_out[20]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[20]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[19]),
        .O(branch_addr[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[21]_INST_0 
       (.I0(\alu_out[21]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[21]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[20]),
        .O(branch_addr[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[22]_INST_0 
       (.I0(\alu_out[22]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[22]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[21]),
        .O(branch_addr[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[23]_INST_0 
       (.I0(\alu_out[23]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[23]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[22]),
        .O(branch_addr[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[24]_INST_0 
       (.I0(\alu_out[24]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[24]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[23]),
        .O(branch_addr[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[25]_INST_0 
       (.I0(\alu_out[25]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[25]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[24]),
        .O(branch_addr[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[26]_INST_0 
       (.I0(\alu_out[26]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[26]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[25]),
        .O(branch_addr[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[27]_INST_0 
       (.I0(\alu_out[27]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[27]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[26]),
        .O(branch_addr[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[28]_INST_0 
       (.I0(\alu_out[28]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[28]_INST_0_i_3_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[27]),
        .O(branch_addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \branch_addr[29]_INST_0 
       (.I0(raw_alu_out[29]),
        .I1(is_jalr),
        .I2(branch_addr0__93[28]),
        .O(branch_addr[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[2]_INST_0 
       (.I0(\alu_out[2]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[2]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[1]),
        .O(branch_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \branch_addr[30]_INST_0 
       (.I0(raw_alu_out[30]),
        .I1(is_jalr),
        .I2(branch_addr0__93[29]),
        .O(branch_addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \branch_addr[31]_INST_0 
       (.I0(raw_alu_out[31]),
        .I1(is_jalr),
        .I2(branch_addr0__93[30]),
        .O(branch_addr[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[3]_INST_0 
       (.I0(\alu_out[3]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[3]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[2]),
        .O(branch_addr[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[4]_INST_0 
       (.I0(\alu_out[4]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[4]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[3]),
        .O(branch_addr[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[5]_INST_0 
       (.I0(\alu_out[5]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[5]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[4]),
        .O(branch_addr[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[6]_INST_0 
       (.I0(\alu_out[6]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[6]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[5]),
        .O(branch_addr[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[7]_INST_0 
       (.I0(\alu_out[7]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[7]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[6]),
        .O(branch_addr[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[8]_INST_0 
       (.I0(\alu_out[8]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[8]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[7]),
        .O(branch_addr[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \branch_addr[9]_INST_0 
       (.I0(\alu_out[9]_INST_0_i_1_n_0 ),
        .I1(alu_ctrl[3]),
        .I2(\alu_out[9]_INST_0_i_2_n_0 ),
        .I3(is_jalr),
        .I4(branch_addr0__93[8]),
        .O(branch_addr[8]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(operandB[14]),
        .I1(operandA[14]),
        .I2(operandA[15]),
        .I3(operandB[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__3
       (.I0(operandA[7]),
        .I1(operandB[7]),
        .O(i__carry__0_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(operandB[12]),
        .I1(operandA[12]),
        .I2(operandA[13]),
        .I3(operandB[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__3
       (.I0(operandA[6]),
        .I1(operandB[6]),
        .O(i__carry__0_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(operandB[10]),
        .I1(operandA[10]),
        .I2(operandA[11]),
        .I3(operandB[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__3
       (.I0(operandA[5]),
        .I1(operandB[5]),
        .O(i__carry__0_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(operandB[8]),
        .I1(operandA[8]),
        .I2(operandA[9]),
        .I3(operandB[9]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__3
       (.I0(operandA[4]),
        .I1(operandB[4]),
        .O(i__carry__0_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(operandB[14]),
        .I1(operandA[14]),
        .I2(operandB[15]),
        .I3(operandA[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(operandB[12]),
        .I1(operandA[12]),
        .I2(operandB[13]),
        .I3(operandA[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(operandB[10]),
        .I1(operandA[10]),
        .I2(operandB[11]),
        .I3(operandA[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(operandB[8]),
        .I1(operandA[8]),
        .I2(operandB[9]),
        .I3(operandA[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(operandB[22]),
        .I1(operandA[22]),
        .I2(operandA[23]),
        .I3(operandB[23]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__3
       (.I0(operandA[11]),
        .I1(operandB[11]),
        .O(i__carry__1_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(operandB[20]),
        .I1(operandA[20]),
        .I2(operandA[21]),
        .I3(operandB[21]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__3
       (.I0(operandA[10]),
        .I1(operandB[10]),
        .O(i__carry__1_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(operandB[18]),
        .I1(operandA[18]),
        .I2(operandA[19]),
        .I3(operandB[19]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__3
       (.I0(operandA[9]),
        .I1(operandB[9]),
        .O(i__carry__1_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(operandB[16]),
        .I1(operandA[16]),
        .I2(operandA[17]),
        .I3(operandB[17]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__3
       (.I0(operandA[8]),
        .I1(operandB[8]),
        .O(i__carry__1_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(operandB[22]),
        .I1(operandA[22]),
        .I2(operandB[23]),
        .I3(operandA[23]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(operandB[20]),
        .I1(operandA[20]),
        .I2(operandB[21]),
        .I3(operandA[21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(operandB[18]),
        .I1(operandA[18]),
        .I2(operandB[19]),
        .I3(operandA[19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(operandB[16]),
        .I1(operandA[16]),
        .I2(operandB[17]),
        .I3(operandA[17]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(operandB[30]),
        .I1(operandA[30]),
        .I2(operandA__63),
        .I3(operandB__95),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__1
       (.I0(operandA[15]),
        .I1(operandB[15]),
        .O(i__carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .I2(operandA[29]),
        .I3(operandB[29]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__3
       (.I0(operandA[14]),
        .I1(operandB[14]),
        .O(i__carry__2_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .I2(operandA[27]),
        .I3(operandB[27]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__3
       (.I0(operandA[13]),
        .I1(operandB[13]),
        .O(i__carry__2_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .I2(operandA[25]),
        .I3(operandB[25]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__3
       (.I0(operandA[12]),
        .I1(operandB[12]),
        .O(i__carry__2_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(operandB[30]),
        .I1(operandA[30]),
        .I2(operandB__95),
        .I3(operandA__63),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(operandB[28]),
        .I1(operandA[28]),
        .I2(operandB[29]),
        .I3(operandA[29]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(operandB[26]),
        .I1(operandA[26]),
        .I2(operandB[27]),
        .I3(operandA[27]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(operandB[24]),
        .I1(operandA[24]),
        .I2(operandB[25]),
        .I3(operandA[25]),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(operandA[19]),
        .I1(operandB[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(operandA[18]),
        .I1(operandB[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(operandA[17]),
        .I1(operandB[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(operandA[16]),
        .I1(operandB[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(operandA[23]),
        .I1(operandB[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(operandA[22]),
        .I1(operandB[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(operandA[21]),
        .I1(operandB[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(operandA[20]),
        .I1(operandB[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(operandA[27]),
        .I1(operandB[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(operandA[26]),
        .I1(operandB[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(operandA[25]),
        .I1(operandB[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(operandA[24]),
        .I1(operandB[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(operandA__63),
        .I1(operandB__95),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(operandA[30]),
        .I1(operandB[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(operandA[29]),
        .I1(operandB[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(operandA[28]),
        .I1(operandB[28]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .I2(operandA[7]),
        .I3(operandB[7]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(operandA[3]),
        .I1(operandB[3]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(operandB[4]),
        .I1(operandA[4]),
        .I2(operandA[5]),
        .I3(operandB[5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__3
       (.I0(operandA[2]),
        .I1(operandB[2]),
        .O(i__carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .I2(operandA[3]),
        .I3(operandB[3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__3
       (.I0(operandA[1]),
        .I1(operandB[1]),
        .O(i__carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(operandA[1]),
        .I3(operandB[1]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__3
       (.I0(operandA[0]),
        .I1(operandB[0]),
        .O(i__carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(operandB[6]),
        .I1(operandA[6]),
        .I2(operandB[7]),
        .I3(operandA[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(operandB[4]),
        .I1(operandA[4]),
        .I2(operandB[5]),
        .I3(operandA[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(operandB[2]),
        .I1(operandA[2]),
        .I2(operandB[3]),
        .I3(operandA[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(operandB[0]),
        .I1(operandA[0]),
        .I2(operandB[1]),
        .I3(operandA[1]),
        .O(i__carry_i_8_n_0));
endmodule

(* ORIG_REF_NAME = "Branch_Unit" *) 
module EX_ExecutionStage_0_0_Branch_Unit
   (forwarded_rs1,
    forwarded_rs2,
    branch_taken,
    rs2_data,
    EX_MEM_i,
    MEM_WB_i,
    funct3,
    EX_MEM_RD_i,
    ID_EX_RT_i,
    rs1_data,
    ID_EX_RS_i,
    EX_MEM_RegWrite_i,
    MEM_WB_RD_i,
    MEM_WB_RegWrite_i);
  output [31:0]forwarded_rs1;
  output [31:0]forwarded_rs2;
  output branch_taken;
  input [31:0]rs2_data;
  input [31:0]EX_MEM_i;
  input [31:0]MEM_WB_i;
  input [2:0]funct3;
  input [4:0]EX_MEM_RD_i;
  input [4:0]ID_EX_RT_i;
  input [31:0]rs1_data;
  input [4:0]ID_EX_RS_i;
  input EX_MEM_RegWrite_i;
  input [4:0]MEM_WB_RD_i;
  input MEM_WB_RegWrite_i;

  wire [4:0]EX_MEM_RD_i;
  wire EX_MEM_RegWrite_i;
  wire [31:0]EX_MEM_i;
  wire \FU_inst/ForwardA0__0 ;
  wire \FU_inst/ForwardA18_out ;
  wire \FU_inst/ForwardB0__0 ;
  wire \FU_inst/ForwardB12_out ;
  wire \FU_inst/p_4_in ;
  wire \FU_inst/p_7_in ;
  wire [4:0]ID_EX_RS_i;
  wire [4:0]ID_EX_RT_i;
  wire [4:0]MEM_WB_RD_i;
  wire MEM_WB_RegWrite_i;
  wire [31:0]MEM_WB_i;
  wire alu_out0_carry_i_16_n_0;
  wire alu_out0_carry_i_18_n_0;
  wire branch_taken;
  wire \branch_taken0_inferred__1/i__carry__0_n_0 ;
  wire \branch_taken0_inferred__1/i__carry__0_n_1 ;
  wire \branch_taken0_inferred__1/i__carry__0_n_2 ;
  wire \branch_taken0_inferred__1/i__carry__0_n_3 ;
  wire \branch_taken0_inferred__1/i__carry__1_n_0 ;
  wire \branch_taken0_inferred__1/i__carry__1_n_1 ;
  wire \branch_taken0_inferred__1/i__carry__1_n_2 ;
  wire \branch_taken0_inferred__1/i__carry__1_n_3 ;
  wire \branch_taken0_inferred__1/i__carry__2_n_1 ;
  wire \branch_taken0_inferred__1/i__carry__2_n_2 ;
  wire \branch_taken0_inferred__1/i__carry__2_n_3 ;
  wire \branch_taken0_inferred__1/i__carry_n_0 ;
  wire \branch_taken0_inferred__1/i__carry_n_1 ;
  wire \branch_taken0_inferred__1/i__carry_n_2 ;
  wire \branch_taken0_inferred__1/i__carry_n_3 ;
  wire \branch_taken0_inferred__2/i__carry__0_n_0 ;
  wire \branch_taken0_inferred__2/i__carry__0_n_1 ;
  wire \branch_taken0_inferred__2/i__carry__0_n_2 ;
  wire \branch_taken0_inferred__2/i__carry__0_n_3 ;
  wire \branch_taken0_inferred__2/i__carry__1_n_0 ;
  wire \branch_taken0_inferred__2/i__carry__1_n_1 ;
  wire \branch_taken0_inferred__2/i__carry__1_n_2 ;
  wire \branch_taken0_inferred__2/i__carry__1_n_3 ;
  wire \branch_taken0_inferred__2/i__carry__2_n_1 ;
  wire \branch_taken0_inferred__2/i__carry__2_n_2 ;
  wire \branch_taken0_inferred__2/i__carry__2_n_3 ;
  wire \branch_taken0_inferred__2/i__carry_n_0 ;
  wire \branch_taken0_inferred__2/i__carry_n_1 ;
  wire \branch_taken0_inferred__2/i__carry_n_2 ;
  wire \branch_taken0_inferred__2/i__carry_n_3 ;
  wire \branch_taken0_inferred__3/i__carry__0_n_0 ;
  wire \branch_taken0_inferred__3/i__carry__0_n_1 ;
  wire \branch_taken0_inferred__3/i__carry__0_n_2 ;
  wire \branch_taken0_inferred__3/i__carry__0_n_3 ;
  wire \branch_taken0_inferred__3/i__carry__1_n_0 ;
  wire \branch_taken0_inferred__3/i__carry__1_n_1 ;
  wire \branch_taken0_inferred__3/i__carry__1_n_2 ;
  wire \branch_taken0_inferred__3/i__carry__1_n_3 ;
  wire \branch_taken0_inferred__3/i__carry__2_n_1 ;
  wire \branch_taken0_inferred__3/i__carry__2_n_2 ;
  wire \branch_taken0_inferred__3/i__carry__2_n_3 ;
  wire \branch_taken0_inferred__3/i__carry_n_0 ;
  wire \branch_taken0_inferred__3/i__carry_n_1 ;
  wire \branch_taken0_inferred__3/i__carry_n_2 ;
  wire \branch_taken0_inferred__3/i__carry_n_3 ;
  wire branch_taken_INST_0_i_10_n_0;
  wire branch_taken_INST_0_i_11_n_0;
  wire branch_taken_INST_0_i_12_n_0;
  wire branch_taken_INST_0_i_12_n_1;
  wire branch_taken_INST_0_i_12_n_2;
  wire branch_taken_INST_0_i_12_n_3;
  wire branch_taken_INST_0_i_13_n_0;
  wire branch_taken_INST_0_i_14_n_0;
  wire branch_taken_INST_0_i_15_n_0;
  wire branch_taken_INST_0_i_16_n_0;
  wire branch_taken_INST_0_i_17_n_0;
  wire branch_taken_INST_0_i_17_n_1;
  wire branch_taken_INST_0_i_17_n_2;
  wire branch_taken_INST_0_i_17_n_3;
  wire branch_taken_INST_0_i_18_n_0;
  wire branch_taken_INST_0_i_19_n_0;
  wire branch_taken_INST_0_i_1_n_0;
  wire branch_taken_INST_0_i_20_n_0;
  wire branch_taken_INST_0_i_21_n_0;
  wire branch_taken_INST_0_i_22_n_0;
  wire branch_taken_INST_0_i_23_n_0;
  wire branch_taken_INST_0_i_24_n_0;
  wire branch_taken_INST_0_i_25_n_0;
  wire branch_taken_INST_0_i_26_n_0;
  wire branch_taken_INST_0_i_27_n_0;
  wire branch_taken_INST_0_i_28_n_0;
  wire branch_taken_INST_0_i_29_n_0;
  wire branch_taken_INST_0_i_2_n_2;
  wire branch_taken_INST_0_i_2_n_3;
  wire branch_taken_INST_0_i_3_n_2;
  wire branch_taken_INST_0_i_3_n_3;
  wire branch_taken_INST_0_i_4_n_0;
  wire branch_taken_INST_0_i_4_n_1;
  wire branch_taken_INST_0_i_4_n_2;
  wire branch_taken_INST_0_i_4_n_3;
  wire branch_taken_INST_0_i_5_n_0;
  wire branch_taken_INST_0_i_6_n_0;
  wire branch_taken_INST_0_i_7_n_0;
  wire branch_taken_INST_0_i_8_n_0;
  wire branch_taken_INST_0_i_8_n_1;
  wire branch_taken_INST_0_i_8_n_2;
  wire branch_taken_INST_0_i_8_n_3;
  wire branch_taken_INST_0_i_9_n_0;
  wire data0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire [31:0]forwarded_rs1;
  wire [31:0]forwarded_rs2;
  wire [2:0]funct3;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5__2_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6__2_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7__2_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry__0_i_8__2_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5__1_n_0;
  wire i__carry__1_i_5__2_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6__1_n_0;
  wire i__carry__1_i_6__2_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7__1_n_0;
  wire i__carry__1_i_7__2_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8__1_n_0;
  wire i__carry__1_i_8__2_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__2_n_0;
  wire i__carry__2_i_1__3_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2__2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_3__2_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_4__2_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5__1_n_0;
  wire i__carry__2_i_5__2_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6__1_n_0;
  wire i__carry__2_i_6__2_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7__1_n_0;
  wire i__carry__2_i_7__2_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8__1_n_0;
  wire i__carry__2_i_8__2_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire [31:0]rs1_data;
  wire [31:0]rs2_data;
  wire [3:0]\NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_branch_taken_INST_0_i_12_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_17_O_UNCONNECTED;
  wire [3:3]NLW_branch_taken_INST_0_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_2_O_UNCONNECTED;
  wire [3:3]NLW_branch_taken_INST_0_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_3_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_4_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_8_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__0_i_10
       (.I0(rs1_data[6]),
        .I1(EX_MEM_i[6]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[6]),
        .O(forwarded_rs1[6]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__0_i_11
       (.I0(rs1_data[5]),
        .I1(EX_MEM_i[5]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[5]),
        .O(forwarded_rs1[5]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__0_i_12
       (.I0(rs1_data[4]),
        .I1(EX_MEM_i[4]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[4]),
        .O(forwarded_rs1[4]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__0_i_9
       (.I0(rs1_data[7]),
        .I1(EX_MEM_i[7]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[7]),
        .O(forwarded_rs1[7]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__1_i_10
       (.I0(rs1_data[10]),
        .I1(EX_MEM_i[10]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[10]),
        .O(forwarded_rs1[10]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__1_i_11
       (.I0(rs1_data[9]),
        .I1(EX_MEM_i[9]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[9]),
        .O(forwarded_rs1[9]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__1_i_12
       (.I0(rs1_data[8]),
        .I1(EX_MEM_i[8]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[8]),
        .O(forwarded_rs1[8]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__1_i_9
       (.I0(rs1_data[11]),
        .I1(EX_MEM_i[11]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[11]),
        .O(forwarded_rs1[11]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__2_i_10
       (.I0(rs1_data[14]),
        .I1(EX_MEM_i[14]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[14]),
        .O(forwarded_rs1[14]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__2_i_11
       (.I0(rs1_data[13]),
        .I1(EX_MEM_i[13]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[13]),
        .O(forwarded_rs1[13]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__2_i_12
       (.I0(rs1_data[12]),
        .I1(EX_MEM_i[12]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[12]),
        .O(forwarded_rs1[12]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__2_i_9
       (.I0(rs1_data[15]),
        .I1(EX_MEM_i[15]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[15]),
        .O(forwarded_rs1[15]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__3_i_10
       (.I0(rs1_data[18]),
        .I1(EX_MEM_i[18]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[18]),
        .O(forwarded_rs1[18]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__3_i_11
       (.I0(rs1_data[17]),
        .I1(EX_MEM_i[17]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[17]),
        .O(forwarded_rs1[17]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__3_i_12
       (.I0(rs1_data[16]),
        .I1(EX_MEM_i[16]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[16]),
        .O(forwarded_rs1[16]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__3_i_9
       (.I0(rs1_data[19]),
        .I1(EX_MEM_i[19]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[19]),
        .O(forwarded_rs1[19]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__4_i_10
       (.I0(rs1_data[22]),
        .I1(EX_MEM_i[22]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[22]),
        .O(forwarded_rs1[22]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__4_i_11
       (.I0(rs1_data[21]),
        .I1(EX_MEM_i[21]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[21]),
        .O(forwarded_rs1[21]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__4_i_12
       (.I0(rs1_data[20]),
        .I1(EX_MEM_i[20]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[20]),
        .O(forwarded_rs1[20]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__4_i_9
       (.I0(rs1_data[23]),
        .I1(EX_MEM_i[23]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[23]),
        .O(forwarded_rs1[23]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__5_i_10
       (.I0(rs1_data[26]),
        .I1(EX_MEM_i[26]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[26]),
        .O(forwarded_rs1[26]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__5_i_11
       (.I0(rs1_data[25]),
        .I1(EX_MEM_i[25]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[25]),
        .O(forwarded_rs1[25]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__5_i_12
       (.I0(rs1_data[24]),
        .I1(EX_MEM_i[24]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[24]),
        .O(forwarded_rs1[24]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__5_i_9
       (.I0(rs1_data[27]),
        .I1(EX_MEM_i[27]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[27]),
        .O(forwarded_rs1[27]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__6_i_10
       (.I0(rs1_data[28]),
        .I1(EX_MEM_i[28]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[28]),
        .O(forwarded_rs1[28]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__6_i_8
       (.I0(rs1_data[30]),
        .I1(EX_MEM_i[30]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[30]),
        .O(forwarded_rs1[30]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry__6_i_9
       (.I0(rs1_data[29]),
        .I1(EX_MEM_i[29]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[29]),
        .O(forwarded_rs1[29]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry_i_10
       (.I0(rs1_data[2]),
        .I1(EX_MEM_i[2]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[2]),
        .O(forwarded_rs1[2]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry_i_11
       (.I0(rs1_data[1]),
        .I1(EX_MEM_i[1]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[1]),
        .O(forwarded_rs1[1]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry_i_12
       (.I0(rs1_data[0]),
        .I1(EX_MEM_i[0]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[0]),
        .O(forwarded_rs1[0]));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    alu_out0_carry_i_13
       (.I0(\FU_inst/p_4_in ),
        .I1(MEM_WB_RD_i[4]),
        .I2(ID_EX_RS_i[4]),
        .I3(alu_out0_carry_i_16_n_0),
        .I4(ID_EX_RS_i[3]),
        .I5(MEM_WB_RD_i[3]),
        .O(\FU_inst/ForwardA0__0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    alu_out0_carry_i_14
       (.I0(\FU_inst/p_7_in ),
        .I1(EX_MEM_RD_i[4]),
        .I2(ID_EX_RS_i[4]),
        .I3(alu_out0_carry_i_18_n_0),
        .I4(ID_EX_RS_i[3]),
        .I5(EX_MEM_RD_i[3]),
        .O(\FU_inst/ForwardA18_out ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    alu_out0_carry_i_15
       (.I0(MEM_WB_RegWrite_i),
        .I1(MEM_WB_RD_i[2]),
        .I2(MEM_WB_RD_i[4]),
        .I3(MEM_WB_RD_i[0]),
        .I4(MEM_WB_RD_i[1]),
        .I5(MEM_WB_RD_i[3]),
        .O(\FU_inst/p_4_in ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    alu_out0_carry_i_16
       (.I0(MEM_WB_RD_i[0]),
        .I1(ID_EX_RS_i[0]),
        .I2(ID_EX_RS_i[2]),
        .I3(MEM_WB_RD_i[2]),
        .I4(ID_EX_RS_i[1]),
        .I5(MEM_WB_RD_i[1]),
        .O(alu_out0_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    alu_out0_carry_i_17
       (.I0(EX_MEM_RegWrite_i),
        .I1(EX_MEM_RD_i[2]),
        .I2(EX_MEM_RD_i[4]),
        .I3(EX_MEM_RD_i[0]),
        .I4(EX_MEM_RD_i[1]),
        .I5(EX_MEM_RD_i[3]),
        .O(\FU_inst/p_7_in ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    alu_out0_carry_i_18
       (.I0(EX_MEM_RD_i[0]),
        .I1(ID_EX_RS_i[0]),
        .I2(ID_EX_RS_i[2]),
        .I3(EX_MEM_RD_i[2]),
        .I4(ID_EX_RS_i[1]),
        .I5(EX_MEM_RD_i[1]),
        .O(alu_out0_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    alu_out0_carry_i_9
       (.I0(rs1_data[3]),
        .I1(EX_MEM_i[3]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[3]),
        .O(forwarded_rs1[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__1/i__carry_n_0 ,\branch_taken0_inferred__1/i__carry_n_1 ,\branch_taken0_inferred__1/i__carry_n_2 ,\branch_taken0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__0 
       (.CI(\branch_taken0_inferred__1/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__1/i__carry__0_n_0 ,\branch_taken0_inferred__1/i__carry__0_n_1 ,\branch_taken0_inferred__1/i__carry__0_n_2 ,\branch_taken0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__1 
       (.CI(\branch_taken0_inferred__1/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__1/i__carry__1_n_0 ,\branch_taken0_inferred__1/i__carry__1_n_1 ,\branch_taken0_inferred__1/i__carry__1_n_2 ,\branch_taken0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__2 
       (.CI(\branch_taken0_inferred__1/i__carry__1_n_0 ),
        .CO({data2,\branch_taken0_inferred__1/i__carry__2_n_1 ,\branch_taken0_inferred__1/i__carry__2_n_2 ,\branch_taken0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__3_n_0,i__carry__2_i_2__2_n_0,i__carry__2_i_3__2_n_0,i__carry__2_i_4__2_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__1_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__2/i__carry_n_0 ,\branch_taken0_inferred__2/i__carry_n_1 ,\branch_taken0_inferred__2/i__carry_n_2 ,\branch_taken0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__0 
       (.CI(\branch_taken0_inferred__2/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__2/i__carry__0_n_0 ,\branch_taken0_inferred__2/i__carry__0_n_1 ,\branch_taken0_inferred__2/i__carry__0_n_2 ,\branch_taken0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__2_n_0,i__carry__0_i_6__2_n_0,i__carry__0_i_7__2_n_0,i__carry__0_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__1 
       (.CI(\branch_taken0_inferred__2/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__2/i__carry__1_n_0 ,\branch_taken0_inferred__2/i__carry__1_n_1 ,\branch_taken0_inferred__2/i__carry__1_n_2 ,\branch_taken0_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__2_n_0,i__carry__1_i_6__2_n_0,i__carry__1_i_7__2_n_0,i__carry__1_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__2 
       (.CI(\branch_taken0_inferred__2/i__carry__1_n_0 ),
        .CO({data3,\branch_taken0_inferred__2/i__carry__2_n_1 ,\branch_taken0_inferred__2/i__carry__2_n_2 ,\branch_taken0_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__2_n_0,i__carry__2_i_6__2_n_0,i__carry__2_i_7__2_n_0,i__carry__2_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__3/i__carry_n_0 ,\branch_taken0_inferred__3/i__carry_n_1 ,\branch_taken0_inferred__3/i__carry_n_2 ,\branch_taken0_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__0 
       (.CI(\branch_taken0_inferred__3/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__3/i__carry__0_n_0 ,\branch_taken0_inferred__3/i__carry__0_n_1 ,\branch_taken0_inferred__3/i__carry__0_n_2 ,\branch_taken0_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__1 
       (.CI(\branch_taken0_inferred__3/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__3/i__carry__1_n_0 ,\branch_taken0_inferred__3/i__carry__1_n_1 ,\branch_taken0_inferred__3/i__carry__1_n_2 ,\branch_taken0_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__1_n_0,i__carry__1_i_6__1_n_0,i__carry__1_i_7__1_n_0,i__carry__1_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__2 
       (.CI(\branch_taken0_inferred__3/i__carry__1_n_0 ),
        .CO({data4,\branch_taken0_inferred__3/i__carry__2_n_1 ,\branch_taken0_inferred__3/i__carry__2_n_2 ,\branch_taken0_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__2_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__1_n_0,i__carry__2_i_7__1_n_0,i__carry__2_i_8__1_n_0}));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    branch_taken_INST_0
       (.I0(branch_taken_INST_0_i_1_n_0),
        .I1(funct3[1]),
        .I2(funct3[2]),
        .I3(data1),
        .I4(funct3[0]),
        .I5(data0),
        .O(branch_taken));
  LUT6 #(
    .INIT(64'h0A0AF808A0A0F808)) 
    branch_taken_INST_0_i_1
       (.I0(funct3[2]),
        .I1(data2),
        .I2(funct3[0]),
        .I3(data3),
        .I4(funct3[1]),
        .I5(data4),
        .O(branch_taken_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_10
       (.I0(forwarded_rs2[27]),
        .I1(forwarded_rs1[27]),
        .I2(forwarded_rs2[29]),
        .I3(forwarded_rs1[29]),
        .I4(forwarded_rs1[28]),
        .I5(forwarded_rs2[28]),
        .O(branch_taken_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_11
       (.I0(forwarded_rs2[24]),
        .I1(forwarded_rs1[24]),
        .I2(forwarded_rs2[25]),
        .I3(forwarded_rs1[25]),
        .I4(forwarded_rs2[26]),
        .I5(forwarded_rs1[26]),
        .O(branch_taken_INST_0_i_11_n_0));
  CARRY4 branch_taken_INST_0_i_12
       (.CI(1'b0),
        .CO({branch_taken_INST_0_i_12_n_0,branch_taken_INST_0_i_12_n_1,branch_taken_INST_0_i_12_n_2,branch_taken_INST_0_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_12_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_22_n_0,branch_taken_INST_0_i_23_n_0,branch_taken_INST_0_i_24_n_0,branch_taken_INST_0_i_25_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_13
       (.I0(forwarded_rs2[21]),
        .I1(forwarded_rs1[21]),
        .I2(forwarded_rs2[23]),
        .I3(forwarded_rs1[23]),
        .I4(forwarded_rs1[22]),
        .I5(forwarded_rs2[22]),
        .O(branch_taken_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_14
       (.I0(forwarded_rs2[18]),
        .I1(forwarded_rs1[18]),
        .I2(forwarded_rs2[19]),
        .I3(forwarded_rs1[19]),
        .I4(forwarded_rs2[20]),
        .I5(forwarded_rs1[20]),
        .O(branch_taken_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_15
       (.I0(forwarded_rs2[15]),
        .I1(forwarded_rs1[15]),
        .I2(forwarded_rs2[17]),
        .I3(forwarded_rs1[17]),
        .I4(forwarded_rs1[16]),
        .I5(forwarded_rs2[16]),
        .O(branch_taken_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_16
       (.I0(forwarded_rs2[12]),
        .I1(forwarded_rs1[12]),
        .I2(forwarded_rs2[13]),
        .I3(forwarded_rs1[13]),
        .I4(forwarded_rs2[14]),
        .I5(forwarded_rs1[14]),
        .O(branch_taken_INST_0_i_16_n_0));
  CARRY4 branch_taken_INST_0_i_17
       (.CI(1'b0),
        .CO({branch_taken_INST_0_i_17_n_0,branch_taken_INST_0_i_17_n_1,branch_taken_INST_0_i_17_n_2,branch_taken_INST_0_i_17_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_17_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_26_n_0,branch_taken_INST_0_i_27_n_0,branch_taken_INST_0_i_28_n_0,branch_taken_INST_0_i_29_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_18
       (.I0(forwarded_rs2[21]),
        .I1(forwarded_rs1[21]),
        .I2(forwarded_rs2[23]),
        .I3(forwarded_rs1[23]),
        .I4(forwarded_rs1[22]),
        .I5(forwarded_rs2[22]),
        .O(branch_taken_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_19
       (.I0(forwarded_rs2[18]),
        .I1(forwarded_rs1[18]),
        .I2(forwarded_rs2[19]),
        .I3(forwarded_rs1[19]),
        .I4(forwarded_rs2[20]),
        .I5(forwarded_rs1[20]),
        .O(branch_taken_INST_0_i_19_n_0));
  CARRY4 branch_taken_INST_0_i_2
       (.CI(branch_taken_INST_0_i_4_n_0),
        .CO({NLW_branch_taken_INST_0_i_2_CO_UNCONNECTED[3],data1,branch_taken_INST_0_i_2_n_2,branch_taken_INST_0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_taken_INST_0_i_5_n_0,branch_taken_INST_0_i_6_n_0,branch_taken_INST_0_i_7_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_20
       (.I0(forwarded_rs2[15]),
        .I1(forwarded_rs1[15]),
        .I2(forwarded_rs2[17]),
        .I3(forwarded_rs1[17]),
        .I4(forwarded_rs1[16]),
        .I5(forwarded_rs2[16]),
        .O(branch_taken_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_21
       (.I0(forwarded_rs2[12]),
        .I1(forwarded_rs1[12]),
        .I2(forwarded_rs2[13]),
        .I3(forwarded_rs1[13]),
        .I4(forwarded_rs2[14]),
        .I5(forwarded_rs1[14]),
        .O(branch_taken_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_22
       (.I0(forwarded_rs2[9]),
        .I1(forwarded_rs1[9]),
        .I2(forwarded_rs2[11]),
        .I3(forwarded_rs1[11]),
        .I4(forwarded_rs1[10]),
        .I5(forwarded_rs2[10]),
        .O(branch_taken_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_23
       (.I0(forwarded_rs2[6]),
        .I1(forwarded_rs1[6]),
        .I2(forwarded_rs2[7]),
        .I3(forwarded_rs1[7]),
        .I4(forwarded_rs2[8]),
        .I5(forwarded_rs1[8]),
        .O(branch_taken_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_24
       (.I0(forwarded_rs2[3]),
        .I1(forwarded_rs1[3]),
        .I2(forwarded_rs2[5]),
        .I3(forwarded_rs1[5]),
        .I4(forwarded_rs1[4]),
        .I5(forwarded_rs2[4]),
        .O(branch_taken_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_25
       (.I0(forwarded_rs2[0]),
        .I1(forwarded_rs1[0]),
        .I2(forwarded_rs2[1]),
        .I3(forwarded_rs1[1]),
        .I4(forwarded_rs2[2]),
        .I5(forwarded_rs1[2]),
        .O(branch_taken_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_26
       (.I0(forwarded_rs2[9]),
        .I1(forwarded_rs1[9]),
        .I2(forwarded_rs2[11]),
        .I3(forwarded_rs1[11]),
        .I4(forwarded_rs1[10]),
        .I5(forwarded_rs2[10]),
        .O(branch_taken_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_27
       (.I0(forwarded_rs2[6]),
        .I1(forwarded_rs1[6]),
        .I2(forwarded_rs2[7]),
        .I3(forwarded_rs1[7]),
        .I4(forwarded_rs2[8]),
        .I5(forwarded_rs1[8]),
        .O(branch_taken_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_28
       (.I0(forwarded_rs2[3]),
        .I1(forwarded_rs1[3]),
        .I2(forwarded_rs2[5]),
        .I3(forwarded_rs1[5]),
        .I4(forwarded_rs1[4]),
        .I5(forwarded_rs2[4]),
        .O(branch_taken_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_29
       (.I0(forwarded_rs2[0]),
        .I1(forwarded_rs1[0]),
        .I2(forwarded_rs2[1]),
        .I3(forwarded_rs1[1]),
        .I4(forwarded_rs2[2]),
        .I5(forwarded_rs1[2]),
        .O(branch_taken_INST_0_i_29_n_0));
  CARRY4 branch_taken_INST_0_i_3
       (.CI(branch_taken_INST_0_i_8_n_0),
        .CO({NLW_branch_taken_INST_0_i_3_CO_UNCONNECTED[3],data0,branch_taken_INST_0_i_3_n_2,branch_taken_INST_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_taken_INST_0_i_9_n_0,branch_taken_INST_0_i_10_n_0,branch_taken_INST_0_i_11_n_0}));
  CARRY4 branch_taken_INST_0_i_4
       (.CI(branch_taken_INST_0_i_12_n_0),
        .CO({branch_taken_INST_0_i_4_n_0,branch_taken_INST_0_i_4_n_1,branch_taken_INST_0_i_4_n_2,branch_taken_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_4_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_13_n_0,branch_taken_INST_0_i_14_n_0,branch_taken_INST_0_i_15_n_0,branch_taken_INST_0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_INST_0_i_5
       (.I0(forwarded_rs2[30]),
        .I1(forwarded_rs1[30]),
        .I2(forwarded_rs2[31]),
        .I3(forwarded_rs1[31]),
        .O(branch_taken_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_6
       (.I0(forwarded_rs2[27]),
        .I1(forwarded_rs1[27]),
        .I2(forwarded_rs2[29]),
        .I3(forwarded_rs1[29]),
        .I4(forwarded_rs1[28]),
        .I5(forwarded_rs2[28]),
        .O(branch_taken_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_7
       (.I0(forwarded_rs2[24]),
        .I1(forwarded_rs1[24]),
        .I2(forwarded_rs2[25]),
        .I3(forwarded_rs1[25]),
        .I4(forwarded_rs2[26]),
        .I5(forwarded_rs1[26]),
        .O(branch_taken_INST_0_i_7_n_0));
  CARRY4 branch_taken_INST_0_i_8
       (.CI(branch_taken_INST_0_i_17_n_0),
        .CO({branch_taken_INST_0_i_8_n_0,branch_taken_INST_0_i_8_n_1,branch_taken_INST_0_i_8_n_2,branch_taken_INST_0_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_8_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_18_n_0,branch_taken_INST_0_i_19_n_0,branch_taken_INST_0_i_20_n_0,branch_taken_INST_0_i_21_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_INST_0_i_9
       (.I0(forwarded_rs2[30]),
        .I1(forwarded_rs1[30]),
        .I2(forwarded_rs2[31]),
        .I3(forwarded_rs1[31]),
        .O(branch_taken_INST_0_i_9_n_0));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_10
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[15]),
        .I3(EX_MEM_i[15]),
        .I4(MEM_WB_i[15]),
        .O(forwarded_rs2[15]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_11
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[12]),
        .I3(EX_MEM_i[12]),
        .I4(MEM_WB_i[12]),
        .O(forwarded_rs2[12]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_12
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[13]),
        .I3(EX_MEM_i[13]),
        .I4(MEM_WB_i[13]),
        .O(forwarded_rs2[13]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_13
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[10]),
        .I3(EX_MEM_i[10]),
        .I4(MEM_WB_i[10]),
        .O(forwarded_rs2[10]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_14
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[11]),
        .I3(EX_MEM_i[11]),
        .I4(MEM_WB_i[11]),
        .O(forwarded_rs2[11]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_15
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[8]),
        .I3(EX_MEM_i[8]),
        .I4(MEM_WB_i[8]),
        .O(forwarded_rs2[8]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_16
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[9]),
        .I3(EX_MEM_i[9]),
        .I4(MEM_WB_i[9]),
        .O(forwarded_rs2[9]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__0
       (.I0(forwarded_rs1[14]),
        .I1(forwarded_rs2[14]),
        .I2(forwarded_rs2[15]),
        .I3(forwarded_rs1[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__1
       (.I0(forwarded_rs2[14]),
        .I1(forwarded_rs1[14]),
        .I2(forwarded_rs1[15]),
        .I3(forwarded_rs2[15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__2
       (.I0(forwarded_rs2[14]),
        .I1(forwarded_rs1[14]),
        .I2(forwarded_rs1[15]),
        .I3(forwarded_rs2[15]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__0
       (.I0(forwarded_rs1[12]),
        .I1(forwarded_rs2[12]),
        .I2(forwarded_rs2[13]),
        .I3(forwarded_rs1[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__1
       (.I0(forwarded_rs2[12]),
        .I1(forwarded_rs1[12]),
        .I2(forwarded_rs1[13]),
        .I3(forwarded_rs2[13]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__2
       (.I0(forwarded_rs2[12]),
        .I1(forwarded_rs1[12]),
        .I2(forwarded_rs1[13]),
        .I3(forwarded_rs2[13]),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__0
       (.I0(forwarded_rs1[10]),
        .I1(forwarded_rs2[10]),
        .I2(forwarded_rs2[11]),
        .I3(forwarded_rs1[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__1
       (.I0(forwarded_rs2[10]),
        .I1(forwarded_rs1[10]),
        .I2(forwarded_rs1[11]),
        .I3(forwarded_rs2[11]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__2
       (.I0(forwarded_rs2[10]),
        .I1(forwarded_rs1[10]),
        .I2(forwarded_rs1[11]),
        .I3(forwarded_rs2[11]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(forwarded_rs1[8]),
        .I1(forwarded_rs2[8]),
        .I2(forwarded_rs2[9]),
        .I3(forwarded_rs1[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__1
       (.I0(forwarded_rs2[8]),
        .I1(forwarded_rs1[8]),
        .I2(forwarded_rs1[9]),
        .I3(forwarded_rs2[9]),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__2
       (.I0(forwarded_rs2[8]),
        .I1(forwarded_rs1[8]),
        .I2(forwarded_rs1[9]),
        .I3(forwarded_rs2[9]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(forwarded_rs1[15]),
        .I1(forwarded_rs2[15]),
        .I2(forwarded_rs2[14]),
        .I3(forwarded_rs1[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__1
       (.I0(forwarded_rs1[15]),
        .I1(forwarded_rs2[15]),
        .I2(forwarded_rs2[14]),
        .I3(forwarded_rs1[14]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__2
       (.I0(forwarded_rs2[14]),
        .I1(forwarded_rs1[14]),
        .I2(forwarded_rs2[15]),
        .I3(forwarded_rs1[15]),
        .O(i__carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(forwarded_rs1[13]),
        .I1(forwarded_rs2[13]),
        .I2(forwarded_rs2[12]),
        .I3(forwarded_rs1[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__1
       (.I0(forwarded_rs1[13]),
        .I1(forwarded_rs2[13]),
        .I2(forwarded_rs2[12]),
        .I3(forwarded_rs1[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__2
       (.I0(forwarded_rs2[12]),
        .I1(forwarded_rs1[12]),
        .I2(forwarded_rs2[13]),
        .I3(forwarded_rs1[13]),
        .O(i__carry__0_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(forwarded_rs1[11]),
        .I1(forwarded_rs2[11]),
        .I2(forwarded_rs2[10]),
        .I3(forwarded_rs1[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__1
       (.I0(forwarded_rs1[11]),
        .I1(forwarded_rs2[11]),
        .I2(forwarded_rs2[10]),
        .I3(forwarded_rs1[10]),
        .O(i__carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__2
       (.I0(forwarded_rs2[11]),
        .I1(forwarded_rs1[11]),
        .I2(forwarded_rs1[10]),
        .I3(forwarded_rs2[10]),
        .O(i__carry__0_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(forwarded_rs1[9]),
        .I1(forwarded_rs2[9]),
        .I2(forwarded_rs2[8]),
        .I3(forwarded_rs1[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__1
       (.I0(forwarded_rs1[9]),
        .I1(forwarded_rs2[9]),
        .I2(forwarded_rs2[8]),
        .I3(forwarded_rs1[8]),
        .O(i__carry__0_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__2
       (.I0(forwarded_rs2[8]),
        .I1(forwarded_rs1[8]),
        .I2(forwarded_rs2[9]),
        .I3(forwarded_rs1[9]),
        .O(i__carry__0_i_8__2_n_0));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__0_i_9
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[14]),
        .I3(EX_MEM_i[14]),
        .I4(MEM_WB_i[14]),
        .O(forwarded_rs2[14]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_10
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[23]),
        .I3(EX_MEM_i[23]),
        .I4(MEM_WB_i[23]),
        .O(forwarded_rs2[23]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_11
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[20]),
        .I3(EX_MEM_i[20]),
        .I4(MEM_WB_i[20]),
        .O(forwarded_rs2[20]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_12
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[21]),
        .I3(EX_MEM_i[21]),
        .I4(MEM_WB_i[21]),
        .O(forwarded_rs2[21]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_13
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[18]),
        .I3(EX_MEM_i[18]),
        .I4(MEM_WB_i[18]),
        .O(forwarded_rs2[18]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_14
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[19]),
        .I3(EX_MEM_i[19]),
        .I4(MEM_WB_i[19]),
        .O(forwarded_rs2[19]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_15
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[16]),
        .I3(EX_MEM_i[16]),
        .I4(MEM_WB_i[16]),
        .O(forwarded_rs2[16]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_16
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[17]),
        .I3(EX_MEM_i[17]),
        .I4(MEM_WB_i[17]),
        .O(forwarded_rs2[17]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__0
       (.I0(forwarded_rs1[22]),
        .I1(forwarded_rs2[22]),
        .I2(forwarded_rs2[23]),
        .I3(forwarded_rs1[23]),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__1
       (.I0(forwarded_rs2[22]),
        .I1(forwarded_rs1[22]),
        .I2(forwarded_rs1[23]),
        .I3(forwarded_rs2[23]),
        .O(i__carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__2
       (.I0(forwarded_rs2[22]),
        .I1(forwarded_rs1[22]),
        .I2(forwarded_rs1[23]),
        .I3(forwarded_rs2[23]),
        .O(i__carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__0
       (.I0(forwarded_rs1[20]),
        .I1(forwarded_rs2[20]),
        .I2(forwarded_rs2[21]),
        .I3(forwarded_rs1[21]),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__1
       (.I0(forwarded_rs2[20]),
        .I1(forwarded_rs1[20]),
        .I2(forwarded_rs1[21]),
        .I3(forwarded_rs2[21]),
        .O(i__carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__2
       (.I0(forwarded_rs2[20]),
        .I1(forwarded_rs1[20]),
        .I2(forwarded_rs1[21]),
        .I3(forwarded_rs2[21]),
        .O(i__carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__0
       (.I0(forwarded_rs1[18]),
        .I1(forwarded_rs2[18]),
        .I2(forwarded_rs2[19]),
        .I3(forwarded_rs1[19]),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__1
       (.I0(forwarded_rs2[18]),
        .I1(forwarded_rs1[18]),
        .I2(forwarded_rs1[19]),
        .I3(forwarded_rs2[19]),
        .O(i__carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__2
       (.I0(forwarded_rs2[18]),
        .I1(forwarded_rs1[18]),
        .I2(forwarded_rs1[19]),
        .I3(forwarded_rs2[19]),
        .O(i__carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__0
       (.I0(forwarded_rs1[16]),
        .I1(forwarded_rs2[16]),
        .I2(forwarded_rs2[17]),
        .I3(forwarded_rs1[17]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__1
       (.I0(forwarded_rs2[16]),
        .I1(forwarded_rs1[16]),
        .I2(forwarded_rs1[17]),
        .I3(forwarded_rs2[17]),
        .O(i__carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__2
       (.I0(forwarded_rs2[16]),
        .I1(forwarded_rs1[16]),
        .I2(forwarded_rs1[17]),
        .I3(forwarded_rs2[17]),
        .O(i__carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__0
       (.I0(forwarded_rs1[23]),
        .I1(forwarded_rs2[23]),
        .I2(forwarded_rs2[22]),
        .I3(forwarded_rs1[22]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__1
       (.I0(forwarded_rs1[23]),
        .I1(forwarded_rs2[23]),
        .I2(forwarded_rs2[22]),
        .I3(forwarded_rs1[22]),
        .O(i__carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__2
       (.I0(forwarded_rs2[23]),
        .I1(forwarded_rs1[23]),
        .I2(forwarded_rs1[22]),
        .I3(forwarded_rs2[22]),
        .O(i__carry__1_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(forwarded_rs1[21]),
        .I1(forwarded_rs2[21]),
        .I2(forwarded_rs2[20]),
        .I3(forwarded_rs1[20]),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__1
       (.I0(forwarded_rs1[21]),
        .I1(forwarded_rs2[21]),
        .I2(forwarded_rs2[20]),
        .I3(forwarded_rs1[20]),
        .O(i__carry__1_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__2
       (.I0(forwarded_rs2[20]),
        .I1(forwarded_rs1[20]),
        .I2(forwarded_rs2[21]),
        .I3(forwarded_rs1[21]),
        .O(i__carry__1_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(forwarded_rs1[19]),
        .I1(forwarded_rs2[19]),
        .I2(forwarded_rs2[18]),
        .I3(forwarded_rs1[18]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__1
       (.I0(forwarded_rs1[19]),
        .I1(forwarded_rs2[19]),
        .I2(forwarded_rs2[18]),
        .I3(forwarded_rs1[18]),
        .O(i__carry__1_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__2
       (.I0(forwarded_rs2[18]),
        .I1(forwarded_rs1[18]),
        .I2(forwarded_rs2[19]),
        .I3(forwarded_rs1[19]),
        .O(i__carry__1_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(forwarded_rs1[17]),
        .I1(forwarded_rs2[17]),
        .I2(forwarded_rs2[16]),
        .I3(forwarded_rs1[16]),
        .O(i__carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__1
       (.I0(forwarded_rs1[17]),
        .I1(forwarded_rs2[17]),
        .I2(forwarded_rs2[16]),
        .I3(forwarded_rs1[16]),
        .O(i__carry__1_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__2
       (.I0(forwarded_rs2[17]),
        .I1(forwarded_rs1[17]),
        .I2(forwarded_rs1[16]),
        .I3(forwarded_rs2[16]),
        .O(i__carry__1_i_8__2_n_0));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__1_i_9
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[22]),
        .I3(EX_MEM_i[22]),
        .I4(MEM_WB_i[22]),
        .O(forwarded_rs2[22]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_10
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[31]),
        .I3(EX_MEM_i[31]),
        .I4(MEM_WB_i[31]),
        .O(forwarded_rs2[31]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    i__carry__2_i_11
       (.I0(rs1_data[31]),
        .I1(EX_MEM_i[31]),
        .I2(\FU_inst/ForwardA0__0 ),
        .I3(\FU_inst/ForwardA18_out ),
        .I4(MEM_WB_i[31]),
        .O(forwarded_rs1[31]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_12
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[28]),
        .I3(EX_MEM_i[28]),
        .I4(MEM_WB_i[28]),
        .O(forwarded_rs2[28]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_13
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[29]),
        .I3(EX_MEM_i[29]),
        .I4(MEM_WB_i[29]),
        .O(forwarded_rs2[29]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_14
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[26]),
        .I3(EX_MEM_i[26]),
        .I4(MEM_WB_i[26]),
        .O(forwarded_rs2[26]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_15
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[27]),
        .I3(EX_MEM_i[27]),
        .I4(MEM_WB_i[27]),
        .O(forwarded_rs2[27]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_16
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[24]),
        .I3(EX_MEM_i[24]),
        .I4(MEM_WB_i[24]),
        .O(forwarded_rs2[24]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_17
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[25]),
        .I3(EX_MEM_i[25]),
        .I4(MEM_WB_i[25]),
        .O(forwarded_rs2[25]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1__0
       (.I0(forwarded_rs1[30]),
        .I1(forwarded_rs2[30]),
        .I2(forwarded_rs1[31]),
        .I3(forwarded_rs2[31]),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1__2
       (.I0(forwarded_rs2[30]),
        .I1(forwarded_rs1[30]),
        .I2(forwarded_rs1[31]),
        .I3(forwarded_rs2[31]),
        .O(i__carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1__3
       (.I0(forwarded_rs2[30]),
        .I1(forwarded_rs1[30]),
        .I2(forwarded_rs2[31]),
        .I3(forwarded_rs1[31]),
        .O(i__carry__2_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__0
       (.I0(forwarded_rs1[28]),
        .I1(forwarded_rs2[28]),
        .I2(forwarded_rs2[29]),
        .I3(forwarded_rs1[29]),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__1
       (.I0(forwarded_rs2[28]),
        .I1(forwarded_rs1[28]),
        .I2(forwarded_rs1[29]),
        .I3(forwarded_rs2[29]),
        .O(i__carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__2
       (.I0(forwarded_rs2[28]),
        .I1(forwarded_rs1[28]),
        .I2(forwarded_rs1[29]),
        .I3(forwarded_rs2[29]),
        .O(i__carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__0
       (.I0(forwarded_rs1[26]),
        .I1(forwarded_rs2[26]),
        .I2(forwarded_rs2[27]),
        .I3(forwarded_rs1[27]),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__1
       (.I0(forwarded_rs2[26]),
        .I1(forwarded_rs1[26]),
        .I2(forwarded_rs1[27]),
        .I3(forwarded_rs2[27]),
        .O(i__carry__2_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__2
       (.I0(forwarded_rs2[26]),
        .I1(forwarded_rs1[26]),
        .I2(forwarded_rs1[27]),
        .I3(forwarded_rs2[27]),
        .O(i__carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__0
       (.I0(forwarded_rs1[24]),
        .I1(forwarded_rs2[24]),
        .I2(forwarded_rs2[25]),
        .I3(forwarded_rs1[25]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__1
       (.I0(forwarded_rs2[24]),
        .I1(forwarded_rs1[24]),
        .I2(forwarded_rs1[25]),
        .I3(forwarded_rs2[25]),
        .O(i__carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__2
       (.I0(forwarded_rs2[24]),
        .I1(forwarded_rs1[24]),
        .I2(forwarded_rs1[25]),
        .I3(forwarded_rs2[25]),
        .O(i__carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__0
       (.I0(forwarded_rs1[31]),
        .I1(forwarded_rs2[31]),
        .I2(forwarded_rs1[30]),
        .I3(forwarded_rs2[30]),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__1
       (.I0(forwarded_rs2[31]),
        .I1(forwarded_rs1[31]),
        .I2(forwarded_rs1[30]),
        .I3(forwarded_rs2[30]),
        .O(i__carry__2_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__2
       (.I0(forwarded_rs2[30]),
        .I1(forwarded_rs1[30]),
        .I2(forwarded_rs1[31]),
        .I3(forwarded_rs2[31]),
        .O(i__carry__2_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__0
       (.I0(forwarded_rs1[29]),
        .I1(forwarded_rs2[29]),
        .I2(forwarded_rs2[28]),
        .I3(forwarded_rs1[28]),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__1
       (.I0(forwarded_rs1[29]),
        .I1(forwarded_rs2[29]),
        .I2(forwarded_rs2[28]),
        .I3(forwarded_rs1[28]),
        .O(i__carry__2_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__2
       (.I0(forwarded_rs2[29]),
        .I1(forwarded_rs1[29]),
        .I2(forwarded_rs1[28]),
        .I3(forwarded_rs2[28]),
        .O(i__carry__2_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__0
       (.I0(forwarded_rs1[27]),
        .I1(forwarded_rs2[27]),
        .I2(forwarded_rs2[26]),
        .I3(forwarded_rs1[26]),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__1
       (.I0(forwarded_rs1[27]),
        .I1(forwarded_rs2[27]),
        .I2(forwarded_rs2[26]),
        .I3(forwarded_rs1[26]),
        .O(i__carry__2_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__2
       (.I0(forwarded_rs2[26]),
        .I1(forwarded_rs1[26]),
        .I2(forwarded_rs2[27]),
        .I3(forwarded_rs1[27]),
        .O(i__carry__2_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__0
       (.I0(forwarded_rs1[25]),
        .I1(forwarded_rs2[25]),
        .I2(forwarded_rs2[24]),
        .I3(forwarded_rs1[24]),
        .O(i__carry__2_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__1
       (.I0(forwarded_rs1[25]),
        .I1(forwarded_rs2[25]),
        .I2(forwarded_rs2[24]),
        .I3(forwarded_rs1[24]),
        .O(i__carry__2_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__2
       (.I0(forwarded_rs2[24]),
        .I1(forwarded_rs1[24]),
        .I2(forwarded_rs2[25]),
        .I3(forwarded_rs1[25]),
        .O(i__carry__2_i_8__2_n_0));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry__2_i_9
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[30]),
        .I3(EX_MEM_i[30]),
        .I4(MEM_WB_i[30]),
        .O(forwarded_rs2[30]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry_i_10
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[7]),
        .I3(EX_MEM_i[7]),
        .I4(MEM_WB_i[7]),
        .O(forwarded_rs2[7]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    i__carry_i_11
       (.I0(rs2_data[4]),
        .I1(EX_MEM_i[4]),
        .I2(\FU_inst/ForwardB0__0 ),
        .I3(\FU_inst/ForwardB12_out ),
        .I4(MEM_WB_i[4]),
        .O(forwarded_rs2[4]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry_i_12
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[5]),
        .I3(EX_MEM_i[5]),
        .I4(MEM_WB_i[5]),
        .O(forwarded_rs2[5]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    i__carry_i_13
       (.I0(rs2_data[2]),
        .I1(EX_MEM_i[2]),
        .I2(\FU_inst/ForwardB0__0 ),
        .I3(\FU_inst/ForwardB12_out ),
        .I4(MEM_WB_i[2]),
        .O(forwarded_rs2[2]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    i__carry_i_14
       (.I0(rs2_data[3]),
        .I1(EX_MEM_i[3]),
        .I2(\FU_inst/ForwardB0__0 ),
        .I3(\FU_inst/ForwardB12_out ),
        .I4(MEM_WB_i[3]),
        .O(forwarded_rs2[3]));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry_i_15
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[0]),
        .I3(EX_MEM_i[0]),
        .I4(MEM_WB_i[0]),
        .O(forwarded_rs2[0]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    i__carry_i_16
       (.I0(rs2_data[1]),
        .I1(EX_MEM_i[1]),
        .I2(\FU_inst/ForwardB0__0 ),
        .I3(\FU_inst/ForwardB12_out ),
        .I4(MEM_WB_i[1]),
        .O(forwarded_rs2[1]));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    i__carry_i_17
       (.I0(\FU_inst/p_4_in ),
        .I1(MEM_WB_RD_i[4]),
        .I2(ID_EX_RT_i[4]),
        .I3(i__carry_i_19_n_0),
        .I4(ID_EX_RT_i[3]),
        .I5(MEM_WB_RD_i[3]),
        .O(\FU_inst/ForwardB0__0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    i__carry_i_18
       (.I0(\FU_inst/p_7_in ),
        .I1(EX_MEM_RD_i[4]),
        .I2(ID_EX_RT_i[4]),
        .I3(i__carry_i_20_n_0),
        .I4(ID_EX_RT_i[3]),
        .I5(EX_MEM_RD_i[3]),
        .O(\FU_inst/ForwardB12_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_19
       (.I0(MEM_WB_RD_i[0]),
        .I1(ID_EX_RT_i[0]),
        .I2(ID_EX_RT_i[2]),
        .I3(MEM_WB_RD_i[2]),
        .I4(ID_EX_RT_i[1]),
        .I5(MEM_WB_RD_i[1]),
        .O(i__carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(forwarded_rs1[6]),
        .I1(forwarded_rs2[6]),
        .I2(forwarded_rs2[7]),
        .I3(forwarded_rs1[7]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(forwarded_rs2[6]),
        .I1(forwarded_rs1[6]),
        .I2(forwarded_rs1[7]),
        .I3(forwarded_rs2[7]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(forwarded_rs2[6]),
        .I1(forwarded_rs1[6]),
        .I2(forwarded_rs1[7]),
        .I3(forwarded_rs2[7]),
        .O(i__carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_20
       (.I0(EX_MEM_RD_i[0]),
        .I1(ID_EX_RT_i[0]),
        .I2(ID_EX_RT_i[2]),
        .I3(EX_MEM_RD_i[2]),
        .I4(ID_EX_RT_i[1]),
        .I5(EX_MEM_RD_i[1]),
        .O(i__carry_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(forwarded_rs1[4]),
        .I1(forwarded_rs2[4]),
        .I2(forwarded_rs2[5]),
        .I3(forwarded_rs1[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(forwarded_rs2[4]),
        .I1(forwarded_rs1[4]),
        .I2(forwarded_rs1[5]),
        .I3(forwarded_rs2[5]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(forwarded_rs2[4]),
        .I1(forwarded_rs1[4]),
        .I2(forwarded_rs1[5]),
        .I3(forwarded_rs2[5]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(forwarded_rs1[2]),
        .I1(forwarded_rs2[2]),
        .I2(forwarded_rs2[3]),
        .I3(forwarded_rs1[3]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(forwarded_rs2[2]),
        .I1(forwarded_rs1[2]),
        .I2(forwarded_rs1[3]),
        .I3(forwarded_rs2[3]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(forwarded_rs2[2]),
        .I1(forwarded_rs1[2]),
        .I2(forwarded_rs1[3]),
        .I3(forwarded_rs2[3]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(forwarded_rs1[0]),
        .I1(forwarded_rs2[0]),
        .I2(forwarded_rs2[1]),
        .I3(forwarded_rs1[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(forwarded_rs2[0]),
        .I1(forwarded_rs1[0]),
        .I2(forwarded_rs1[1]),
        .I3(forwarded_rs2[1]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__2
       (.I0(forwarded_rs2[0]),
        .I1(forwarded_rs1[0]),
        .I2(forwarded_rs1[1]),
        .I3(forwarded_rs2[1]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(forwarded_rs1[7]),
        .I1(forwarded_rs2[7]),
        .I2(forwarded_rs2[6]),
        .I3(forwarded_rs1[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(forwarded_rs1[7]),
        .I1(forwarded_rs2[7]),
        .I2(forwarded_rs2[6]),
        .I3(forwarded_rs1[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(forwarded_rs2[6]),
        .I1(forwarded_rs1[6]),
        .I2(forwarded_rs2[7]),
        .I3(forwarded_rs1[7]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(forwarded_rs1[5]),
        .I1(forwarded_rs2[5]),
        .I2(forwarded_rs2[4]),
        .I3(forwarded_rs1[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(forwarded_rs1[5]),
        .I1(forwarded_rs2[5]),
        .I2(forwarded_rs2[4]),
        .I3(forwarded_rs1[4]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(forwarded_rs2[5]),
        .I1(forwarded_rs1[5]),
        .I2(forwarded_rs1[4]),
        .I3(forwarded_rs2[4]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(forwarded_rs1[3]),
        .I1(forwarded_rs2[3]),
        .I2(forwarded_rs2[2]),
        .I3(forwarded_rs1[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(forwarded_rs1[3]),
        .I1(forwarded_rs2[3]),
        .I2(forwarded_rs2[2]),
        .I3(forwarded_rs1[2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(forwarded_rs2[2]),
        .I1(forwarded_rs1[2]),
        .I2(forwarded_rs2[3]),
        .I3(forwarded_rs1[3]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(forwarded_rs1[1]),
        .I1(forwarded_rs2[1]),
        .I2(forwarded_rs2[0]),
        .I3(forwarded_rs1[0]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(forwarded_rs1[1]),
        .I1(forwarded_rs2[1]),
        .I2(forwarded_rs2[0]),
        .I3(forwarded_rs1[0]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(forwarded_rs2[0]),
        .I1(forwarded_rs1[0]),
        .I2(forwarded_rs2[1]),
        .I3(forwarded_rs1[1]),
        .O(i__carry_i_8__2_n_0));
  LUT5 #(
    .INIT(32'hFE32DC10)) 
    i__carry_i_9
       (.I0(\FU_inst/ForwardB0__0 ),
        .I1(\FU_inst/ForwardB12_out ),
        .I2(rs2_data[6]),
        .I3(EX_MEM_i[6]),
        .I4(MEM_WB_i[6]),
        .O(forwarded_rs2[6]));
endmodule

(* ORIG_REF_NAME = "ExecutionStage" *) 
module EX_ExecutionStage_0_0_ExecutionStage
   (branch_addr,
    alu_out,
    branch_taken,
    rs2_data,
    EX_MEM_i,
    MEM_WB_i,
    is_jalr,
    PC_ID_EX,
    immediate_data,
    alu_op,
    funct3,
    is_lui,
    funct7,
    ALUSrcA,
    alu_src,
    EX_MEM_RD_i,
    ID_EX_RT_i,
    rs1_data,
    ID_EX_RS_i,
    EX_MEM_RegWrite_i,
    MEM_WB_RD_i,
    MEM_WB_RegWrite_i);
  output [31:0]branch_addr;
  output [31:0]alu_out;
  output branch_taken;
  input [31:0]rs2_data;
  input [31:0]EX_MEM_i;
  input [31:0]MEM_WB_i;
  input is_jalr;
  input [31:0]PC_ID_EX;
  input [31:0]immediate_data;
  input [1:0]alu_op;
  input [2:0]funct3;
  input is_lui;
  input [0:0]funct7;
  input ALUSrcA;
  input alu_src;
  input [4:0]EX_MEM_RD_i;
  input [4:0]ID_EX_RT_i;
  input [31:0]rs1_data;
  input [4:0]ID_EX_RS_i;
  input EX_MEM_RegWrite_i;
  input [4:0]MEM_WB_RD_i;
  input MEM_WB_RegWrite_i;

  wire ALUSrcA;
  wire [4:0]EX_MEM_RD_i;
  wire EX_MEM_RegWrite_i;
  wire [31:0]EX_MEM_i;
  wire [4:0]ID_EX_RS_i;
  wire [4:0]ID_EX_RT_i;
  wire [4:0]MEM_WB_RD_i;
  wire MEM_WB_RegWrite_i;
  wire [31:0]MEM_WB_i;
  wire [31:0]PC_ID_EX;
  wire [31:1]PC_plus_4__60;
  wire PC_plus_4_carry__0_n_0;
  wire PC_plus_4_carry__0_n_1;
  wire PC_plus_4_carry__0_n_2;
  wire PC_plus_4_carry__0_n_3;
  wire PC_plus_4_carry__1_n_0;
  wire PC_plus_4_carry__1_n_1;
  wire PC_plus_4_carry__1_n_2;
  wire PC_plus_4_carry__1_n_3;
  wire PC_plus_4_carry__2_n_0;
  wire PC_plus_4_carry__2_n_1;
  wire PC_plus_4_carry__2_n_2;
  wire PC_plus_4_carry__2_n_3;
  wire PC_plus_4_carry__3_n_0;
  wire PC_plus_4_carry__3_n_1;
  wire PC_plus_4_carry__3_n_2;
  wire PC_plus_4_carry__3_n_3;
  wire PC_plus_4_carry__4_n_0;
  wire PC_plus_4_carry__4_n_1;
  wire PC_plus_4_carry__4_n_2;
  wire PC_plus_4_carry__4_n_3;
  wire PC_plus_4_carry__5_n_0;
  wire PC_plus_4_carry__5_n_1;
  wire PC_plus_4_carry__5_n_2;
  wire PC_plus_4_carry__5_n_3;
  wire PC_plus_4_carry__6_n_2;
  wire PC_plus_4_carry__6_n_3;
  wire PC_plus_4_carry_i_1_n_0;
  wire PC_plus_4_carry_n_0;
  wire PC_plus_4_carry_n_1;
  wire PC_plus_4_carry_n_2;
  wire PC_plus_4_carry_n_3;
  wire [1:0]alu_op;
  wire [31:0]alu_out;
  wire alu_src;
  wire [31:0]branch_addr;
  wire [31:0]branch_addr0__93;
  wire branch_addr0_carry__0_n_0;
  wire branch_addr0_carry__0_n_1;
  wire branch_addr0_carry__0_n_2;
  wire branch_addr0_carry__0_n_3;
  wire branch_addr0_carry__1_n_0;
  wire branch_addr0_carry__1_n_1;
  wire branch_addr0_carry__1_n_2;
  wire branch_addr0_carry__1_n_3;
  wire branch_addr0_carry__2_n_0;
  wire branch_addr0_carry__2_n_1;
  wire branch_addr0_carry__2_n_2;
  wire branch_addr0_carry__2_n_3;
  wire branch_addr0_carry__3_n_0;
  wire branch_addr0_carry__3_n_1;
  wire branch_addr0_carry__3_n_2;
  wire branch_addr0_carry__3_n_3;
  wire branch_addr0_carry__4_n_0;
  wire branch_addr0_carry__4_n_1;
  wire branch_addr0_carry__4_n_2;
  wire branch_addr0_carry__4_n_3;
  wire branch_addr0_carry__5_n_0;
  wire branch_addr0_carry__5_n_1;
  wire branch_addr0_carry__5_n_2;
  wire branch_addr0_carry__5_n_3;
  wire branch_addr0_carry__6_n_1;
  wire branch_addr0_carry__6_n_2;
  wire branch_addr0_carry__6_n_3;
  wire branch_addr0_carry_i_1__0_n_0;
  wire branch_addr0_carry_i_1__1_n_0;
  wire branch_addr0_carry_i_1__2_n_0;
  wire branch_addr0_carry_i_1__3_n_0;
  wire branch_addr0_carry_i_1__4_n_0;
  wire branch_addr0_carry_i_1__5_n_0;
  wire branch_addr0_carry_i_1__6_n_0;
  wire branch_addr0_carry_i_1_n_0;
  wire branch_addr0_carry_i_2__0_n_0;
  wire branch_addr0_carry_i_2__1_n_0;
  wire branch_addr0_carry_i_2__2_n_0;
  wire branch_addr0_carry_i_2__3_n_0;
  wire branch_addr0_carry_i_2__4_n_0;
  wire branch_addr0_carry_i_2__5_n_0;
  wire branch_addr0_carry_i_2__6_n_0;
  wire branch_addr0_carry_i_2_n_0;
  wire branch_addr0_carry_i_3__0_n_0;
  wire branch_addr0_carry_i_3__1_n_0;
  wire branch_addr0_carry_i_3__2_n_0;
  wire branch_addr0_carry_i_3__3_n_0;
  wire branch_addr0_carry_i_3__4_n_0;
  wire branch_addr0_carry_i_3__5_n_0;
  wire branch_addr0_carry_i_3__6_n_0;
  wire branch_addr0_carry_i_3_n_0;
  wire branch_addr0_carry_i_4__0_n_0;
  wire branch_addr0_carry_i_4__1_n_0;
  wire branch_addr0_carry_i_4__2_n_0;
  wire branch_addr0_carry_i_4__3_n_0;
  wire branch_addr0_carry_i_4__4_n_0;
  wire branch_addr0_carry_i_4__5_n_0;
  wire branch_addr0_carry_i_4__6_n_0;
  wire branch_addr0_carry_i_4_n_0;
  wire branch_addr0_carry_n_0;
  wire branch_addr0_carry_n_1;
  wire branch_addr0_carry_n_2;
  wire branch_addr0_carry_n_3;
  wire branch_taken;
  wire [31:0]forwarded_rs1;
  wire [31:0]forwarded_rs2;
  wire [2:0]funct3;
  wire [0:0]funct7;
  wire [31:0]immediate_data;
  wire is_jalr;
  wire is_lui;
  wire [31:0]rs1_data;
  wire [31:0]rs2_data;
  wire [3:2]NLW_PC_plus_4_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_PC_plus_4_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_branch_addr0_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry
       (.CI(1'b0),
        .CO({PC_plus_4_carry_n_0,PC_plus_4_carry_n_1,PC_plus_4_carry_n_2,PC_plus_4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC_ID_EX[2],1'b0}),
        .O(PC_plus_4__60[4:1]),
        .S({PC_ID_EX[4:3],PC_plus_4_carry_i_1_n_0,PC_ID_EX[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__0
       (.CI(PC_plus_4_carry_n_0),
        .CO({PC_plus_4_carry__0_n_0,PC_plus_4_carry__0_n_1,PC_plus_4_carry__0_n_2,PC_plus_4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[8:5]),
        .S(PC_ID_EX[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__1
       (.CI(PC_plus_4_carry__0_n_0),
        .CO({PC_plus_4_carry__1_n_0,PC_plus_4_carry__1_n_1,PC_plus_4_carry__1_n_2,PC_plus_4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[12:9]),
        .S(PC_ID_EX[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__2
       (.CI(PC_plus_4_carry__1_n_0),
        .CO({PC_plus_4_carry__2_n_0,PC_plus_4_carry__2_n_1,PC_plus_4_carry__2_n_2,PC_plus_4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[16:13]),
        .S(PC_ID_EX[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__3
       (.CI(PC_plus_4_carry__2_n_0),
        .CO({PC_plus_4_carry__3_n_0,PC_plus_4_carry__3_n_1,PC_plus_4_carry__3_n_2,PC_plus_4_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[20:17]),
        .S(PC_ID_EX[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__4
       (.CI(PC_plus_4_carry__3_n_0),
        .CO({PC_plus_4_carry__4_n_0,PC_plus_4_carry__4_n_1,PC_plus_4_carry__4_n_2,PC_plus_4_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[24:21]),
        .S(PC_ID_EX[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__5
       (.CI(PC_plus_4_carry__4_n_0),
        .CO({PC_plus_4_carry__5_n_0,PC_plus_4_carry__5_n_1,PC_plus_4_carry__5_n_2,PC_plus_4_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PC_plus_4__60[28:25]),
        .S(PC_ID_EX[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_plus_4_carry__6
       (.CI(PC_plus_4_carry__5_n_0),
        .CO({NLW_PC_plus_4_carry__6_CO_UNCONNECTED[3:2],PC_plus_4_carry__6_n_2,PC_plus_4_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PC_plus_4_carry__6_O_UNCONNECTED[3],PC_plus_4__60[31:29]}),
        .S({1'b0,PC_ID_EX[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    PC_plus_4_carry_i_1
       (.I0(PC_ID_EX[2]),
        .O(PC_plus_4_carry_i_1_n_0));
  EX_ExecutionStage_0_0_ALU alu_inst
       (.ALUSrcA(ALUSrcA),
        .PC_ID_EX(PC_ID_EX),
        .PC_plus_4__60(PC_plus_4__60),
        .alu_op(alu_op),
        .alu_out(alu_out),
        .alu_src(alu_src),
        .branch_addr(branch_addr[31:1]),
        .branch_addr0__93(branch_addr0__93[31:1]),
        .forwarded_rs1(forwarded_rs1),
        .forwarded_rs2(forwarded_rs2),
        .funct3(funct3),
        .funct7(funct7),
        .immediate_data(immediate_data),
        .is_jalr(is_jalr),
        .is_lui(is_lui));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry
       (.CI(1'b0),
        .CO({branch_addr0_carry_n_0,branch_addr0_carry_n_1,branch_addr0_carry_n_2,branch_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[3:0]),
        .O(branch_addr0__93[3:0]),
        .S({branch_addr0_carry_i_1__0_n_0,branch_addr0_carry_i_2_n_0,branch_addr0_carry_i_3_n_0,branch_addr0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__0
       (.CI(branch_addr0_carry_n_0),
        .CO({branch_addr0_carry__0_n_0,branch_addr0_carry__0_n_1,branch_addr0_carry__0_n_2,branch_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[7:4]),
        .O(branch_addr0__93[7:4]),
        .S({branch_addr0_carry_i_1__1_n_0,branch_addr0_carry_i_2__0_n_0,branch_addr0_carry_i_3__0_n_0,branch_addr0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__1
       (.CI(branch_addr0_carry__0_n_0),
        .CO({branch_addr0_carry__1_n_0,branch_addr0_carry__1_n_1,branch_addr0_carry__1_n_2,branch_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[11:8]),
        .O(branch_addr0__93[11:8]),
        .S({branch_addr0_carry_i_1__2_n_0,branch_addr0_carry_i_2__1_n_0,branch_addr0_carry_i_3__1_n_0,branch_addr0_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__2
       (.CI(branch_addr0_carry__1_n_0),
        .CO({branch_addr0_carry__2_n_0,branch_addr0_carry__2_n_1,branch_addr0_carry__2_n_2,branch_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[15:12]),
        .O(branch_addr0__93[15:12]),
        .S({branch_addr0_carry_i_1__3_n_0,branch_addr0_carry_i_2__2_n_0,branch_addr0_carry_i_3__2_n_0,branch_addr0_carry_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__3
       (.CI(branch_addr0_carry__2_n_0),
        .CO({branch_addr0_carry__3_n_0,branch_addr0_carry__3_n_1,branch_addr0_carry__3_n_2,branch_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[19:16]),
        .O(branch_addr0__93[19:16]),
        .S({branch_addr0_carry_i_1__4_n_0,branch_addr0_carry_i_2__3_n_0,branch_addr0_carry_i_3__3_n_0,branch_addr0_carry_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__4
       (.CI(branch_addr0_carry__3_n_0),
        .CO({branch_addr0_carry__4_n_0,branch_addr0_carry__4_n_1,branch_addr0_carry__4_n_2,branch_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[23:20]),
        .O(branch_addr0__93[23:20]),
        .S({branch_addr0_carry_i_1__5_n_0,branch_addr0_carry_i_2__4_n_0,branch_addr0_carry_i_3__4_n_0,branch_addr0_carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__5
       (.CI(branch_addr0_carry__4_n_0),
        .CO({branch_addr0_carry__5_n_0,branch_addr0_carry__5_n_1,branch_addr0_carry__5_n_2,branch_addr0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(PC_ID_EX[27:24]),
        .O(branch_addr0__93[27:24]),
        .S({branch_addr0_carry_i_1__6_n_0,branch_addr0_carry_i_2__5_n_0,branch_addr0_carry_i_3__5_n_0,branch_addr0_carry_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr0_carry__6
       (.CI(branch_addr0_carry__5_n_0),
        .CO({NLW_branch_addr0_carry__6_CO_UNCONNECTED[3],branch_addr0_carry__6_n_1,branch_addr0_carry__6_n_2,branch_addr0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,PC_ID_EX[30:28]}),
        .O(branch_addr0__93[31:28]),
        .S({branch_addr0_carry_i_1_n_0,branch_addr0_carry_i_2__6_n_0,branch_addr0_carry_i_3__6_n_0,branch_addr0_carry_i_4__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1
       (.I0(PC_ID_EX[31]),
        .I1(immediate_data[31]),
        .O(branch_addr0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__0
       (.I0(PC_ID_EX[3]),
        .I1(immediate_data[3]),
        .O(branch_addr0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__1
       (.I0(PC_ID_EX[7]),
        .I1(immediate_data[7]),
        .O(branch_addr0_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__2
       (.I0(PC_ID_EX[11]),
        .I1(immediate_data[11]),
        .O(branch_addr0_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__3
       (.I0(PC_ID_EX[15]),
        .I1(immediate_data[15]),
        .O(branch_addr0_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__4
       (.I0(PC_ID_EX[19]),
        .I1(immediate_data[19]),
        .O(branch_addr0_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__5
       (.I0(PC_ID_EX[23]),
        .I1(immediate_data[23]),
        .O(branch_addr0_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_1__6
       (.I0(PC_ID_EX[27]),
        .I1(immediate_data[27]),
        .O(branch_addr0_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2
       (.I0(PC_ID_EX[2]),
        .I1(immediate_data[2]),
        .O(branch_addr0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__0
       (.I0(PC_ID_EX[6]),
        .I1(immediate_data[6]),
        .O(branch_addr0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__1
       (.I0(PC_ID_EX[10]),
        .I1(immediate_data[10]),
        .O(branch_addr0_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__2
       (.I0(PC_ID_EX[14]),
        .I1(immediate_data[14]),
        .O(branch_addr0_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__3
       (.I0(PC_ID_EX[18]),
        .I1(immediate_data[18]),
        .O(branch_addr0_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__4
       (.I0(PC_ID_EX[22]),
        .I1(immediate_data[22]),
        .O(branch_addr0_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__5
       (.I0(PC_ID_EX[26]),
        .I1(immediate_data[26]),
        .O(branch_addr0_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_2__6
       (.I0(PC_ID_EX[30]),
        .I1(immediate_data[30]),
        .O(branch_addr0_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3
       (.I0(PC_ID_EX[1]),
        .I1(immediate_data[1]),
        .O(branch_addr0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__0
       (.I0(PC_ID_EX[5]),
        .I1(immediate_data[5]),
        .O(branch_addr0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__1
       (.I0(PC_ID_EX[9]),
        .I1(immediate_data[9]),
        .O(branch_addr0_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__2
       (.I0(PC_ID_EX[13]),
        .I1(immediate_data[13]),
        .O(branch_addr0_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__3
       (.I0(PC_ID_EX[17]),
        .I1(immediate_data[17]),
        .O(branch_addr0_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__4
       (.I0(PC_ID_EX[21]),
        .I1(immediate_data[21]),
        .O(branch_addr0_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__5
       (.I0(PC_ID_EX[25]),
        .I1(immediate_data[25]),
        .O(branch_addr0_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_3__6
       (.I0(PC_ID_EX[29]),
        .I1(immediate_data[29]),
        .O(branch_addr0_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4
       (.I0(PC_ID_EX[0]),
        .I1(immediate_data[0]),
        .O(branch_addr0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__0
       (.I0(PC_ID_EX[4]),
        .I1(immediate_data[4]),
        .O(branch_addr0_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__1
       (.I0(PC_ID_EX[8]),
        .I1(immediate_data[8]),
        .O(branch_addr0_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__2
       (.I0(PC_ID_EX[12]),
        .I1(immediate_data[12]),
        .O(branch_addr0_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__3
       (.I0(PC_ID_EX[16]),
        .I1(immediate_data[16]),
        .O(branch_addr0_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__4
       (.I0(PC_ID_EX[20]),
        .I1(immediate_data[20]),
        .O(branch_addr0_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__5
       (.I0(PC_ID_EX[24]),
        .I1(immediate_data[24]),
        .O(branch_addr0_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr0_carry_i_4__6
       (.I0(PC_ID_EX[28]),
        .I1(immediate_data[28]),
        .O(branch_addr0_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \branch_addr[0]_INST_0 
       (.I0(branch_addr0__93[0]),
        .I1(is_jalr),
        .O(branch_addr[0]));
  EX_ExecutionStage_0_0_Branch_Unit branch_unit_inst
       (.EX_MEM_RD_i(EX_MEM_RD_i),
        .EX_MEM_RegWrite_i(EX_MEM_RegWrite_i),
        .EX_MEM_i(EX_MEM_i),
        .ID_EX_RS_i(ID_EX_RS_i),
        .ID_EX_RT_i(ID_EX_RT_i),
        .MEM_WB_RD_i(MEM_WB_RD_i),
        .MEM_WB_RegWrite_i(MEM_WB_RegWrite_i),
        .MEM_WB_i(MEM_WB_i),
        .branch_taken(branch_taken),
        .forwarded_rs1(forwarded_rs1),
        .forwarded_rs2(forwarded_rs2),
        .funct3(funct3),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data));
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
