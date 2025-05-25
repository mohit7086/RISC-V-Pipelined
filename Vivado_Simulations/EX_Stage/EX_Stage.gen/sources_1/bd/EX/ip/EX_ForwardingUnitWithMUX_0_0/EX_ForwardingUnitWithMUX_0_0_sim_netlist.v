// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:36 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ForwardingUnitWithMUX_0_0/EX_ForwardingUnitWithMUX_0_0_sim_netlist.v
// Design      : EX_ForwardingUnitWithMUX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ForwardingUnitWithMUX,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module EX_ForwardingUnitWithMUX_0_0
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
    ForwardedDataA_o,
    ForwardedDataB_o);
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

  wire [4:0]EX_MEM_RD_i;
  wire EX_MEM_RegWrite_i;
  wire [31:0]EX_MEM_i;
  wire [31:0]ForwardedDataA_o;
  wire \ForwardedDataA_o[31]_INST_0_i_4_n_0 ;
  wire \ForwardedDataA_o[31]_INST_0_i_6_n_0 ;
  wire [31:0]ForwardedDataB_o;
  wire \ForwardedDataB_o[31]_INST_0_i_3_n_0 ;
  wire \ForwardedDataB_o[31]_INST_0_i_4_n_0 ;
  wire [4:0]ID_EX_RS_i;
  wire [4:0]ID_EX_RT_i;
  wire [4:0]MEM_WB_RD_i;
  wire MEM_WB_RegWrite_i;
  wire [31:0]MEM_WB_i;
  wire \inst/ForwardA0__0 ;
  wire \inst/ForwardA18_out ;
  wire \inst/ForwardB0__0 ;
  wire \inst/ForwardB12_out ;
  wire \inst/p_4_in ;
  wire \inst/p_7_in ;
  wire [31:0]rs1_data;
  wire [31:0]rs2_data;

  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[0]_INST_0 
       (.I0(rs1_data[0]),
        .I1(EX_MEM_i[0]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[0]),
        .O(ForwardedDataA_o[0]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[10]_INST_0 
       (.I0(rs1_data[10]),
        .I1(EX_MEM_i[10]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[10]),
        .O(ForwardedDataA_o[10]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[11]_INST_0 
       (.I0(rs1_data[11]),
        .I1(EX_MEM_i[11]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[11]),
        .O(ForwardedDataA_o[11]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[12]_INST_0 
       (.I0(rs1_data[12]),
        .I1(EX_MEM_i[12]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[12]),
        .O(ForwardedDataA_o[12]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[13]_INST_0 
       (.I0(rs1_data[13]),
        .I1(EX_MEM_i[13]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[13]),
        .O(ForwardedDataA_o[13]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[14]_INST_0 
       (.I0(rs1_data[14]),
        .I1(EX_MEM_i[14]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[14]),
        .O(ForwardedDataA_o[14]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[15]_INST_0 
       (.I0(rs1_data[15]),
        .I1(EX_MEM_i[15]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[15]),
        .O(ForwardedDataA_o[15]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[16]_INST_0 
       (.I0(rs1_data[16]),
        .I1(EX_MEM_i[16]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[16]),
        .O(ForwardedDataA_o[16]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[17]_INST_0 
       (.I0(rs1_data[17]),
        .I1(EX_MEM_i[17]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[17]),
        .O(ForwardedDataA_o[17]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[18]_INST_0 
       (.I0(rs1_data[18]),
        .I1(EX_MEM_i[18]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[18]),
        .O(ForwardedDataA_o[18]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[19]_INST_0 
       (.I0(rs1_data[19]),
        .I1(EX_MEM_i[19]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[19]),
        .O(ForwardedDataA_o[19]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[1]_INST_0 
       (.I0(rs1_data[1]),
        .I1(EX_MEM_i[1]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[1]),
        .O(ForwardedDataA_o[1]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[20]_INST_0 
       (.I0(rs1_data[20]),
        .I1(EX_MEM_i[20]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[20]),
        .O(ForwardedDataA_o[20]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[21]_INST_0 
       (.I0(rs1_data[21]),
        .I1(EX_MEM_i[21]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[21]),
        .O(ForwardedDataA_o[21]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[22]_INST_0 
       (.I0(rs1_data[22]),
        .I1(EX_MEM_i[22]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[22]),
        .O(ForwardedDataA_o[22]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[23]_INST_0 
       (.I0(rs1_data[23]),
        .I1(EX_MEM_i[23]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[23]),
        .O(ForwardedDataA_o[23]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[24]_INST_0 
       (.I0(rs1_data[24]),
        .I1(EX_MEM_i[24]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[24]),
        .O(ForwardedDataA_o[24]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[25]_INST_0 
       (.I0(rs1_data[25]),
        .I1(EX_MEM_i[25]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[25]),
        .O(ForwardedDataA_o[25]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[26]_INST_0 
       (.I0(rs1_data[26]),
        .I1(EX_MEM_i[26]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[26]),
        .O(ForwardedDataA_o[26]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[27]_INST_0 
       (.I0(rs1_data[27]),
        .I1(EX_MEM_i[27]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[27]),
        .O(ForwardedDataA_o[27]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[28]_INST_0 
       (.I0(rs1_data[28]),
        .I1(EX_MEM_i[28]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[28]),
        .O(ForwardedDataA_o[28]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[29]_INST_0 
       (.I0(rs1_data[29]),
        .I1(EX_MEM_i[29]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[29]),
        .O(ForwardedDataA_o[29]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[2]_INST_0 
       (.I0(rs1_data[2]),
        .I1(EX_MEM_i[2]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[2]),
        .O(ForwardedDataA_o[2]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[30]_INST_0 
       (.I0(rs1_data[30]),
        .I1(EX_MEM_i[30]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[30]),
        .O(ForwardedDataA_o[30]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[31]_INST_0 
       (.I0(rs1_data[31]),
        .I1(EX_MEM_i[31]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[31]),
        .O(ForwardedDataA_o[31]));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \ForwardedDataA_o[31]_INST_0_i_1 
       (.I0(\inst/p_4_in ),
        .I1(MEM_WB_RD_i[4]),
        .I2(ID_EX_RS_i[4]),
        .I3(\ForwardedDataA_o[31]_INST_0_i_4_n_0 ),
        .I4(ID_EX_RS_i[3]),
        .I5(MEM_WB_RD_i[3]),
        .O(\inst/ForwardA0__0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \ForwardedDataA_o[31]_INST_0_i_2 
       (.I0(\inst/p_7_in ),
        .I1(EX_MEM_RD_i[4]),
        .I2(ID_EX_RS_i[4]),
        .I3(\ForwardedDataA_o[31]_INST_0_i_6_n_0 ),
        .I4(ID_EX_RS_i[3]),
        .I5(EX_MEM_RD_i[3]),
        .O(\inst/ForwardA18_out ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \ForwardedDataA_o[31]_INST_0_i_3 
       (.I0(MEM_WB_RegWrite_i),
        .I1(MEM_WB_RD_i[2]),
        .I2(MEM_WB_RD_i[4]),
        .I3(MEM_WB_RD_i[0]),
        .I4(MEM_WB_RD_i[1]),
        .I5(MEM_WB_RD_i[3]),
        .O(\inst/p_4_in ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ForwardedDataA_o[31]_INST_0_i_4 
       (.I0(MEM_WB_RD_i[0]),
        .I1(ID_EX_RS_i[0]),
        .I2(ID_EX_RS_i[2]),
        .I3(MEM_WB_RD_i[2]),
        .I4(ID_EX_RS_i[1]),
        .I5(MEM_WB_RD_i[1]),
        .O(\ForwardedDataA_o[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \ForwardedDataA_o[31]_INST_0_i_5 
       (.I0(EX_MEM_RegWrite_i),
        .I1(EX_MEM_RD_i[2]),
        .I2(EX_MEM_RD_i[4]),
        .I3(EX_MEM_RD_i[0]),
        .I4(EX_MEM_RD_i[1]),
        .I5(EX_MEM_RD_i[3]),
        .O(\inst/p_7_in ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ForwardedDataA_o[31]_INST_0_i_6 
       (.I0(EX_MEM_RD_i[0]),
        .I1(ID_EX_RS_i[0]),
        .I2(ID_EX_RS_i[2]),
        .I3(EX_MEM_RD_i[2]),
        .I4(ID_EX_RS_i[1]),
        .I5(EX_MEM_RD_i[1]),
        .O(\ForwardedDataA_o[31]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[3]_INST_0 
       (.I0(rs1_data[3]),
        .I1(EX_MEM_i[3]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[3]),
        .O(ForwardedDataA_o[3]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[4]_INST_0 
       (.I0(rs1_data[4]),
        .I1(EX_MEM_i[4]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[4]),
        .O(ForwardedDataA_o[4]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[5]_INST_0 
       (.I0(rs1_data[5]),
        .I1(EX_MEM_i[5]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[5]),
        .O(ForwardedDataA_o[5]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[6]_INST_0 
       (.I0(rs1_data[6]),
        .I1(EX_MEM_i[6]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[6]),
        .O(ForwardedDataA_o[6]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[7]_INST_0 
       (.I0(rs1_data[7]),
        .I1(EX_MEM_i[7]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[7]),
        .O(ForwardedDataA_o[7]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[8]_INST_0 
       (.I0(rs1_data[8]),
        .I1(EX_MEM_i[8]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[8]),
        .O(ForwardedDataA_o[8]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataA_o[9]_INST_0 
       (.I0(rs1_data[9]),
        .I1(EX_MEM_i[9]),
        .I2(\inst/ForwardA0__0 ),
        .I3(\inst/ForwardA18_out ),
        .I4(MEM_WB_i[9]),
        .O(ForwardedDataA_o[9]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[0]_INST_0 
       (.I0(rs2_data[0]),
        .I1(EX_MEM_i[0]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[0]),
        .O(ForwardedDataB_o[0]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[10]_INST_0 
       (.I0(rs2_data[10]),
        .I1(EX_MEM_i[10]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[10]),
        .O(ForwardedDataB_o[10]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[11]_INST_0 
       (.I0(rs2_data[11]),
        .I1(EX_MEM_i[11]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[11]),
        .O(ForwardedDataB_o[11]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[12]_INST_0 
       (.I0(rs2_data[12]),
        .I1(EX_MEM_i[12]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[12]),
        .O(ForwardedDataB_o[12]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[13]_INST_0 
       (.I0(rs2_data[13]),
        .I1(EX_MEM_i[13]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[13]),
        .O(ForwardedDataB_o[13]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[14]_INST_0 
       (.I0(rs2_data[14]),
        .I1(EX_MEM_i[14]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[14]),
        .O(ForwardedDataB_o[14]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[15]_INST_0 
       (.I0(rs2_data[15]),
        .I1(EX_MEM_i[15]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[15]),
        .O(ForwardedDataB_o[15]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[16]_INST_0 
       (.I0(rs2_data[16]),
        .I1(EX_MEM_i[16]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[16]),
        .O(ForwardedDataB_o[16]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[17]_INST_0 
       (.I0(rs2_data[17]),
        .I1(EX_MEM_i[17]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[17]),
        .O(ForwardedDataB_o[17]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[18]_INST_0 
       (.I0(rs2_data[18]),
        .I1(EX_MEM_i[18]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[18]),
        .O(ForwardedDataB_o[18]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[19]_INST_0 
       (.I0(rs2_data[19]),
        .I1(EX_MEM_i[19]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[19]),
        .O(ForwardedDataB_o[19]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[1]_INST_0 
       (.I0(rs2_data[1]),
        .I1(EX_MEM_i[1]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[1]),
        .O(ForwardedDataB_o[1]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[20]_INST_0 
       (.I0(rs2_data[20]),
        .I1(EX_MEM_i[20]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[20]),
        .O(ForwardedDataB_o[20]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[21]_INST_0 
       (.I0(rs2_data[21]),
        .I1(EX_MEM_i[21]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[21]),
        .O(ForwardedDataB_o[21]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[22]_INST_0 
       (.I0(rs2_data[22]),
        .I1(EX_MEM_i[22]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[22]),
        .O(ForwardedDataB_o[22]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[23]_INST_0 
       (.I0(rs2_data[23]),
        .I1(EX_MEM_i[23]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[23]),
        .O(ForwardedDataB_o[23]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[24]_INST_0 
       (.I0(rs2_data[24]),
        .I1(EX_MEM_i[24]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[24]),
        .O(ForwardedDataB_o[24]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[25]_INST_0 
       (.I0(rs2_data[25]),
        .I1(EX_MEM_i[25]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[25]),
        .O(ForwardedDataB_o[25]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[26]_INST_0 
       (.I0(rs2_data[26]),
        .I1(EX_MEM_i[26]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[26]),
        .O(ForwardedDataB_o[26]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[27]_INST_0 
       (.I0(rs2_data[27]),
        .I1(EX_MEM_i[27]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[27]),
        .O(ForwardedDataB_o[27]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[28]_INST_0 
       (.I0(rs2_data[28]),
        .I1(EX_MEM_i[28]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[28]),
        .O(ForwardedDataB_o[28]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[29]_INST_0 
       (.I0(rs2_data[29]),
        .I1(EX_MEM_i[29]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[29]),
        .O(ForwardedDataB_o[29]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[2]_INST_0 
       (.I0(rs2_data[2]),
        .I1(EX_MEM_i[2]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[2]),
        .O(ForwardedDataB_o[2]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[30]_INST_0 
       (.I0(rs2_data[30]),
        .I1(EX_MEM_i[30]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[30]),
        .O(ForwardedDataB_o[30]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[31]_INST_0 
       (.I0(rs2_data[31]),
        .I1(EX_MEM_i[31]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[31]),
        .O(ForwardedDataB_o[31]));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \ForwardedDataB_o[31]_INST_0_i_1 
       (.I0(\inst/p_4_in ),
        .I1(MEM_WB_RD_i[4]),
        .I2(ID_EX_RT_i[4]),
        .I3(\ForwardedDataB_o[31]_INST_0_i_3_n_0 ),
        .I4(ID_EX_RT_i[3]),
        .I5(MEM_WB_RD_i[3]),
        .O(\inst/ForwardB0__0 ));
  LUT6 #(
    .INIT(64'h8200000000008200)) 
    \ForwardedDataB_o[31]_INST_0_i_2 
       (.I0(\inst/p_7_in ),
        .I1(EX_MEM_RD_i[4]),
        .I2(ID_EX_RT_i[4]),
        .I3(\ForwardedDataB_o[31]_INST_0_i_4_n_0 ),
        .I4(ID_EX_RT_i[3]),
        .I5(EX_MEM_RD_i[3]),
        .O(\inst/ForwardB12_out ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ForwardedDataB_o[31]_INST_0_i_3 
       (.I0(MEM_WB_RD_i[0]),
        .I1(ID_EX_RT_i[0]),
        .I2(ID_EX_RT_i[2]),
        .I3(MEM_WB_RD_i[2]),
        .I4(ID_EX_RT_i[1]),
        .I5(MEM_WB_RD_i[1]),
        .O(\ForwardedDataB_o[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \ForwardedDataB_o[31]_INST_0_i_4 
       (.I0(EX_MEM_RD_i[0]),
        .I1(ID_EX_RT_i[0]),
        .I2(ID_EX_RT_i[2]),
        .I3(EX_MEM_RD_i[2]),
        .I4(ID_EX_RT_i[1]),
        .I5(EX_MEM_RD_i[1]),
        .O(\ForwardedDataB_o[31]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[3]_INST_0 
       (.I0(rs2_data[3]),
        .I1(EX_MEM_i[3]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[3]),
        .O(ForwardedDataB_o[3]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[4]_INST_0 
       (.I0(rs2_data[4]),
        .I1(EX_MEM_i[4]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[4]),
        .O(ForwardedDataB_o[4]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[5]_INST_0 
       (.I0(rs2_data[5]),
        .I1(EX_MEM_i[5]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[5]),
        .O(ForwardedDataB_o[5]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[6]_INST_0 
       (.I0(rs2_data[6]),
        .I1(EX_MEM_i[6]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[6]),
        .O(ForwardedDataB_o[6]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[7]_INST_0 
       (.I0(rs2_data[7]),
        .I1(EX_MEM_i[7]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[7]),
        .O(ForwardedDataB_o[7]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[8]_INST_0 
       (.I0(rs2_data[8]),
        .I1(EX_MEM_i[8]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[8]),
        .O(ForwardedDataB_o[8]));
  LUT5 #(
    .INIT(32'hCCFACC0A)) 
    \ForwardedDataB_o[9]_INST_0 
       (.I0(rs2_data[9]),
        .I1(EX_MEM_i[9]),
        .I2(\inst/ForwardB0__0 ),
        .I3(\inst/ForwardB12_out ),
        .I4(MEM_WB_i[9]),
        .O(ForwardedDataB_o[9]));
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
