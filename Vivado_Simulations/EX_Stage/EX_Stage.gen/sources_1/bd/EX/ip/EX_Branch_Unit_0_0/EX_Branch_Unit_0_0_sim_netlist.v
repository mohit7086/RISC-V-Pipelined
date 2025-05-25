// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Mar 20 13:42:31 2025
// Host        : Mohit running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_Branch_Unit_0_0/EX_Branch_Unit_0_0_sim_netlist.v
// Design      : EX_Branch_Unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "EX_Branch_Unit_0_0,Branch_Unit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Branch_Unit,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module EX_Branch_Unit_0_0
   (funct3,
    a,
    b,
    branch_taken);
  input [2:0]funct3;
  input [31:0]a;
  input [31:0]b;
  output branch_taken;

  wire [31:0]a;
  wire [31:0]b;
  wire branch_taken;
  wire [2:0]funct3;

  EX_Branch_Unit_0_0_Branch_Unit inst
       (.a(a),
        .b(b),
        .branch_taken(branch_taken),
        .funct3(funct3));
endmodule

(* ORIG_REF_NAME = "Branch_Unit" *) 
module EX_Branch_Unit_0_0_Branch_Unit
   (branch_taken,
    b,
    a,
    funct3);
  output branch_taken;
  input [31:0]b;
  input [31:0]a;
  input [2:0]funct3;

  wire [31:0]a;
  wire [31:0]b;
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
  wire branch_taken_INST_0_i_10_n_1;
  wire branch_taken_INST_0_i_10_n_2;
  wire branch_taken_INST_0_i_10_n_3;
  wire branch_taken_INST_0_i_11_n_0;
  wire branch_taken_INST_0_i_12_n_0;
  wire branch_taken_INST_0_i_13_n_0;
  wire branch_taken_INST_0_i_14_n_0;
  wire branch_taken_INST_0_i_14_n_1;
  wire branch_taken_INST_0_i_14_n_2;
  wire branch_taken_INST_0_i_14_n_3;
  wire branch_taken_INST_0_i_15_n_0;
  wire branch_taken_INST_0_i_16_n_0;
  wire branch_taken_INST_0_i_17_n_0;
  wire branch_taken_INST_0_i_18_n_0;
  wire branch_taken_INST_0_i_19_n_0;
  wire branch_taken_INST_0_i_19_n_1;
  wire branch_taken_INST_0_i_19_n_2;
  wire branch_taken_INST_0_i_19_n_3;
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
  wire branch_taken_INST_0_i_2_n_0;
  wire branch_taken_INST_0_i_30_n_0;
  wire branch_taken_INST_0_i_31_n_0;
  wire branch_taken_INST_0_i_3_n_0;
  wire branch_taken_INST_0_i_4_n_2;
  wire branch_taken_INST_0_i_4_n_3;
  wire branch_taken_INST_0_i_5_n_2;
  wire branch_taken_INST_0_i_5_n_3;
  wire branch_taken_INST_0_i_6_n_0;
  wire branch_taken_INST_0_i_6_n_1;
  wire branch_taken_INST_0_i_6_n_2;
  wire branch_taken_INST_0_i_6_n_3;
  wire branch_taken_INST_0_i_7_n_0;
  wire branch_taken_INST_0_i_8_n_0;
  wire branch_taken_INST_0_i_9_n_0;
  wire data0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire [2:0]funct3;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7__4_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8__3_n_0;
  wire i__carry_i_8__4_n_0;
  wire i__carry_i_8_n_0;
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
  wire [3:0]NLW_branch_taken_INST_0_i_10_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_14_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_19_O_UNCONNECTED;
  wire [3:3]NLW_branch_taken_INST_0_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_4_O_UNCONNECTED;
  wire [3:3]NLW_branch_taken_INST_0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_5_O_UNCONNECTED;
  wire [3:0]NLW_branch_taken_INST_0_i_6_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__1/i__carry_n_0 ,\branch_taken0_inferred__1/i__carry_n_1 ,\branch_taken0_inferred__1/i__carry_n_2 ,\branch_taken0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__4_n_0,i__carry_i_7__4_n_0,i__carry_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__0 
       (.CI(\branch_taken0_inferred__1/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__1/i__carry__0_n_0 ,\branch_taken0_inferred__1/i__carry__0_n_1 ,\branch_taken0_inferred__1/i__carry__0_n_2 ,\branch_taken0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__1 
       (.CI(\branch_taken0_inferred__1/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__1/i__carry__1_n_0 ,\branch_taken0_inferred__1/i__carry__1_n_1 ,\branch_taken0_inferred__1/i__carry__1_n_2 ,\branch_taken0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__1/i__carry__2 
       (.CI(\branch_taken0_inferred__1/i__carry__1_n_0 ),
        .CO({data2,\branch_taken0_inferred__1/i__carry__2_n_1 ,\branch_taken0_inferred__1/i__carry__2_n_2 ,\branch_taken0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__2/i__carry_n_0 ,\branch_taken0_inferred__2/i__carry_n_1 ,\branch_taken0_inferred__2/i__carry_n_2 ,\branch_taken0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__0 
       (.CI(\branch_taken0_inferred__2/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__2/i__carry__0_n_0 ,\branch_taken0_inferred__2/i__carry__0_n_1 ,\branch_taken0_inferred__2/i__carry__0_n_2 ,\branch_taken0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__1 
       (.CI(\branch_taken0_inferred__2/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__2/i__carry__1_n_0 ,\branch_taken0_inferred__2/i__carry__1_n_1 ,\branch_taken0_inferred__2/i__carry__1_n_2 ,\branch_taken0_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__2/i__carry__2 
       (.CI(\branch_taken0_inferred__2/i__carry__1_n_0 ),
        .CO({data3,\branch_taken0_inferred__2/i__carry__2_n_1 ,\branch_taken0_inferred__2/i__carry__2_n_2 ,\branch_taken0_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\branch_taken0_inferred__3/i__carry_n_0 ,\branch_taken0_inferred__3/i__carry_n_1 ,\branch_taken0_inferred__3/i__carry_n_2 ,\branch_taken0_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__3_n_0,i__carry_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__0 
       (.CI(\branch_taken0_inferred__3/i__carry_n_0 ),
        .CO({\branch_taken0_inferred__3/i__carry__0_n_0 ,\branch_taken0_inferred__3/i__carry__0_n_1 ,\branch_taken0_inferred__3/i__carry__0_n_2 ,\branch_taken0_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__1 
       (.CI(\branch_taken0_inferred__3/i__carry__0_n_0 ),
        .CO({\branch_taken0_inferred__3/i__carry__1_n_0 ,\branch_taken0_inferred__3/i__carry__1_n_1 ,\branch_taken0_inferred__3/i__carry__1_n_2 ,\branch_taken0_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \branch_taken0_inferred__3/i__carry__2 
       (.CI(\branch_taken0_inferred__3/i__carry__1_n_0 ),
        .CO({data4,\branch_taken0_inferred__3/i__carry__2_n_1 ,\branch_taken0_inferred__3/i__carry__2_n_2 ,\branch_taken0_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  MUXF7 branch_taken_INST_0
       (.I0(branch_taken_INST_0_i_2_n_0),
        .I1(branch_taken_INST_0_i_3_n_0),
        .O(branch_taken),
        .S(branch_taken_INST_0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    branch_taken_INST_0_i_1
       (.I0(funct3[1]),
        .I1(funct3[2]),
        .O(branch_taken_INST_0_i_1_n_0));
  CARRY4 branch_taken_INST_0_i_10
       (.CI(branch_taken_INST_0_i_19_n_0),
        .CO({branch_taken_INST_0_i_10_n_0,branch_taken_INST_0_i_10_n_1,branch_taken_INST_0_i_10_n_2,branch_taken_INST_0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_10_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_20_n_0,branch_taken_INST_0_i_21_n_0,branch_taken_INST_0_i_22_n_0,branch_taken_INST_0_i_23_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_INST_0_i_11
       (.I0(a[30]),
        .I1(b[30]),
        .I2(a[31]),
        .I3(b[31]),
        .O(branch_taken_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_12
       (.I0(a[27]),
        .I1(b[27]),
        .I2(b[29]),
        .I3(a[29]),
        .I4(b[28]),
        .I5(a[28]),
        .O(branch_taken_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_13
       (.I0(a[24]),
        .I1(b[24]),
        .I2(b[26]),
        .I3(a[26]),
        .I4(b[25]),
        .I5(a[25]),
        .O(branch_taken_INST_0_i_13_n_0));
  CARRY4 branch_taken_INST_0_i_14
       (.CI(1'b0),
        .CO({branch_taken_INST_0_i_14_n_0,branch_taken_INST_0_i_14_n_1,branch_taken_INST_0_i_14_n_2,branch_taken_INST_0_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_14_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_24_n_0,branch_taken_INST_0_i_25_n_0,branch_taken_INST_0_i_26_n_0,branch_taken_INST_0_i_27_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_15
       (.I0(a[21]),
        .I1(b[21]),
        .I2(b[23]),
        .I3(a[23]),
        .I4(b[22]),
        .I5(a[22]),
        .O(branch_taken_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_16
       (.I0(a[18]),
        .I1(b[18]),
        .I2(b[20]),
        .I3(a[20]),
        .I4(b[19]),
        .I5(a[19]),
        .O(branch_taken_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_17
       (.I0(a[15]),
        .I1(b[15]),
        .I2(b[17]),
        .I3(a[17]),
        .I4(b[16]),
        .I5(a[16]),
        .O(branch_taken_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_18
       (.I0(a[12]),
        .I1(b[12]),
        .I2(b[14]),
        .I3(a[14]),
        .I4(b[13]),
        .I5(a[13]),
        .O(branch_taken_INST_0_i_18_n_0));
  CARRY4 branch_taken_INST_0_i_19
       (.CI(1'b0),
        .CO({branch_taken_INST_0_i_19_n_0,branch_taken_INST_0_i_19_n_1,branch_taken_INST_0_i_19_n_2,branch_taken_INST_0_i_19_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_19_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_28_n_0,branch_taken_INST_0_i_29_n_0,branch_taken_INST_0_i_30_n_0,branch_taken_INST_0_i_31_n_0}));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    branch_taken_INST_0_i_2
       (.I0(data1),
        .I1(funct3[2]),
        .I2(funct3[1]),
        .I3(funct3[0]),
        .I4(data0),
        .O(branch_taken_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_20
       (.I0(a[21]),
        .I1(b[21]),
        .I2(b[23]),
        .I3(a[23]),
        .I4(b[22]),
        .I5(a[22]),
        .O(branch_taken_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_21
       (.I0(a[18]),
        .I1(b[18]),
        .I2(b[20]),
        .I3(a[20]),
        .I4(b[19]),
        .I5(a[19]),
        .O(branch_taken_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_22
       (.I0(a[15]),
        .I1(b[15]),
        .I2(b[17]),
        .I3(a[17]),
        .I4(b[16]),
        .I5(a[16]),
        .O(branch_taken_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_23
       (.I0(a[12]),
        .I1(b[12]),
        .I2(b[14]),
        .I3(a[14]),
        .I4(b[13]),
        .I5(a[13]),
        .O(branch_taken_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_24
       (.I0(a[9]),
        .I1(b[9]),
        .I2(b[11]),
        .I3(a[11]),
        .I4(b[10]),
        .I5(a[10]),
        .O(branch_taken_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_25
       (.I0(a[6]),
        .I1(b[6]),
        .I2(b[8]),
        .I3(a[8]),
        .I4(b[7]),
        .I5(a[7]),
        .O(branch_taken_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_26
       (.I0(a[3]),
        .I1(b[3]),
        .I2(b[5]),
        .I3(a[5]),
        .I4(b[4]),
        .I5(a[4]),
        .O(branch_taken_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_27
       (.I0(a[0]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(a[2]),
        .I4(b[1]),
        .I5(a[1]),
        .O(branch_taken_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_28
       (.I0(a[9]),
        .I1(b[9]),
        .I2(b[11]),
        .I3(a[11]),
        .I4(b[10]),
        .I5(a[10]),
        .O(branch_taken_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_29
       (.I0(a[6]),
        .I1(b[6]),
        .I2(b[8]),
        .I3(a[8]),
        .I4(b[7]),
        .I5(a[7]),
        .O(branch_taken_INST_0_i_29_n_0));
  LUT6 #(
    .INIT(64'h0A0AF808A0A0F808)) 
    branch_taken_INST_0_i_3
       (.I0(funct3[2]),
        .I1(data2),
        .I2(funct3[0]),
        .I3(data3),
        .I4(funct3[1]),
        .I5(data4),
        .O(branch_taken_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_30
       (.I0(a[3]),
        .I1(b[3]),
        .I2(b[5]),
        .I3(a[5]),
        .I4(b[4]),
        .I5(a[4]),
        .O(branch_taken_INST_0_i_30_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_31
       (.I0(a[0]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(a[2]),
        .I4(b[1]),
        .I5(a[1]),
        .O(branch_taken_INST_0_i_31_n_0));
  CARRY4 branch_taken_INST_0_i_4
       (.CI(branch_taken_INST_0_i_6_n_0),
        .CO({NLW_branch_taken_INST_0_i_4_CO_UNCONNECTED[3],data1,branch_taken_INST_0_i_4_n_2,branch_taken_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_taken_INST_0_i_7_n_0,branch_taken_INST_0_i_8_n_0,branch_taken_INST_0_i_9_n_0}));
  CARRY4 branch_taken_INST_0_i_5
       (.CI(branch_taken_INST_0_i_10_n_0),
        .CO({NLW_branch_taken_INST_0_i_5_CO_UNCONNECTED[3],data0,branch_taken_INST_0_i_5_n_2,branch_taken_INST_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_taken_INST_0_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_taken_INST_0_i_11_n_0,branch_taken_INST_0_i_12_n_0,branch_taken_INST_0_i_13_n_0}));
  CARRY4 branch_taken_INST_0_i_6
       (.CI(branch_taken_INST_0_i_14_n_0),
        .CO({branch_taken_INST_0_i_6_n_0,branch_taken_INST_0_i_6_n_1,branch_taken_INST_0_i_6_n_2,branch_taken_INST_0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_taken_INST_0_i_6_O_UNCONNECTED[3:0]),
        .S({branch_taken_INST_0_i_15_n_0,branch_taken_INST_0_i_16_n_0,branch_taken_INST_0_i_17_n_0,branch_taken_INST_0_i_18_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    branch_taken_INST_0_i_7
       (.I0(a[30]),
        .I1(b[30]),
        .I2(a[31]),
        .I3(b[31]),
        .O(branch_taken_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_8
       (.I0(a[27]),
        .I1(b[27]),
        .I2(b[29]),
        .I3(a[29]),
        .I4(b[28]),
        .I5(a[28]),
        .O(branch_taken_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_taken_INST_0_i_9
       (.I0(a[24]),
        .I1(b[24]),
        .I2(b[26]),
        .I3(a[26]),
        .I4(b[25]),
        .I5(a[25]),
        .O(branch_taken_INST_0_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(a[14]),
        .I1(b[14]),
        .I2(b[15]),
        .I3(a[15]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__0
       (.I0(b[14]),
        .I1(a[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(a[12]),
        .I1(b[12]),
        .I2(b[13]),
        .I3(a[13]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__0
       (.I0(b[12]),
        .I1(a[12]),
        .I2(a[13]),
        .I3(b[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(a[10]),
        .I1(b[10]),
        .I2(b[11]),
        .I3(a[11]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__0
       (.I0(b[10]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(b[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(a[8]),
        .I1(b[8]),
        .I2(b[9]),
        .I3(a[9]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(b[8]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(b[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(a[14]),
        .I1(b[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(b[14]),
        .I1(a[14]),
        .I2(b[15]),
        .I3(a[15]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(a[12]),
        .I1(b[12]),
        .I2(a[13]),
        .I3(b[13]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(b[12]),
        .I1(a[12]),
        .I2(b[13]),
        .I3(a[13]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(a[10]),
        .I1(b[10]),
        .I2(a[11]),
        .I3(b[11]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(b[10]),
        .I1(a[10]),
        .I2(b[11]),
        .I3(a[11]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(a[8]),
        .I1(b[8]),
        .I2(a[9]),
        .I3(b[9]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(b[8]),
        .I1(a[8]),
        .I2(b[9]),
        .I3(a[9]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(a[22]),
        .I1(b[22]),
        .I2(b[23]),
        .I3(a[23]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1__0
       (.I0(b[22]),
        .I1(a[22]),
        .I2(a[23]),
        .I3(b[23]),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(a[20]),
        .I1(b[20]),
        .I2(b[21]),
        .I3(a[21]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2__0
       (.I0(b[20]),
        .I1(a[20]),
        .I2(a[21]),
        .I3(b[21]),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(a[18]),
        .I1(b[18]),
        .I2(b[19]),
        .I3(a[19]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3__0
       (.I0(b[18]),
        .I1(a[18]),
        .I2(a[19]),
        .I3(b[19]),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(a[16]),
        .I1(b[16]),
        .I2(b[17]),
        .I3(a[17]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4__0
       (.I0(b[16]),
        .I1(a[16]),
        .I2(a[17]),
        .I3(b[17]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(a[22]),
        .I1(b[22]),
        .I2(a[23]),
        .I3(b[23]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__0
       (.I0(b[22]),
        .I1(a[22]),
        .I2(b[23]),
        .I3(a[23]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(a[20]),
        .I1(b[20]),
        .I2(a[21]),
        .I3(b[21]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(b[20]),
        .I1(a[20]),
        .I2(b[21]),
        .I3(a[21]),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(a[18]),
        .I1(b[18]),
        .I2(a[19]),
        .I3(b[19]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(b[18]),
        .I1(a[18]),
        .I2(b[19]),
        .I3(a[19]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(a[16]),
        .I1(b[16]),
        .I2(a[17]),
        .I3(b[17]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(b[16]),
        .I1(a[16]),
        .I2(b[17]),
        .I3(a[17]),
        .O(i__carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(b[30]),
        .I1(a[30]),
        .I2(b[31]),
        .I3(a[31]),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1__0
       (.I0(a[30]),
        .I1(b[30]),
        .I2(a[31]),
        .I3(b[31]),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(a[28]),
        .I1(b[28]),
        .I2(b[29]),
        .I3(a[29]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2__0
       (.I0(b[28]),
        .I1(a[28]),
        .I2(a[29]),
        .I3(b[29]),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(a[26]),
        .I1(b[26]),
        .I2(b[27]),
        .I3(a[27]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3__0
       (.I0(b[26]),
        .I1(a[26]),
        .I2(a[27]),
        .I3(b[27]),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(a[24]),
        .I1(b[24]),
        .I2(b[25]),
        .I3(a[25]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4__0
       (.I0(b[24]),
        .I1(a[24]),
        .I2(a[25]),
        .I3(b[25]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(b[30]),
        .I1(a[30]),
        .I2(a[31]),
        .I3(b[31]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__0
       (.I0(a[30]),
        .I1(b[30]),
        .I2(b[31]),
        .I3(a[31]),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(a[28]),
        .I1(b[28]),
        .I2(a[29]),
        .I3(b[29]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__0
       (.I0(b[28]),
        .I1(a[28]),
        .I2(b[29]),
        .I3(a[29]),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(a[26]),
        .I1(b[26]),
        .I2(a[27]),
        .I3(b[27]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__0
       (.I0(b[26]),
        .I1(a[26]),
        .I2(b[27]),
        .I3(a[27]),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(a[24]),
        .I1(b[24]),
        .I2(a[25]),
        .I3(b[25]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__0
       (.I0(b[24]),
        .I1(a[24]),
        .I2(b[25]),
        .I3(a[25]),
        .O(i__carry__2_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(a[6]),
        .I1(b[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(b[30]),
        .I1(a[30]),
        .I2(a[31]),
        .I3(b[31]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(b[22]),
        .I1(a[22]),
        .I2(a[23]),
        .I3(b[23]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(b[14]),
        .I1(a[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__3
       (.I0(b[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(i__carry_i_1__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__4
       (.I0(b[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(a[4]),
        .I1(b[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(b[28]),
        .I1(a[28]),
        .I2(a[29]),
        .I3(b[29]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(b[20]),
        .I1(a[20]),
        .I2(a[21]),
        .I3(b[21]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(b[12]),
        .I1(a[12]),
        .I2(a[13]),
        .I3(b[13]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__3
       (.I0(b[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(b[5]),
        .O(i__carry_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__4
       (.I0(b[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(b[5]),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(a[2]),
        .I1(b[2]),
        .I2(b[3]),
        .I3(a[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(b[26]),
        .I1(a[26]),
        .I2(a[27]),
        .I3(b[27]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(b[18]),
        .I1(a[18]),
        .I2(a[19]),
        .I3(b[19]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(b[10]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(b[11]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__3
       (.I0(b[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(i__carry_i_3__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__4
       (.I0(b[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(a[0]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(b[24]),
        .I1(a[24]),
        .I2(a[25]),
        .I3(b[25]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(b[16]),
        .I1(a[16]),
        .I2(a[17]),
        .I3(b[17]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__2
       (.I0(b[8]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(b[9]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__3
       (.I0(b[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(b[1]),
        .O(i__carry_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__4
       (.I0(b[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(b[1]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(a[6]),
        .I1(b[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(b[30]),
        .I1(a[30]),
        .I2(b[31]),
        .I3(a[31]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(b[22]),
        .I1(a[22]),
        .I2(b[23]),
        .I3(a[23]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(b[14]),
        .I1(a[14]),
        .I2(b[15]),
        .I3(a[15]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__3
       (.I0(b[6]),
        .I1(a[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(i__carry_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__4
       (.I0(b[6]),
        .I1(a[6]),
        .I2(b[7]),
        .I3(a[7]),
        .O(i__carry_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(a[4]),
        .I1(b[4]),
        .I2(a[5]),
        .I3(b[5]),
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
    i__carry_i_6__3
       (.I0(b[4]),
        .I1(a[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__4
       (.I0(b[4]),
        .I1(a[4]),
        .I2(b[5]),
        .I3(a[5]),
        .O(i__carry_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(a[2]),
        .I1(b[2]),
        .I2(a[3]),
        .I3(b[3]),
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
    i__carry_i_7__3
       (.I0(b[2]),
        .I1(a[2]),
        .I2(b[3]),
        .I3(a[3]),
        .O(i__carry_i_7__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__4
       (.I0(b[2]),
        .I1(a[2]),
        .I2(b[3]),
        .I3(a[3]),
        .O(i__carry_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(a[0]),
        .I1(b[0]),
        .I2(a[1]),
        .I3(b[1]),
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
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__3
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(i__carry_i_8__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__4
       (.I0(b[0]),
        .I1(a[0]),
        .I2(b[1]),
        .I3(a[1]),
        .O(i__carry_i_8__4_n_0));
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
