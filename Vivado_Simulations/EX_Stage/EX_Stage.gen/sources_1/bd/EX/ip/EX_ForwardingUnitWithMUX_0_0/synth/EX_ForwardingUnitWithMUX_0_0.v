// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ForwardingUnitWithMUX:1.0
// IP Revision: 1

(* X_CORE_INFO = "ForwardingUnitWithMUX,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{}" *)
(* CORE_GENERATION_INFO = "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ForwardingUnitWithMUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module EX_ForwardingUnitWithMUX_0_0 (
  EX_MEM_RegWrite_i,
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
  ForwardedDataB_o
);

input wire EX_MEM_RegWrite_i;
input wire MEM_WB_RegWrite_i;
input wire [4 : 0] ID_EX_RS_i;
input wire [4 : 0] ID_EX_RT_i;
input wire [4 : 0] EX_MEM_RD_i;
input wire [4 : 0] MEM_WB_RD_i;
input wire [31 : 0] rs1_data;
input wire [31 : 0] rs2_data;
input wire [31 : 0] EX_MEM_i;
input wire [31 : 0] MEM_WB_i;
output wire [31 : 0] ForwardedDataA_o;
output wire [31 : 0] ForwardedDataB_o;

  ForwardingUnitWithMUX inst (
    .EX_MEM_RegWrite_i(EX_MEM_RegWrite_i),
    .MEM_WB_RegWrite_i(MEM_WB_RegWrite_i),
    .ID_EX_RS_i(ID_EX_RS_i),
    .ID_EX_RT_i(ID_EX_RT_i),
    .EX_MEM_RD_i(EX_MEM_RD_i),
    .MEM_WB_RD_i(MEM_WB_RD_i),
    .rs1_data(rs1_data),
    .rs2_data(rs2_data),
    .EX_MEM_i(EX_MEM_i),
    .MEM_WB_i(MEM_WB_i),
    .ForwardedDataA_o(ForwardedDataA_o),
    .ForwardedDataB_o(ForwardedDataB_o)
  );
endmodule
