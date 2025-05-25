-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:47 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ExecutionStage_0_0/EX_ExecutionStage_0_0_sim_netlist.vhdl
-- Design      : EX_ExecutionStage_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ExecutionStage_0_0_ALU is
  port (
    branch_addr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    alu_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    is_jalr : in STD_LOGIC;
    \branch_addr0__93\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \PC_plus_4__60\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    PC_ID_EX : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    is_lui : in STD_LOGIC;
    funct7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    forwarded_rs1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrcA : in STD_LOGIC;
    immediate_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    forwarded_rs2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_src : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_ExecutionStage_0_0_ALU : entity is "ALU";
end EX_ExecutionStage_0_0_ALU;

architecture STRUCTURE of EX_ExecutionStage_0_0_ALU is
  signal alu_ctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \alu_out0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_3\ : STD_LOGIC;
  signal alu_out0_carry_i_5_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_6_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_7_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_8_n_0 : STD_LOGIC;
  signal alu_out0_carry_n_0 : STD_LOGIC;
  signal alu_out0_carry_n_1 : STD_LOGIC;
  signal alu_out0_carry_n_2 : STD_LOGIC;
  signal alu_out0_carry_n_3 : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__0_n_1\ : STD_LOGIC;
  signal \alu_out2_carry__0_n_2\ : STD_LOGIC;
  signal \alu_out2_carry__0_n_3\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__1_n_1\ : STD_LOGIC;
  signal \alu_out2_carry__1_n_2\ : STD_LOGIC;
  signal \alu_out2_carry__1_n_3\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \alu_out2_carry__2_n_1\ : STD_LOGIC;
  signal \alu_out2_carry__2_n_2\ : STD_LOGIC;
  signal \alu_out2_carry__2_n_3\ : STD_LOGIC;
  signal alu_out2_carry_i_1_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_2_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_3_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_4_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_5_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_6_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_7_n_0 : STD_LOGIC;
  signal alu_out2_carry_i_8_n_0 : STD_LOGIC;
  signal alu_out2_carry_n_0 : STD_LOGIC;
  signal alu_out2_carry_n_1 : STD_LOGIC;
  signal alu_out2_carry_n_2 : STD_LOGIC;
  signal alu_out2_carry_n_3 : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \alu_out2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data6 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal operandA : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \operandA__63\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal operandB : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \operandB__95\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal raw_alu_out : STD_LOGIC_VECTOR ( 31 downto 29 );
  signal \NLW_alu_out0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_alu_out0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_alu_out2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of alu_out0_carry : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_out0_carry__6_i_13\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \alu_out0_carry__6_i_14\ : label is "soft_lutpair98";
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \alu_out0_inferred__0/i__carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of alu_out2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \alu_out2_inferred__0/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \alu_out[0]_INST_0_i_7\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \alu_out[0]_INST_0_i_8\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_10\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_12\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_7\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_13\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_3\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_7\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_10\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_12\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_3\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_7\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_6\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \alu_out[13]_INST_0_i_7\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_6\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_7\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_11\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_13\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_7\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_11\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_12\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_13\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_14\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_6\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_7\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_11\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_13\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_14\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_7\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_11\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_14\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_3\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_7\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_11\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_13\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_14\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_15\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_6\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_7\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \alu_out[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_out[1]_INST_0_i_10\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \alu_out[1]_INST_0_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \alu_out[1]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_11\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_14\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_6\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_7\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_9\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_11\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_14\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_3\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_6\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_7\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_9\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_11\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_14\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_3\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_6\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_7\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_9\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_10\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_13\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_7\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_8\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_10\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_13\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_8\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_10\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_13\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_7\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_8\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_10\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_13\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_10\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_12\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_13\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_14\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_3\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_7\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_11\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_15\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_18\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_4\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0_i_7\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_9\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0_i_10\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0_i_7\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \alu_out[31]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \alu_out[31]_INST_0_i_9\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \alu_out[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_out[3]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_out[3]_INST_0_i_9\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \alu_out[4]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_out[4]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_out[4]_INST_0_i_6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \alu_out[4]_INST_0_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \alu_out[5]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_out[5]_INST_0_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \alu_out[5]_INST_0_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_out[5]_INST_0_i_6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \alu_out[5]_INST_0_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \alu_out[6]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_out[6]_INST_0_i_10\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \alu_out[6]_INST_0_i_3\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \alu_out[6]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_10\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_12\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_7\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_10\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_3\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_7\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_12\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_3\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_7\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \branch_addr[29]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \branch_addr[30]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \branch_addr[31]_INST_0\ : label is "soft_lutpair62";
begin
alu_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_out0_carry_n_0,
      CO(2) => alu_out0_carry_n_1,
      CO(1) => alu_out0_carry_n_2,
      CO(0) => alu_out0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => operandA(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => alu_out0_carry_i_5_n_0,
      S(2) => alu_out0_carry_i_6_n_0,
      S(1) => alu_out0_carry_i_7_n_0,
      S(0) => alu_out0_carry_i_8_n_0
    );
\alu_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => alu_out0_carry_n_0,
      CO(3) => \alu_out0_carry__0_n_0\,
      CO(2) => \alu_out0_carry__0_n_1\,
      CO(1) => \alu_out0_carry__0_n_2\,
      CO(0) => \alu_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \alu_out0_carry__0_i_5_n_0\,
      S(2) => \alu_out0_carry__0_i_6_n_0\,
      S(1) => \alu_out0_carry__0_i_7_n_0\,
      S(0) => \alu_out0_carry__0_i_8_n_0\
    );
\alu_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(7),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(7),
      I3 => is_lui,
      O => operandA(7)
    );
\alu_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(6),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(6),
      I3 => is_lui,
      O => operandA(6)
    );
\alu_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(5),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(5),
      I3 => is_lui,
      O => operandA(5)
    );
\alu_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(4),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(4),
      I3 => is_lui,
      O => operandA(4)
    );
\alu_out0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(7),
      I1 => operandB(7),
      O => \alu_out0_carry__0_i_5_n_0\
    );
\alu_out0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(6),
      I1 => operandB(6),
      O => \alu_out0_carry__0_i_6_n_0\
    );
\alu_out0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(5),
      I1 => operandB(5),
      O => \alu_out0_carry__0_i_7_n_0\
    );
\alu_out0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(4),
      I1 => operandB(4),
      O => \alu_out0_carry__0_i_8_n_0\
    );
\alu_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__0_n_0\,
      CO(3) => \alu_out0_carry__1_n_0\,
      CO(2) => \alu_out0_carry__1_n_1\,
      CO(1) => \alu_out0_carry__1_n_2\,
      CO(0) => \alu_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \alu_out0_carry__1_i_5_n_0\,
      S(2) => \alu_out0_carry__1_i_6_n_0\,
      S(1) => \alu_out0_carry__1_i_7_n_0\,
      S(0) => \alu_out0_carry__1_i_8_n_0\
    );
\alu_out0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(11),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(11),
      I3 => is_lui,
      O => operandA(11)
    );
\alu_out0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(10),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(10),
      I3 => is_lui,
      O => operandA(10)
    );
\alu_out0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(9),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(9),
      I3 => is_lui,
      O => operandA(9)
    );
\alu_out0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(8),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(8),
      I3 => is_lui,
      O => operandA(8)
    );
\alu_out0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(11),
      I1 => operandB(11),
      O => \alu_out0_carry__1_i_5_n_0\
    );
\alu_out0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(10),
      I1 => operandB(10),
      O => \alu_out0_carry__1_i_6_n_0\
    );
\alu_out0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(9),
      I1 => operandB(9),
      O => \alu_out0_carry__1_i_7_n_0\
    );
\alu_out0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(8),
      I1 => operandB(8),
      O => \alu_out0_carry__1_i_8_n_0\
    );
\alu_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__1_n_0\,
      CO(3) => \alu_out0_carry__2_n_0\,
      CO(2) => \alu_out0_carry__2_n_1\,
      CO(1) => \alu_out0_carry__2_n_2\,
      CO(0) => \alu_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(15 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \alu_out0_carry__2_i_5_n_0\,
      S(2) => \alu_out0_carry__2_i_6_n_0\,
      S(1) => \alu_out0_carry__2_i_7_n_0\,
      S(0) => \alu_out0_carry__2_i_8_n_0\
    );
\alu_out0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(15),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(15),
      I3 => is_lui,
      O => operandA(15)
    );
\alu_out0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(14),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(14),
      I3 => is_lui,
      O => operandA(14)
    );
\alu_out0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(13),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(13),
      I3 => is_lui,
      O => operandA(13)
    );
\alu_out0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(12),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(12),
      I3 => is_lui,
      O => operandA(12)
    );
\alu_out0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(15),
      I1 => operandB(15),
      O => \alu_out0_carry__2_i_5_n_0\
    );
\alu_out0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(14),
      I1 => operandB(14),
      O => \alu_out0_carry__2_i_6_n_0\
    );
\alu_out0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(13),
      I1 => operandB(13),
      O => \alu_out0_carry__2_i_7_n_0\
    );
\alu_out0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(12),
      I1 => operandB(12),
      O => \alu_out0_carry__2_i_8_n_0\
    );
\alu_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__2_n_0\,
      CO(3) => \alu_out0_carry__3_n_0\,
      CO(2) => \alu_out0_carry__3_n_1\,
      CO(1) => \alu_out0_carry__3_n_2\,
      CO(0) => \alu_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(19 downto 16),
      O(3 downto 0) => data0(19 downto 16),
      S(3) => \alu_out0_carry__3_i_5_n_0\,
      S(2) => \alu_out0_carry__3_i_6_n_0\,
      S(1) => \alu_out0_carry__3_i_7_n_0\,
      S(0) => \alu_out0_carry__3_i_8_n_0\
    );
\alu_out0_carry__3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(19),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(19),
      I3 => is_lui,
      O => operandA(19)
    );
\alu_out0_carry__3_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(18),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(18),
      I3 => is_lui,
      O => operandA(18)
    );
\alu_out0_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(17),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(17),
      I3 => is_lui,
      O => operandA(17)
    );
\alu_out0_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(16),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(16),
      I3 => is_lui,
      O => operandA(16)
    );
\alu_out0_carry__3_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(19),
      I1 => operandB(19),
      O => \alu_out0_carry__3_i_5_n_0\
    );
\alu_out0_carry__3_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(18),
      I1 => operandB(18),
      O => \alu_out0_carry__3_i_6_n_0\
    );
\alu_out0_carry__3_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(17),
      I1 => operandB(17),
      O => \alu_out0_carry__3_i_7_n_0\
    );
\alu_out0_carry__3_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(16),
      I1 => operandB(16),
      O => \alu_out0_carry__3_i_8_n_0\
    );
\alu_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__3_n_0\,
      CO(3) => \alu_out0_carry__4_n_0\,
      CO(2) => \alu_out0_carry__4_n_1\,
      CO(1) => \alu_out0_carry__4_n_2\,
      CO(0) => \alu_out0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(23 downto 20),
      O(3 downto 0) => data0(23 downto 20),
      S(3) => \alu_out0_carry__4_i_5_n_0\,
      S(2) => \alu_out0_carry__4_i_6_n_0\,
      S(1) => \alu_out0_carry__4_i_7_n_0\,
      S(0) => \alu_out0_carry__4_i_8_n_0\
    );
\alu_out0_carry__4_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(23),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(23),
      I3 => is_lui,
      O => operandA(23)
    );
\alu_out0_carry__4_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(22),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(22),
      I3 => is_lui,
      O => operandA(22)
    );
\alu_out0_carry__4_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(21),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(21),
      I3 => is_lui,
      O => operandA(21)
    );
\alu_out0_carry__4_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(20),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(20),
      I3 => is_lui,
      O => operandA(20)
    );
\alu_out0_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(23),
      I1 => operandB(23),
      O => \alu_out0_carry__4_i_5_n_0\
    );
\alu_out0_carry__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(22),
      I1 => operandB(22),
      O => \alu_out0_carry__4_i_6_n_0\
    );
\alu_out0_carry__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(21),
      I1 => operandB(21),
      O => \alu_out0_carry__4_i_7_n_0\
    );
\alu_out0_carry__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(20),
      I1 => operandB(20),
      O => \alu_out0_carry__4_i_8_n_0\
    );
\alu_out0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__4_n_0\,
      CO(3) => \alu_out0_carry__5_n_0\,
      CO(2) => \alu_out0_carry__5_n_1\,
      CO(1) => \alu_out0_carry__5_n_2\,
      CO(0) => \alu_out0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(27 downto 24),
      O(3 downto 0) => data0(27 downto 24),
      S(3) => \alu_out0_carry__5_i_5_n_0\,
      S(2) => \alu_out0_carry__5_i_6_n_0\,
      S(1) => \alu_out0_carry__5_i_7_n_0\,
      S(0) => \alu_out0_carry__5_i_8_n_0\
    );
\alu_out0_carry__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(27),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(27),
      I3 => is_lui,
      O => operandA(27)
    );
\alu_out0_carry__5_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(26),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(26),
      I3 => is_lui,
      O => operandA(26)
    );
\alu_out0_carry__5_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(25),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(25),
      I3 => is_lui,
      O => operandA(25)
    );
\alu_out0_carry__5_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(24),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(24),
      I3 => is_lui,
      O => operandA(24)
    );
\alu_out0_carry__5_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(27),
      O => \alu_out0_carry__5_i_5_n_0\
    );
\alu_out0_carry__5_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(26),
      I1 => operandB(26),
      O => \alu_out0_carry__5_i_6_n_0\
    );
\alu_out0_carry__5_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(25),
      I1 => operandB(25),
      O => \alu_out0_carry__5_i_7_n_0\
    );
\alu_out0_carry__5_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(24),
      I1 => operandB(24),
      O => \alu_out0_carry__5_i_8_n_0\
    );
\alu_out0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__5_n_0\,
      CO(3) => \NLW_alu_out0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \alu_out0_carry__6_n_1\,
      CO(1) => \alu_out0_carry__6_n_2\,
      CO(0) => \alu_out0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => operandA(30 downto 28),
      O(3 downto 0) => data0(31 downto 28),
      S(3) => \alu_out0_carry__6_i_4_n_0\,
      S(2) => \alu_out0_carry__6_i_5_n_0\,
      S(1) => \alu_out0_carry__6_i_6_n_0\,
      S(0) => \alu_out0_carry__6_i_7_n_0\
    );
\alu_out0_carry__6_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(30),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(30),
      I3 => is_lui,
      O => operandA(30)
    );
\alu_out0_carry__6_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(31),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(31),
      I3 => is_lui,
      O => \operandA__63\(31)
    );
\alu_out0_carry__6_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(31),
      I1 => forwarded_rs2(31),
      I2 => alu_src,
      O => \operandB__95\(31)
    );
\alu_out0_carry__6_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(30),
      I1 => forwarded_rs2(30),
      I2 => alu_src,
      O => operandB(30)
    );
\alu_out0_carry__6_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(29),
      I1 => forwarded_rs2(29),
      I2 => alu_src,
      O => operandB(29)
    );
\alu_out0_carry__6_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(29),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(29),
      I3 => is_lui,
      O => operandA(29)
    );
\alu_out0_carry__6_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(28),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(28),
      I3 => is_lui,
      O => operandA(28)
    );
\alu_out0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => \operandB__95\(31),
      O => \alu_out0_carry__6_i_4_n_0\
    );
\alu_out0_carry__6_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(30),
      O => \alu_out0_carry__6_i_5_n_0\
    );
\alu_out0_carry__6_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(29),
      O => \alu_out0_carry__6_i_6_n_0\
    );
\alu_out0_carry__6_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(28),
      O => \alu_out0_carry__6_i_7_n_0\
    );
alu_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(3),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(3),
      I3 => is_lui,
      O => operandA(3)
    );
alu_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(2),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(2),
      I3 => is_lui,
      O => operandA(2)
    );
alu_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(1),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(1),
      I3 => is_lui,
      O => operandA(1)
    );
alu_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => forwarded_rs1(0),
      I1 => ALUSrcA,
      I2 => PC_ID_EX(0),
      I3 => is_lui,
      O => operandA(0)
    );
alu_out0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(3),
      I1 => operandB(3),
      O => alu_out0_carry_i_5_n_0
    );
alu_out0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(2),
      I1 => operandB(2),
      O => alu_out0_carry_i_6_n_0
    );
alu_out0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(1),
      I1 => operandB(1),
      O => alu_out0_carry_i_7_n_0
    );
alu_out0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandA(0),
      I1 => operandB(0),
      O => alu_out0_carry_i_8_n_0
    );
\alu_out0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__0/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => operandA(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\alu_out0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__0_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__0_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__0_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__3_n_0\,
      S(0) => \i__carry__0_i_4__3_n_0\
    );
\alu_out0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__0_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__1_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__1_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__1_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \i__carry__1_i_1__3_n_0\,
      S(2) => \i__carry__1_i_2__3_n_0\,
      S(1) => \i__carry__1_i_3__3_n_0\,
      S(0) => \i__carry__1_i_4__3_n_0\
    );
\alu_out0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__1_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__2_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__2_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__2_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(15 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \i__carry__2_i_1__1_n_0\,
      S(2) => \i__carry__2_i_2__3_n_0\,
      S(1) => \i__carry__2_i_3__3_n_0\,
      S(0) => \i__carry__2_i_4__3_n_0\
    );
\alu_out0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__2_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__3_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__3_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__3_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(19 downto 16),
      O(3 downto 0) => data1(19 downto 16),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__3_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__4_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__4_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__4_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(23 downto 20),
      O(3 downto 0) => data1(23 downto 20),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__4_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__5_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__5_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__5_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => operandA(27 downto 24),
      O(3 downto 0) => data1(27 downto 24),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__5_n_0\,
      CO(3) => \NLW_alu_out0_inferred__0/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \alu_out0_inferred__0/i__carry__6_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__6_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => operandA(30 downto 28),
      O(3 downto 0) => data1(31 downto 28),
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
alu_out2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_out2_carry_n_0,
      CO(2) => alu_out2_carry_n_1,
      CO(1) => alu_out2_carry_n_2,
      CO(0) => alu_out2_carry_n_3,
      CYINIT => '0',
      DI(3) => alu_out2_carry_i_1_n_0,
      DI(2) => alu_out2_carry_i_2_n_0,
      DI(1) => alu_out2_carry_i_3_n_0,
      DI(0) => alu_out2_carry_i_4_n_0,
      O(3 downto 0) => NLW_alu_out2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => alu_out2_carry_i_5_n_0,
      S(2) => alu_out2_carry_i_6_n_0,
      S(1) => alu_out2_carry_i_7_n_0,
      S(0) => alu_out2_carry_i_8_n_0
    );
\alu_out2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => alu_out2_carry_n_0,
      CO(3) => \alu_out2_carry__0_n_0\,
      CO(2) => \alu_out2_carry__0_n_1\,
      CO(1) => \alu_out2_carry__0_n_2\,
      CO(0) => \alu_out2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out2_carry__0_i_1_n_0\,
      DI(2) => \alu_out2_carry__0_i_2_n_0\,
      DI(1) => \alu_out2_carry__0_i_3_n_0\,
      DI(0) => \alu_out2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out2_carry__0_i_5_n_0\,
      S(2) => \alu_out2_carry__0_i_6_n_0\,
      S(1) => \alu_out2_carry__0_i_7_n_0\,
      S(0) => \alu_out2_carry__0_i_8_n_0\
    );
\alu_out2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(14),
      I1 => operandA(14),
      I2 => operandA(15),
      I3 => operandB(15),
      O => \alu_out2_carry__0_i_1_n_0\
    );
\alu_out2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(12),
      I1 => operandA(12),
      I2 => operandA(13),
      I3 => operandB(13),
      O => \alu_out2_carry__0_i_2_n_0\
    );
\alu_out2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(10),
      I1 => operandA(10),
      I2 => operandA(11),
      I3 => operandB(11),
      O => \alu_out2_carry__0_i_3_n_0\
    );
\alu_out2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(8),
      I1 => operandA(8),
      I2 => operandA(9),
      I3 => operandB(9),
      O => \alu_out2_carry__0_i_4_n_0\
    );
\alu_out2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(14),
      I1 => operandA(14),
      I2 => operandB(15),
      I3 => operandA(15),
      O => \alu_out2_carry__0_i_5_n_0\
    );
\alu_out2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(12),
      I1 => operandA(12),
      I2 => operandB(13),
      I3 => operandA(13),
      O => \alu_out2_carry__0_i_6_n_0\
    );
\alu_out2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(10),
      I1 => operandA(10),
      I2 => operandB(11),
      I3 => operandA(11),
      O => \alu_out2_carry__0_i_7_n_0\
    );
\alu_out2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(8),
      I1 => operandA(8),
      I2 => operandB(9),
      I3 => operandA(9),
      O => \alu_out2_carry__0_i_8_n_0\
    );
\alu_out2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_carry__0_n_0\,
      CO(3) => \alu_out2_carry__1_n_0\,
      CO(2) => \alu_out2_carry__1_n_1\,
      CO(1) => \alu_out2_carry__1_n_2\,
      CO(0) => \alu_out2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out2_carry__1_i_1_n_0\,
      DI(2) => \alu_out2_carry__1_i_2_n_0\,
      DI(1) => \alu_out2_carry__1_i_3_n_0\,
      DI(0) => \alu_out2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out2_carry__1_i_5_n_0\,
      S(2) => \alu_out2_carry__1_i_6_n_0\,
      S(1) => \alu_out2_carry__1_i_7_n_0\,
      S(0) => \alu_out2_carry__1_i_8_n_0\
    );
\alu_out2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(22),
      I1 => operandA(22),
      I2 => operandA(23),
      I3 => operandB(23),
      O => \alu_out2_carry__1_i_1_n_0\
    );
\alu_out2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(20),
      I1 => operandA(20),
      I2 => operandA(21),
      I3 => operandB(21),
      O => \alu_out2_carry__1_i_2_n_0\
    );
\alu_out2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(18),
      I1 => operandA(18),
      I2 => operandA(19),
      I3 => operandB(19),
      O => \alu_out2_carry__1_i_3_n_0\
    );
\alu_out2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(16),
      I1 => operandA(16),
      I2 => operandA(17),
      I3 => operandB(17),
      O => \alu_out2_carry__1_i_4_n_0\
    );
\alu_out2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(22),
      I1 => operandA(22),
      I2 => operandB(23),
      I3 => operandA(23),
      O => \alu_out2_carry__1_i_5_n_0\
    );
\alu_out2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(20),
      I1 => operandA(20),
      I2 => operandB(21),
      I3 => operandA(21),
      O => \alu_out2_carry__1_i_6_n_0\
    );
\alu_out2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(18),
      I1 => operandA(18),
      I2 => operandB(19),
      I3 => operandA(19),
      O => \alu_out2_carry__1_i_7_n_0\
    );
\alu_out2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(16),
      I1 => operandA(16),
      I2 => operandB(17),
      I3 => operandA(17),
      O => \alu_out2_carry__1_i_8_n_0\
    );
\alu_out2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_carry__1_n_0\,
      CO(3) => data3,
      CO(2) => \alu_out2_carry__2_n_1\,
      CO(1) => \alu_out2_carry__2_n_2\,
      CO(0) => \alu_out2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \alu_out2_carry__2_i_1_n_0\,
      DI(2) => \alu_out2_carry__2_i_2_n_0\,
      DI(1) => \alu_out2_carry__2_i_3_n_0\,
      DI(0) => \alu_out2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \alu_out2_carry__2_i_5_n_0\,
      S(2) => \alu_out2_carry__2_i_6_n_0\,
      S(1) => \alu_out2_carry__2_i_7_n_0\,
      S(0) => \alu_out2_carry__2_i_8_n_0\
    );
\alu_out2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(30),
      I1 => operandA(30),
      I2 => \operandB__95\(31),
      I3 => \operandA__63\(31),
      O => \alu_out2_carry__2_i_1_n_0\
    );
\alu_out2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      I2 => operandA(29),
      I3 => operandB(29),
      O => \alu_out2_carry__2_i_2_n_0\
    );
\alu_out2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      I2 => operandA(27),
      I3 => operandB(27),
      O => \alu_out2_carry__2_i_3_n_0\
    );
\alu_out2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      I2 => operandA(25),
      I3 => operandB(25),
      O => \alu_out2_carry__2_i_4_n_0\
    );
\alu_out2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(30),
      I1 => operandA(30),
      I2 => \operandB__95\(31),
      I3 => \operandA__63\(31),
      O => \alu_out2_carry__2_i_5_n_0\
    );
\alu_out2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      I2 => operandB(29),
      I3 => operandA(29),
      O => \alu_out2_carry__2_i_6_n_0\
    );
\alu_out2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      I2 => operandB(27),
      I3 => operandA(27),
      O => \alu_out2_carry__2_i_7_n_0\
    );
\alu_out2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      I2 => operandB(25),
      I3 => operandA(25),
      O => \alu_out2_carry__2_i_8_n_0\
    );
alu_out2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      I2 => operandA(7),
      I3 => operandB(7),
      O => alu_out2_carry_i_1_n_0
    );
alu_out2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(4),
      I2 => operandA(5),
      I3 => operandB(5),
      O => alu_out2_carry_i_2_n_0
    );
alu_out2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      I2 => operandA(3),
      I3 => operandB(3),
      O => alu_out2_carry_i_3_n_0
    );
alu_out2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => operandA(1),
      I3 => operandB(1),
      O => alu_out2_carry_i_4_n_0
    );
alu_out2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      I2 => operandB(7),
      I3 => operandA(7),
      O => alu_out2_carry_i_5_n_0
    );
alu_out2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(4),
      I2 => operandB(5),
      I3 => operandA(5),
      O => alu_out2_carry_i_6_n_0
    );
alu_out2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      I2 => operandB(3),
      I3 => operandA(3),
      O => alu_out2_carry_i_7_n_0
    );
alu_out2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => operandB(1),
      I3 => operandA(1),
      O => alu_out2_carry_i_8_n_0
    );
\alu_out2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out2_inferred__0/i__carry_n_0\,
      CO(2) => \alu_out2_inferred__0/i__carry_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\alu_out2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_inferred__0/i__carry_n_0\,
      CO(3) => \alu_out2_inferred__0/i__carry__0_n_0\,
      CO(2) => \alu_out2_inferred__0/i__carry__0_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry__0_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\alu_out2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_inferred__0/i__carry__0_n_0\,
      CO(3) => \alu_out2_inferred__0/i__carry__1_n_0\,
      CO(2) => \alu_out2_inferred__0/i__carry__1_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry__1_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\alu_out2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_inferred__0/i__carry__1_n_0\,
      CO(3) => data4,
      CO(2) => \alu_out2_inferred__0/i__carry__2_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry__2_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\alu_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => PC_ID_EX(0),
      I1 => \alu_out[0]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[0]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(0)
    );
\alu_out[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[0]_INST_0_i_1_n_0\
    );
\alu_out[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(24),
      I1 => operandA(8),
      I2 => operandB(3),
      I3 => operandA(16),
      I4 => operandB(4),
      I5 => operandA(0),
      O => \alu_out[0]_INST_0_i_10_n_0\
    );
\alu_out[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data6(0),
      I1 => alu_ctrl(1),
      I2 => \alu_out[0]_INST_0_i_5_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[0]_INST_0_i_6_n_0\,
      O => \alu_out[0]_INST_0_i_2_n_0\
    );
\alu_out[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(0),
      I1 => forwarded_rs2(0),
      I2 => alu_src,
      O => operandB(0)
    );
\alu_out[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[1]_INST_0_i_7_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[0]_INST_0_i_7_n_0\,
      I3 => operandB(1),
      I4 => \alu_out[0]_INST_0_i_8_n_0\,
      O => data6(0)
    );
\alu_out[0]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => alu_ctrl(0),
      I3 => data4,
      O => \alu_out[0]_INST_0_i_5_n_0\
    );
\alu_out[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => \alu_out[0]_INST_0_i_9_n_0\,
      I2 => alu_ctrl(1),
      I3 => data1(0),
      I4 => alu_ctrl(0),
      I5 => data0(0),
      O => \alu_out[0]_INST_0_i_6_n_0\
    );
\alu_out[0]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_11_n_0\,
      I1 => operandB(2),
      I2 => \alu_out[2]_INST_0_i_10_n_0\,
      O => \alu_out[0]_INST_0_i_7_n_0\
    );
\alu_out[0]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_11_n_0\,
      I1 => operandB(2),
      I2 => \alu_out[0]_INST_0_i_10_n_0\,
      O => \alu_out[0]_INST_0_i_8_n_0\
    );
\alu_out[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => operandB(1),
      I1 => operandB(3),
      I2 => operandA(0),
      I3 => operandB(4),
      I4 => operandB(2),
      I5 => operandB(0),
      O => \alu_out[0]_INST_0_i_9_n_0\
    );
\alu_out[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(9),
      I1 => \alu_out[10]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[10]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(10)
    );
\alu_out[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(10),
      I1 => operandA(10),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[10]_INST_0_i_1_n_0\
    );
\alu_out[10]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[12]_INST_0_i_13_n_0\,
      O => \alu_out[10]_INST_0_i_10_n_0\
    );
\alu_out[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(18),
      I2 => operandB(3),
      I3 => operandA(26),
      I4 => operandB(4),
      I5 => operandA(10),
      O => \alu_out[10]_INST_0_i_11_n_0\
    );
\alu_out[10]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(18),
      I1 => operandB(3),
      I2 => operandA(26),
      I3 => operandB(4),
      I4 => operandA(10),
      O => \alu_out[10]_INST_0_i_12_n_0\
    );
\alu_out[10]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(3),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(7),
      I4 => operandB(3),
      O => \alu_out[10]_INST_0_i_13_n_0\
    );
\alu_out[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_4_n_0\,
      I1 => \alu_out[10]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[10]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[10]_INST_0_i_7_n_0\,
      O => \alu_out[10]_INST_0_i_2_n_0\
    );
\alu_out[10]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(10),
      I1 => forwarded_rs2(10),
      I2 => alu_src,
      O => operandB(10)
    );
\alu_out[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_8_n_0\,
      I1 => \alu_out[10]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[11]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[10]_INST_0_i_9_n_0\,
      O => \alu_out[10]_INST_0_i_4_n_0\
    );
\alu_out[10]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(10),
      I2 => operandB(10),
      O => \alu_out[10]_INST_0_i_5_n_0\
    );
\alu_out[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_10_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[11]_INST_0_i_11_n_0\,
      I3 => operandB(0),
      I4 => \alu_out[10]_INST_0_i_10_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[10]_INST_0_i_6_n_0\
    );
\alu_out[10]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(10),
      I1 => alu_ctrl(0),
      I2 => data0(10),
      O => \alu_out[10]_INST_0_i_7_n_0\
    );
\alu_out[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_11_n_0\,
      I1 => \alu_out[12]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[14]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[10]_INST_0_i_11_n_0\,
      O => \alu_out[10]_INST_0_i_8_n_0\
    );
\alu_out[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_13_n_0\,
      I1 => \alu_out[12]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[14]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[10]_INST_0_i_12_n_0\,
      O => \alu_out[10]_INST_0_i_9_n_0\
    );
\alu_out[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(10),
      I1 => \alu_out[11]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[11]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(11)
    );
\alu_out[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(11),
      I1 => operandA(11),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[11]_INST_0_i_1_n_0\
    );
\alu_out[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(4),
      I1 => operandB(2),
      I2 => operandA(0),
      I3 => operandB(3),
      I4 => operandA(8),
      I5 => operandB(4),
      O => \alu_out[11]_INST_0_i_10_n_0\
    );
\alu_out[11]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(6),
      I1 => operandB(2),
      I2 => operandA(2),
      I3 => operandB(3),
      I4 => operandA(10),
      I5 => operandB(4),
      O => \alu_out[11]_INST_0_i_11_n_0\
    );
\alu_out[11]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(19),
      I2 => operandB(3),
      I3 => operandA(27),
      I4 => operandB(4),
      I5 => operandA(11),
      O => \alu_out[11]_INST_0_i_12_n_0\
    );
\alu_out[11]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(19),
      I1 => operandB(3),
      I2 => operandA(27),
      I3 => operandB(4),
      I4 => operandA(11),
      O => \alu_out[11]_INST_0_i_13_n_0\
    );
\alu_out[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_4_n_0\,
      I1 => \alu_out[11]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[11]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[11]_INST_0_i_7_n_0\,
      O => \alu_out[11]_INST_0_i_2_n_0\
    );
\alu_out[11]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(11),
      I1 => forwarded_rs2(11),
      I2 => alu_src,
      O => operandB(11)
    );
\alu_out[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_8_n_0\,
      I1 => \alu_out[11]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[12]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[11]_INST_0_i_9_n_0\,
      O => \alu_out[11]_INST_0_i_4_n_0\
    );
\alu_out[11]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(11),
      I2 => operandB(11),
      O => \alu_out[11]_INST_0_i_5_n_0\
    );
\alu_out[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FF00"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_10_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[11]_INST_0_i_11_n_0\,
      I3 => \alu_out[12]_INST_0_i_10_n_0\,
      I4 => operandB(0),
      I5 => alu_ctrl(0),
      O => \alu_out[11]_INST_0_i_6_n_0\
    );
\alu_out[11]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(11),
      I1 => alu_ctrl(0),
      I2 => data0(11),
      O => \alu_out[11]_INST_0_i_7_n_0\
    );
\alu_out[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_11_n_0\,
      I1 => \alu_out[13]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[15]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[11]_INST_0_i_12_n_0\,
      O => \alu_out[11]_INST_0_i_8_n_0\
    );
\alu_out[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_13_n_0\,
      I1 => \alu_out[13]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[15]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[11]_INST_0_i_13_n_0\,
      O => \alu_out[11]_INST_0_i_9_n_0\
    );
\alu_out[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(11),
      I1 => \alu_out[12]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[12]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(12)
    );
\alu_out[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(12),
      I1 => operandA(12),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[12]_INST_0_i_1_n_0\
    );
\alu_out[12]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[14]_INST_0_i_13_n_0\,
      O => \alu_out[12]_INST_0_i_10_n_0\
    );
\alu_out[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(20),
      I2 => operandB(3),
      I3 => operandA(28),
      I4 => operandB(4),
      I5 => operandA(12),
      O => \alu_out[12]_INST_0_i_11_n_0\
    );
\alu_out[12]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(20),
      I1 => operandB(3),
      I2 => operandA(28),
      I3 => operandB(4),
      I4 => operandA(12),
      O => \alu_out[12]_INST_0_i_12_n_0\
    );
\alu_out[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(5),
      I1 => operandB(2),
      I2 => operandA(1),
      I3 => operandB(3),
      I4 => operandA(9),
      I5 => operandB(4),
      O => \alu_out[12]_INST_0_i_13_n_0\
    );
\alu_out[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_4_n_0\,
      I1 => \alu_out[12]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[12]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[12]_INST_0_i_7_n_0\,
      O => \alu_out[12]_INST_0_i_2_n_0\
    );
\alu_out[12]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(12),
      I1 => forwarded_rs2(12),
      I2 => alu_src,
      O => operandB(12)
    );
\alu_out[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_8_n_0\,
      I1 => \alu_out[12]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[13]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[12]_INST_0_i_9_n_0\,
      O => \alu_out[12]_INST_0_i_4_n_0\
    );
\alu_out[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(12),
      I2 => operandB(12),
      O => \alu_out[12]_INST_0_i_5_n_0\
    );
\alu_out[12]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[12]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[12]_INST_0_i_6_n_0\
    );
\alu_out[12]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(12),
      I1 => alu_ctrl(0),
      I2 => data0(12),
      O => \alu_out[12]_INST_0_i_7_n_0\
    );
\alu_out[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_11_n_0\,
      I1 => \alu_out[14]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[16]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[12]_INST_0_i_11_n_0\,
      O => \alu_out[12]_INST_0_i_8_n_0\
    );
\alu_out[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_13_n_0\,
      I1 => \alu_out[14]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[16]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[12]_INST_0_i_12_n_0\,
      O => \alu_out[12]_INST_0_i_9_n_0\
    );
\alu_out[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(12),
      I1 => \alu_out[13]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[13]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(13)
    );
\alu_out[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(13),
      I1 => operandA(13),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[13]_INST_0_i_1_n_0\
    );
\alu_out[13]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[15]_INST_0_i_13_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[19]_INST_0_i_15_n_0\,
      O => \alu_out[13]_INST_0_i_10_n_0\
    );
\alu_out[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(21),
      I2 => operandB(3),
      I3 => operandA(29),
      I4 => operandB(4),
      I5 => operandA(13),
      O => \alu_out[13]_INST_0_i_11_n_0\
    );
\alu_out[13]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(21),
      I1 => operandB(3),
      I2 => operandA(29),
      I3 => operandB(4),
      I4 => operandA(13),
      O => \alu_out[13]_INST_0_i_12_n_0\
    );
\alu_out[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_4_n_0\,
      I1 => \alu_out[13]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[13]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[13]_INST_0_i_7_n_0\,
      O => \alu_out[13]_INST_0_i_2_n_0\
    );
\alu_out[13]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(13),
      I1 => forwarded_rs2(13),
      I2 => alu_src,
      O => operandB(13)
    );
\alu_out[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_8_n_0\,
      I1 => \alu_out[13]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[14]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[13]_INST_0_i_9_n_0\,
      O => \alu_out[13]_INST_0_i_4_n_0\
    );
\alu_out[13]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(13),
      I2 => operandB(13),
      O => \alu_out[13]_INST_0_i_5_n_0\
    );
\alu_out[13]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[13]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[13]_INST_0_i_6_n_0\
    );
\alu_out[13]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(13),
      I1 => alu_ctrl(0),
      I2 => data0(13),
      O => \alu_out[13]_INST_0_i_7_n_0\
    );
\alu_out[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_12_n_0\,
      I1 => \alu_out[15]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[17]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[13]_INST_0_i_11_n_0\,
      O => \alu_out[13]_INST_0_i_8_n_0\
    );
\alu_out[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_14_n_0\,
      I1 => \alu_out[15]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[17]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[13]_INST_0_i_12_n_0\,
      O => \alu_out[13]_INST_0_i_9_n_0\
    );
\alu_out[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(13),
      I1 => \alu_out[14]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[14]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(14)
    );
\alu_out[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(14),
      I1 => operandA(14),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[14]_INST_0_i_1_n_0\
    );
\alu_out[14]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[16]_INST_0_i_14_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[20]_INST_0_i_14_n_0\,
      O => \alu_out[14]_INST_0_i_10_n_0\
    );
\alu_out[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(22),
      I2 => operandB(3),
      I3 => operandA(30),
      I4 => operandB(4),
      I5 => operandA(14),
      O => \alu_out[14]_INST_0_i_11_n_0\
    );
\alu_out[14]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(22),
      I1 => operandB(3),
      I2 => operandA(30),
      I3 => operandB(4),
      I4 => operandA(14),
      O => \alu_out[14]_INST_0_i_12_n_0\
    );
\alu_out[14]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(7),
      I1 => operandB(2),
      I2 => operandA(3),
      I3 => operandB(3),
      I4 => operandA(11),
      I5 => operandB(4),
      O => \alu_out[14]_INST_0_i_13_n_0\
    );
\alu_out[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_4_n_0\,
      I1 => \alu_out[14]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[14]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[14]_INST_0_i_7_n_0\,
      O => \alu_out[14]_INST_0_i_2_n_0\
    );
\alu_out[14]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(14),
      I1 => forwarded_rs2(14),
      I2 => alu_src,
      O => operandB(14)
    );
\alu_out[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_8_n_0\,
      I1 => \alu_out[14]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[15]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[14]_INST_0_i_9_n_0\,
      O => \alu_out[14]_INST_0_i_4_n_0\
    );
\alu_out[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(14),
      I2 => operandB(14),
      O => \alu_out[14]_INST_0_i_5_n_0\
    );
\alu_out[14]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[14]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[14]_INST_0_i_6_n_0\
    );
\alu_out[14]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(14),
      I1 => alu_ctrl(0),
      I2 => data0(14),
      O => \alu_out[14]_INST_0_i_7_n_0\
    );
\alu_out[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_12_n_0\,
      I1 => \alu_out[16]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[18]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[14]_INST_0_i_11_n_0\,
      O => \alu_out[14]_INST_0_i_8_n_0\
    );
\alu_out[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_12_n_0\,
      I1 => \alu_out[16]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[18]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[14]_INST_0_i_12_n_0\,
      O => \alu_out[14]_INST_0_i_9_n_0\
    );
\alu_out[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(14),
      I1 => \alu_out[15]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[15]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(15)
    );
\alu_out[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(15),
      I1 => operandA(15),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[15]_INST_0_i_1_n_0\
    );
\alu_out[15]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_13_n_0\,
      I1 => \alu_out[19]_INST_0_i_15_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[17]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[21]_INST_0_i_14_n_0\,
      O => \alu_out[15]_INST_0_i_10_n_0\
    );
\alu_out[15]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(23),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(15),
      O => \alu_out[15]_INST_0_i_11_n_0\
    );
\alu_out[15]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(23),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(15),
      O => \alu_out[15]_INST_0_i_12_n_0\
    );
\alu_out[15]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(0),
      I1 => operandB(3),
      I2 => operandA(8),
      I3 => operandB(4),
      O => \alu_out[15]_INST_0_i_13_n_0\
    );
\alu_out[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_4_n_0\,
      I1 => \alu_out[15]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[15]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[15]_INST_0_i_7_n_0\,
      O => \alu_out[15]_INST_0_i_2_n_0\
    );
\alu_out[15]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(15),
      I1 => forwarded_rs2(15),
      I2 => alu_src,
      O => operandB(15)
    );
\alu_out[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_8_n_0\,
      I1 => \alu_out[15]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[16]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[15]_INST_0_i_9_n_0\,
      O => \alu_out[15]_INST_0_i_4_n_0\
    );
\alu_out[15]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(15),
      I2 => operandB(15),
      O => \alu_out[15]_INST_0_i_5_n_0\
    );
\alu_out[15]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[15]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[15]_INST_0_i_6_n_0\
    );
\alu_out[15]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(15),
      I1 => alu_ctrl(0),
      I2 => data0(15),
      O => \alu_out[15]_INST_0_i_7_n_0\
    );
\alu_out[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_12_n_0\,
      I1 => \alu_out[17]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[19]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[15]_INST_0_i_11_n_0\,
      O => \alu_out[15]_INST_0_i_8_n_0\
    );
\alu_out[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_12_n_0\,
      I1 => \alu_out[17]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[19]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[15]_INST_0_i_12_n_0\,
      O => \alu_out[15]_INST_0_i_9_n_0\
    );
\alu_out[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(15),
      I1 => \alu_out[16]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[16]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(16)
    );
\alu_out[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(16),
      I1 => operandA(16),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[16]_INST_0_i_1_n_0\
    );
\alu_out[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_14_n_0\,
      I1 => \alu_out[20]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[18]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[22]_INST_0_i_14_n_0\,
      O => \alu_out[16]_INST_0_i_10_n_0\
    );
\alu_out[16]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(24),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(16),
      O => \alu_out[16]_INST_0_i_11_n_0\
    );
\alu_out[16]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(3),
      I2 => operandA(20),
      I3 => operandB(4),
      O => \alu_out[16]_INST_0_i_12_n_0\
    );
\alu_out[16]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(24),
      I1 => operandB(3),
      I2 => operandA(16),
      I3 => operandB(4),
      O => \alu_out[16]_INST_0_i_13_n_0\
    );
\alu_out[16]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(1),
      I1 => operandB(3),
      I2 => operandA(9),
      I3 => operandB(4),
      O => \alu_out[16]_INST_0_i_14_n_0\
    );
\alu_out[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_4_n_0\,
      I1 => \alu_out[16]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[16]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[16]_INST_0_i_7_n_0\,
      O => \alu_out[16]_INST_0_i_2_n_0\
    );
\alu_out[16]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(16),
      I1 => forwarded_rs2(16),
      I2 => alu_src,
      O => operandB(16)
    );
\alu_out[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_8_n_0\,
      I1 => \alu_out[16]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[17]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[16]_INST_0_i_9_n_0\,
      O => \alu_out[16]_INST_0_i_4_n_0\
    );
\alu_out[16]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(16),
      I2 => operandB(16),
      O => \alu_out[16]_INST_0_i_5_n_0\
    );
\alu_out[16]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[16]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[16]_INST_0_i_6_n_0\
    );
\alu_out[16]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(16),
      I1 => alu_ctrl(0),
      I2 => data0(16),
      O => \alu_out[16]_INST_0_i_7_n_0\
    );
\alu_out[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_12_n_0\,
      I1 => \alu_out[18]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[20]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[16]_INST_0_i_11_n_0\,
      O => \alu_out[16]_INST_0_i_8_n_0\
    );
\alu_out[16]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_12_n_0\,
      I1 => \alu_out[18]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[16]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[16]_INST_0_i_13_n_0\,
      O => \alu_out[16]_INST_0_i_9_n_0\
    );
\alu_out[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(16),
      I1 => \alu_out[17]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[17]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(17)
    );
\alu_out[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(17),
      I1 => operandA(17),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[17]_INST_0_i_1_n_0\
    );
\alu_out[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_14_n_0\,
      I1 => \alu_out[21]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[19]_INST_0_i_15_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[23]_INST_0_i_13_n_0\,
      O => \alu_out[17]_INST_0_i_10_n_0\
    );
\alu_out[17]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(25),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(17),
      O => \alu_out[17]_INST_0_i_11_n_0\
    );
\alu_out[17]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(3),
      I2 => operandA(21),
      I3 => operandB(4),
      O => \alu_out[17]_INST_0_i_12_n_0\
    );
\alu_out[17]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(25),
      I1 => operandB(3),
      I2 => operandA(17),
      I3 => operandB(4),
      O => \alu_out[17]_INST_0_i_13_n_0\
    );
\alu_out[17]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(2),
      I1 => operandB(3),
      I2 => operandA(10),
      I3 => operandB(4),
      O => \alu_out[17]_INST_0_i_14_n_0\
    );
\alu_out[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_4_n_0\,
      I1 => \alu_out[17]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[17]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[17]_INST_0_i_7_n_0\,
      O => \alu_out[17]_INST_0_i_2_n_0\
    );
\alu_out[17]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(17),
      I1 => forwarded_rs2(17),
      I2 => alu_src,
      O => operandB(17)
    );
\alu_out[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_8_n_0\,
      I1 => \alu_out[17]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[18]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[17]_INST_0_i_9_n_0\,
      O => \alu_out[17]_INST_0_i_4_n_0\
    );
\alu_out[17]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(17),
      I2 => operandB(17),
      O => \alu_out[17]_INST_0_i_5_n_0\
    );
\alu_out[17]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[17]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[17]_INST_0_i_6_n_0\
    );
\alu_out[17]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(17),
      I1 => alu_ctrl(0),
      I2 => data0(17),
      O => \alu_out[17]_INST_0_i_7_n_0\
    );
\alu_out[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_11_n_0\,
      I1 => \alu_out[19]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[21]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[17]_INST_0_i_11_n_0\,
      O => \alu_out[17]_INST_0_i_8_n_0\
    );
\alu_out[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_13_n_0\,
      I1 => \alu_out[19]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[17]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[17]_INST_0_i_13_n_0\,
      O => \alu_out[17]_INST_0_i_9_n_0\
    );
\alu_out[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(17),
      I1 => \alu_out[18]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[18]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(18)
    );
\alu_out[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(18),
      I1 => operandA(18),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[18]_INST_0_i_1_n_0\
    );
\alu_out[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_14_n_0\,
      I1 => \alu_out[22]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[20]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[24]_INST_0_i_13_n_0\,
      O => \alu_out[18]_INST_0_i_10_n_0\
    );
\alu_out[18]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(26),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(18),
      O => \alu_out[18]_INST_0_i_11_n_0\
    );
\alu_out[18]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(3),
      I2 => operandA(22),
      I3 => operandB(4),
      O => \alu_out[18]_INST_0_i_12_n_0\
    );
\alu_out[18]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(26),
      I1 => operandB(3),
      I2 => operandA(18),
      I3 => operandB(4),
      O => \alu_out[18]_INST_0_i_13_n_0\
    );
\alu_out[18]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(3),
      I1 => operandB(3),
      I2 => operandA(11),
      I3 => operandB(4),
      O => \alu_out[18]_INST_0_i_14_n_0\
    );
\alu_out[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_4_n_0\,
      I1 => \alu_out[18]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[18]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[18]_INST_0_i_7_n_0\,
      O => \alu_out[18]_INST_0_i_2_n_0\
    );
\alu_out[18]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(18),
      I1 => forwarded_rs2(18),
      I2 => alu_src,
      O => operandB(18)
    );
\alu_out[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_8_n_0\,
      I1 => \alu_out[18]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[19]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[18]_INST_0_i_9_n_0\,
      O => \alu_out[18]_INST_0_i_4_n_0\
    );
\alu_out[18]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(18),
      I2 => operandB(18),
      O => \alu_out[18]_INST_0_i_5_n_0\
    );
\alu_out[18]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[18]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[18]_INST_0_i_6_n_0\
    );
\alu_out[18]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(18),
      I1 => alu_ctrl(0),
      I2 => data0(18),
      O => \alu_out[18]_INST_0_i_7_n_0\
    );
\alu_out[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_11_n_0\,
      I1 => \alu_out[20]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[22]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[18]_INST_0_i_11_n_0\,
      O => \alu_out[18]_INST_0_i_8_n_0\
    );
\alu_out[18]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[18]_INST_0_i_12_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[18]_INST_0_i_13_n_0\,
      O => \alu_out[18]_INST_0_i_9_n_0\
    );
\alu_out[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(18),
      I1 => \alu_out[19]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[19]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(19)
    );
\alu_out[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(19),
      I1 => operandA(19),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[19]_INST_0_i_1_n_0\
    );
\alu_out[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_15_n_0\,
      I1 => \alu_out[23]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[21]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[25]_INST_0_i_13_n_0\,
      O => \alu_out[19]_INST_0_i_10_n_0\
    );
\alu_out[19]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => operandB(3),
      I1 => \operandA__63\(31),
      I2 => operandB(4),
      I3 => operandA(23),
      O => \alu_out[19]_INST_0_i_11_n_0\
    );
\alu_out[19]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(19),
      O => \alu_out[19]_INST_0_i_12_n_0\
    );
\alu_out[19]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandB(3),
      I2 => operandA(23),
      I3 => operandB(4),
      O => \alu_out[19]_INST_0_i_13_n_0\
    );
\alu_out[19]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(3),
      I2 => operandA(19),
      I3 => operandB(4),
      O => \alu_out[19]_INST_0_i_14_n_0\
    );
\alu_out[19]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(4),
      I1 => operandB(3),
      I2 => operandA(12),
      I3 => operandB(4),
      O => \alu_out[19]_INST_0_i_15_n_0\
    );
\alu_out[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_4_n_0\,
      I1 => \alu_out[19]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[19]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[19]_INST_0_i_7_n_0\,
      O => \alu_out[19]_INST_0_i_2_n_0\
    );
\alu_out[19]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(19),
      I1 => forwarded_rs2(19),
      I2 => alu_src,
      O => operandB(19)
    );
\alu_out[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_8_n_0\,
      I1 => \alu_out[19]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[20]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[19]_INST_0_i_9_n_0\,
      O => \alu_out[19]_INST_0_i_4_n_0\
    );
\alu_out[19]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(19),
      I2 => operandB(19),
      O => \alu_out[19]_INST_0_i_5_n_0\
    );
\alu_out[19]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[19]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[19]_INST_0_i_6_n_0\
    );
\alu_out[19]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(19),
      I1 => alu_ctrl(0),
      I2 => data0(19),
      O => \alu_out[19]_INST_0_i_7_n_0\
    );
\alu_out[19]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_11_n_0\,
      I1 => \alu_out[21]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[19]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[19]_INST_0_i_12_n_0\,
      O => \alu_out[19]_INST_0_i_8_n_0\
    );
\alu_out[19]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[19]_INST_0_i_13_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[19]_INST_0_i_14_n_0\,
      O => \alu_out[19]_INST_0_i_9_n_0\
    );
\alu_out[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(0),
      I1 => \alu_out[1]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[1]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(1)
    );
\alu_out[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(1),
      I1 => operandA(1),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[1]_INST_0_i_1_n_0\
    );
\alu_out[1]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(0),
      I2 => operandB(3),
      O => \alu_out[1]_INST_0_i_10_n_0\
    );
\alu_out[1]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(1),
      I2 => operandB(3),
      O => \alu_out[1]_INST_0_i_11_n_0\
    );
\alu_out[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[1]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[1]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[1]_INST_0_i_6_n_0\,
      O => \alu_out[1]_INST_0_i_2_n_0\
    );
\alu_out[1]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(1),
      I1 => forwarded_rs2(1),
      I2 => alu_src,
      O => operandB(1)
    );
\alu_out[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[2]_INST_0_i_7_n_0\,
      I1 => alu_ctrl(0),
      I2 => \alu_out[2]_INST_0_i_8_n_0\,
      I3 => operandB(0),
      I4 => \alu_out[1]_INST_0_i_7_n_0\,
      O => \alu_out[1]_INST_0_i_4_n_0\
    );
\alu_out[1]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(1),
      I1 => operandA(1),
      O => \alu_out[1]_INST_0_i_5_n_0\
    );
\alu_out[1]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data2(1),
      I1 => alu_ctrl(1),
      I2 => data1(1),
      I3 => alu_ctrl(0),
      I4 => data0(1),
      O => \alu_out[1]_INST_0_i_6_n_0\
    );
\alu_out[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_11_n_0\,
      I1 => \alu_out[3]_INST_0_i_10_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[5]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[1]_INST_0_i_9_n_0\,
      O => \alu_out[1]_INST_0_i_7_n_0\
    );
\alu_out[1]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \alu_out[1]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => operandB(2),
      I3 => \alu_out[1]_INST_0_i_11_n_0\,
      I4 => operandB(1),
      O => data2(1)
    );
\alu_out[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(25),
      I1 => operandA(9),
      I2 => operandB(3),
      I3 => operandA(17),
      I4 => operandB(4),
      I5 => operandA(1),
      O => \alu_out[1]_INST_0_i_9_n_0\
    );
\alu_out[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(19),
      I1 => \alu_out[20]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[20]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(20)
    );
\alu_out[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(20),
      I1 => operandA(20),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[20]_INST_0_i_1_n_0\
    );
\alu_out[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_14_n_0\,
      I1 => \alu_out[24]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[22]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[26]_INST_0_i_13_n_0\,
      O => \alu_out[20]_INST_0_i_10_n_0\
    );
\alu_out[20]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => operandB(3),
      I1 => \operandA__63\(31),
      I2 => operandB(4),
      I3 => operandA(24),
      O => \alu_out[20]_INST_0_i_11_n_0\
    );
\alu_out[20]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(20),
      O => \alu_out[20]_INST_0_i_12_n_0\
    );
\alu_out[20]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(24),
      I1 => operandB(2),
      I2 => operandA(28),
      I3 => operandB(3),
      I4 => operandA(20),
      I5 => operandB(4),
      O => \alu_out[20]_INST_0_i_13_n_0\
    );
\alu_out[20]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(5),
      I1 => operandB(3),
      I2 => operandA(13),
      I3 => operandB(4),
      O => \alu_out[20]_INST_0_i_14_n_0\
    );
\alu_out[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_4_n_0\,
      I1 => \alu_out[20]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[20]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[20]_INST_0_i_7_n_0\,
      O => \alu_out[20]_INST_0_i_2_n_0\
    );
\alu_out[20]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(20),
      I1 => forwarded_rs2(20),
      I2 => alu_src,
      O => operandB(20)
    );
\alu_out[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_8_n_0\,
      I1 => \alu_out[20]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[21]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[20]_INST_0_i_9_n_0\,
      O => \alu_out[20]_INST_0_i_4_n_0\
    );
\alu_out[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(20),
      I2 => operandB(20),
      O => \alu_out[20]_INST_0_i_5_n_0\
    );
\alu_out[20]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[20]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[20]_INST_0_i_6_n_0\
    );
\alu_out[20]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(20),
      I1 => alu_ctrl(0),
      I2 => data0(20),
      O => \alu_out[20]_INST_0_i_7_n_0\
    );
\alu_out[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_11_n_0\,
      I1 => \alu_out[22]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[20]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[20]_INST_0_i_12_n_0\,
      O => \alu_out[20]_INST_0_i_8_n_0\
    );
\alu_out[20]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[20]_INST_0_i_13_n_0\,
      O => \alu_out[20]_INST_0_i_9_n_0\
    );
\alu_out[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(20),
      I1 => \alu_out[21]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[21]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(21)
    );
\alu_out[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(21),
      I1 => operandA(21),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[21]_INST_0_i_1_n_0\
    );
\alu_out[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_14_n_0\,
      I1 => \alu_out[25]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[23]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[27]_INST_0_i_14_n_0\,
      O => \alu_out[21]_INST_0_i_10_n_0\
    );
\alu_out[21]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => operandB(3),
      I1 => \operandA__63\(31),
      I2 => operandB(4),
      I3 => operandA(25),
      O => \alu_out[21]_INST_0_i_11_n_0\
    );
\alu_out[21]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(21),
      O => \alu_out[21]_INST_0_i_12_n_0\
    );
\alu_out[21]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(25),
      I1 => operandB(2),
      I2 => operandA(29),
      I3 => operandB(3),
      I4 => operandA(21),
      I5 => operandB(4),
      O => \alu_out[21]_INST_0_i_13_n_0\
    );
\alu_out[21]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(6),
      I1 => operandB(3),
      I2 => operandA(14),
      I3 => operandB(4),
      O => \alu_out[21]_INST_0_i_14_n_0\
    );
\alu_out[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_4_n_0\,
      I1 => \alu_out[21]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[21]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[21]_INST_0_i_7_n_0\,
      O => \alu_out[21]_INST_0_i_2_n_0\
    );
\alu_out[21]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(21),
      I1 => forwarded_rs2(21),
      I2 => alu_src,
      O => operandB(21)
    );
\alu_out[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_8_n_0\,
      I1 => \alu_out[21]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[22]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[21]_INST_0_i_9_n_0\,
      O => \alu_out[21]_INST_0_i_4_n_0\
    );
\alu_out[21]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(21),
      I2 => operandB(21),
      O => \alu_out[21]_INST_0_i_5_n_0\
    );
\alu_out[21]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[21]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[21]_INST_0_i_6_n_0\
    );
\alu_out[21]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(21),
      I1 => alu_ctrl(0),
      I2 => data0(21),
      O => \alu_out[21]_INST_0_i_7_n_0\
    );
\alu_out[21]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[21]_INST_0_i_11_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[21]_INST_0_i_12_n_0\,
      O => \alu_out[21]_INST_0_i_8_n_0\
    );
\alu_out[21]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[21]_INST_0_i_13_n_0\,
      O => \alu_out[21]_INST_0_i_9_n_0\
    );
\alu_out[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(21),
      I1 => \alu_out[22]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[22]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(22)
    );
\alu_out[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(22),
      I1 => operandA(22),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[22]_INST_0_i_1_n_0\
    );
\alu_out[22]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_14_n_0\,
      I1 => \alu_out[26]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[24]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[28]_INST_0_i_18_n_0\,
      O => \alu_out[22]_INST_0_i_10_n_0\
    );
\alu_out[22]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => operandB(3),
      I1 => \operandA__63\(31),
      I2 => operandB(4),
      I3 => operandA(26),
      O => \alu_out[22]_INST_0_i_11_n_0\
    );
\alu_out[22]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(22),
      O => \alu_out[22]_INST_0_i_12_n_0\
    );
\alu_out[22]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(26),
      I1 => operandB(2),
      I2 => operandA(30),
      I3 => operandB(3),
      I4 => operandA(22),
      I5 => operandB(4),
      O => \alu_out[22]_INST_0_i_13_n_0\
    );
\alu_out[22]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => operandA(7),
      I1 => operandB(3),
      I2 => operandA(15),
      I3 => operandB(4),
      O => \alu_out[22]_INST_0_i_14_n_0\
    );
\alu_out[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_4_n_0\,
      I1 => \alu_out[22]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[22]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[22]_INST_0_i_7_n_0\,
      O => \alu_out[22]_INST_0_i_2_n_0\
    );
\alu_out[22]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(22),
      I1 => forwarded_rs2(22),
      I2 => alu_src,
      O => operandB(22)
    );
\alu_out[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_7_n_0\,
      I1 => \alu_out[22]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[23]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[22]_INST_0_i_9_n_0\,
      O => \alu_out[22]_INST_0_i_4_n_0\
    );
\alu_out[22]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(22),
      I2 => operandB(22),
      O => \alu_out[22]_INST_0_i_5_n_0\
    );
\alu_out[22]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[22]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[22]_INST_0_i_6_n_0\
    );
\alu_out[22]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(22),
      I1 => alu_ctrl(0),
      I2 => data0(22),
      O => \alu_out[22]_INST_0_i_7_n_0\
    );
\alu_out[22]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[22]_INST_0_i_11_n_0\,
      I3 => operandB(2),
      I4 => \alu_out[22]_INST_0_i_12_n_0\,
      O => \alu_out[22]_INST_0_i_8_n_0\
    );
\alu_out[22]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[22]_INST_0_i_13_n_0\,
      O => \alu_out[22]_INST_0_i_9_n_0\
    );
\alu_out[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(22),
      I1 => \alu_out[23]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[23]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(23)
    );
\alu_out[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(23),
      I1 => operandA(23),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[23]_INST_0_i_1_n_0\
    );
\alu_out[23]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(23),
      I1 => alu_ctrl(0),
      I2 => data0(23),
      O => \alu_out[23]_INST_0_i_10_n_0\
    );
\alu_out[23]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(23),
      O => \alu_out[23]_INST_0_i_11_n_0\
    );
\alu_out[23]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(2),
      I2 => \operandA__63\(31),
      I3 => operandB(3),
      I4 => operandA(23),
      I5 => operandB(4),
      O => \alu_out[23]_INST_0_i_12_n_0\
    );
\alu_out[23]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(8),
      I1 => operandB(3),
      I2 => operandA(0),
      I3 => operandB(4),
      I4 => operandA(16),
      O => \alu_out[23]_INST_0_i_13_n_0\
    );
\alu_out[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[23]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[23]_INST_0_i_6_n_0\,
      O => \alu_out[23]_INST_0_i_2_n_0\
    );
\alu_out[23]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(23),
      I1 => forwarded_rs2(23),
      I2 => alu_src,
      O => operandB(23)
    );
\alu_out[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_7_n_0\,
      I1 => \alu_out[23]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[24]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[23]_INST_0_i_8_n_0\,
      O => \alu_out[23]_INST_0_i_4_n_0\
    );
\alu_out[23]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(23),
      I1 => operandA(23),
      O => \alu_out[23]_INST_0_i_5_n_0\
    );
\alu_out[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[23]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[23]_INST_0_i_10_n_0\,
      O => \alu_out[23]_INST_0_i_6_n_0\
    );
\alu_out[23]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[23]_INST_0_i_11_n_0\,
      O => \alu_out[23]_INST_0_i_7_n_0\
    );
\alu_out[23]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[23]_INST_0_i_12_n_0\,
      O => \alu_out[23]_INST_0_i_8_n_0\
    );
\alu_out[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_13_n_0\,
      I1 => \alu_out[27]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[25]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[29]_INST_0_i_8_n_0\,
      O => \alu_out[23]_INST_0_i_9_n_0\
    );
\alu_out[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(23),
      I1 => \alu_out[24]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[24]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(24)
    );
\alu_out[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[24]_INST_0_i_1_n_0\
    );
\alu_out[24]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(24),
      I1 => alu_ctrl(0),
      I2 => data0(24),
      O => \alu_out[24]_INST_0_i_10_n_0\
    );
\alu_out[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(24),
      O => \alu_out[24]_INST_0_i_11_n_0\
    );
\alu_out[24]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(24),
      I4 => operandB(3),
      O => \alu_out[24]_INST_0_i_12_n_0\
    );
\alu_out[24]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(9),
      I1 => operandB(3),
      I2 => operandA(1),
      I3 => operandB(4),
      I4 => operandA(17),
      O => \alu_out[24]_INST_0_i_13_n_0\
    );
\alu_out[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[24]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[24]_INST_0_i_6_n_0\,
      O => \alu_out[24]_INST_0_i_2_n_0\
    );
\alu_out[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(24),
      I1 => forwarded_rs2(24),
      I2 => alu_src,
      O => operandB(24)
    );
\alu_out[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_7_n_0\,
      I1 => \alu_out[24]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[25]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[24]_INST_0_i_8_n_0\,
      O => \alu_out[24]_INST_0_i_4_n_0\
    );
\alu_out[24]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      O => \alu_out[24]_INST_0_i_5_n_0\
    );
\alu_out[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[24]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[24]_INST_0_i_10_n_0\,
      O => \alu_out[24]_INST_0_i_6_n_0\
    );
\alu_out[24]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[24]_INST_0_i_11_n_0\,
      O => \alu_out[24]_INST_0_i_7_n_0\
    );
\alu_out[24]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[24]_INST_0_i_12_n_0\,
      O => \alu_out[24]_INST_0_i_8_n_0\
    );
\alu_out[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_13_n_0\,
      I1 => \alu_out[28]_INST_0_i_18_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[26]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[30]_INST_0_i_10_n_0\,
      O => \alu_out[24]_INST_0_i_9_n_0\
    );
\alu_out[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(24),
      I1 => \alu_out[25]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[25]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(25)
    );
\alu_out[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(25),
      I1 => operandA(25),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[25]_INST_0_i_1_n_0\
    );
\alu_out[25]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(25),
      I1 => alu_ctrl(0),
      I2 => data0(25),
      O => \alu_out[25]_INST_0_i_10_n_0\
    );
\alu_out[25]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(25),
      O => \alu_out[25]_INST_0_i_11_n_0\
    );
\alu_out[25]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(25),
      I4 => operandB(3),
      O => \alu_out[25]_INST_0_i_12_n_0\
    );
\alu_out[25]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(10),
      I1 => operandB(3),
      I2 => operandA(2),
      I3 => operandB(4),
      I4 => operandA(18),
      O => \alu_out[25]_INST_0_i_13_n_0\
    );
\alu_out[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[25]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[25]_INST_0_i_6_n_0\,
      O => \alu_out[25]_INST_0_i_2_n_0\
    );
\alu_out[25]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(25),
      I1 => forwarded_rs2(25),
      I2 => alu_src,
      O => operandB(25)
    );
\alu_out[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_7_n_0\,
      I1 => \alu_out[25]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[26]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[25]_INST_0_i_8_n_0\,
      O => \alu_out[25]_INST_0_i_4_n_0\
    );
\alu_out[25]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(25),
      I1 => operandA(25),
      O => \alu_out[25]_INST_0_i_5_n_0\
    );
\alu_out[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[25]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[25]_INST_0_i_10_n_0\,
      O => \alu_out[25]_INST_0_i_6_n_0\
    );
\alu_out[25]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[25]_INST_0_i_11_n_0\,
      O => \alu_out[25]_INST_0_i_7_n_0\
    );
\alu_out[25]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[25]_INST_0_i_12_n_0\,
      O => \alu_out[25]_INST_0_i_8_n_0\
    );
\alu_out[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_13_n_0\,
      I1 => \alu_out[29]_INST_0_i_8_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[27]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_14_n_0\,
      O => \alu_out[25]_INST_0_i_9_n_0\
    );
\alu_out[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(25),
      I1 => \alu_out[26]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[26]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(26)
    );
\alu_out[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[26]_INST_0_i_1_n_0\
    );
\alu_out[26]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(26),
      I1 => alu_ctrl(0),
      I2 => data0(26),
      O => \alu_out[26]_INST_0_i_10_n_0\
    );
\alu_out[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(26),
      O => \alu_out[26]_INST_0_i_11_n_0\
    );
\alu_out[26]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(26),
      I4 => operandB(3),
      O => \alu_out[26]_INST_0_i_12_n_0\
    );
\alu_out[26]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(11),
      I1 => operandB(3),
      I2 => operandA(3),
      I3 => operandB(4),
      I4 => operandA(19),
      O => \alu_out[26]_INST_0_i_13_n_0\
    );
\alu_out[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[26]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[26]_INST_0_i_6_n_0\,
      O => \alu_out[26]_INST_0_i_2_n_0\
    );
\alu_out[26]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(26),
      I1 => forwarded_rs2(26),
      I2 => alu_src,
      O => operandB(26)
    );
\alu_out[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_7_n_0\,
      I1 => \alu_out[26]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[27]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[26]_INST_0_i_8_n_0\,
      O => \alu_out[26]_INST_0_i_4_n_0\
    );
\alu_out[26]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      O => \alu_out[26]_INST_0_i_5_n_0\
    );
\alu_out[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[26]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[26]_INST_0_i_10_n_0\,
      O => \alu_out[26]_INST_0_i_6_n_0\
    );
\alu_out[26]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_17_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[26]_INST_0_i_11_n_0\,
      O => \alu_out[26]_INST_0_i_7_n_0\
    );
\alu_out[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(28),
      I2 => operandB(4),
      I3 => operandB(2),
      I4 => operandB(1),
      I5 => \alu_out[26]_INST_0_i_12_n_0\,
      O => \alu_out[26]_INST_0_i_8_n_0\
    );
\alu_out[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_13_n_0\,
      I1 => \alu_out[30]_INST_0_i_10_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[28]_INST_0_i_18_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_10_n_0\,
      O => \alu_out[26]_INST_0_i_9_n_0\
    );
\alu_out[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(26),
      I1 => \alu_out[27]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[27]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(27)
    );
\alu_out[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(27),
      I1 => operandA(27),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[27]_INST_0_i_1_n_0\
    );
\alu_out[27]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(27),
      I1 => alu_ctrl(0),
      I2 => data0(27),
      O => \alu_out[27]_INST_0_i_10_n_0\
    );
\alu_out[27]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(29),
      O => \alu_out[27]_INST_0_i_11_n_0\
    );
\alu_out[27]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(27),
      O => \alu_out[27]_INST_0_i_12_n_0\
    );
\alu_out[27]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(27),
      I4 => operandB(3),
      O => \alu_out[27]_INST_0_i_13_n_0\
    );
\alu_out[27]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(12),
      I1 => operandB(3),
      I2 => operandA(4),
      I3 => operandB(4),
      I4 => operandA(20),
      O => \alu_out[27]_INST_0_i_14_n_0\
    );
\alu_out[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[27]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[27]_INST_0_i_6_n_0\,
      O => \alu_out[27]_INST_0_i_2_n_0\
    );
\alu_out[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(27),
      I1 => forwarded_rs2(27),
      I2 => alu_src,
      O => operandB(27)
    );
\alu_out[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_11_n_0\,
      I1 => \alu_out[27]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[28]_INST_0_i_13_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[27]_INST_0_i_8_n_0\,
      O => \alu_out[27]_INST_0_i_4_n_0\
    );
\alu_out[27]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(27),
      I1 => operandA(27),
      O => \alu_out[27]_INST_0_i_5_n_0\
    );
\alu_out[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_14_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[27]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[27]_INST_0_i_10_n_0\,
      O => \alu_out[27]_INST_0_i_6_n_0\
    );
\alu_out[27]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_11_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[27]_INST_0_i_12_n_0\,
      O => \alu_out[27]_INST_0_i_7_n_0\
    );
\alu_out[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(29),
      I2 => operandB(4),
      I3 => operandB(2),
      I4 => operandB(1),
      I5 => \alu_out[27]_INST_0_i_13_n_0\,
      O => \alu_out[27]_INST_0_i_8_n_0\
    );
\alu_out[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_14_n_0\,
      I1 => \alu_out[31]_INST_0_i_14_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[29]_INST_0_i_8_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_16_n_0\,
      O => \alu_out[27]_INST_0_i_9_n_0\
    );
\alu_out[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(27),
      I1 => \alu_out[28]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[28]_INST_0_i_3_n_0\,
      I4 => is_jalr,
      O => alu_out(28)
    );
\alu_out[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[28]_INST_0_i_1_n_0\
    );
\alu_out[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => operandB(1),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(29),
      O => \alu_out[28]_INST_0_i_10_n_0\
    );
\alu_out[28]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_16_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[28]_INST_0_i_17_n_0\,
      O => \alu_out[28]_INST_0_i_11_n_0\
    );
\alu_out[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandB(1),
      I2 => operandB(3),
      I3 => operandA(29),
      I4 => operandB(4),
      I5 => operandB(2),
      O => \alu_out[28]_INST_0_i_12_n_0\
    );
\alu_out[28]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(1),
      I2 => operandB(3),
      I3 => operandA(28),
      I4 => operandB(4),
      I5 => operandB(2),
      O => \alu_out[28]_INST_0_i_13_n_0\
    );
\alu_out[28]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_18_n_0\,
      I1 => \alu_out[31]_INST_0_i_10_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[30]_INST_0_i_10_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_12_n_0\,
      O => \alu_out[28]_INST_0_i_14_n_0\
    );
\alu_out[28]_INST_0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(28),
      I1 => alu_ctrl(0),
      I2 => data0(28),
      O => \alu_out[28]_INST_0_i_15_n_0\
    );
\alu_out[28]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(30),
      O => \alu_out[28]_INST_0_i_16_n_0\
    );
\alu_out[28]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(3),
      I2 => \operandA__63\(31),
      I3 => operandB(4),
      I4 => operandA(28),
      O => \alu_out[28]_INST_0_i_17_n_0\
    );
\alu_out[28]_INST_0_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(13),
      I1 => operandB(3),
      I2 => operandA(5),
      I3 => operandB(4),
      I4 => operandA(21),
      O => \alu_out[28]_INST_0_i_18_n_0\
    );
\alu_out[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAC000C0"
    )
        port map (
      I0 => alu_op(1),
      I1 => funct3(1),
      I2 => funct3(2),
      I3 => alu_op(0),
      I4 => is_lui,
      O => alu_ctrl(3)
    );
\alu_out[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[28]_INST_0_i_8_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[28]_INST_0_i_9_n_0\,
      O => \alu_out[28]_INST_0_i_3_n_0\
    );
\alu_out[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(28),
      I1 => forwarded_rs2(28),
      I2 => alu_src,
      O => operandB(28)
    );
\alu_out[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477474674474744"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(0),
      I2 => funct3(0),
      I3 => funct3(1),
      I4 => funct3(2),
      I5 => funct7(0),
      O => alu_ctrl(0)
    );
\alu_out[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0C3C00000C3C"
    )
        port map (
      I0 => alu_op(1),
      I1 => funct3(0),
      I2 => funct3(1),
      I3 => funct3(2),
      I4 => alu_op(0),
      I5 => is_lui,
      O => alu_ctrl(1)
    );
\alu_out[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_10_n_0\,
      I1 => \alu_out[28]_INST_0_i_11_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[28]_INST_0_i_12_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[28]_INST_0_i_13_n_0\,
      O => \alu_out[28]_INST_0_i_7_n_0\
    );
\alu_out[28]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      O => \alu_out[28]_INST_0_i_8_n_0\
    );
\alu_out[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_6_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[28]_INST_0_i_14_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[28]_INST_0_i_15_n_0\,
      O => \alu_out[28]_INST_0_i_9_n_0\
    );
\alu_out[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \PC_plus_4__60\(28),
      I1 => raw_alu_out(29),
      I2 => is_jalr,
      O => alu_out(29)
    );
\alu_out[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_2_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[29]_INST_0_i_3_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[29]_INST_0_i_4_n_0\,
      O => raw_alu_out(29)
    );
\alu_out[29]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => alu_ctrl(1),
      I1 => alu_ctrl(0),
      I2 => operandA(29),
      I3 => operandB(29),
      O => \alu_out[29]_INST_0_i_2_n_0\
    );
\alu_out[29]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_5_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => operandA(29),
      I4 => operandB(29),
      O => \alu_out[29]_INST_0_i_3_n_0\
    );
\alu_out[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_6_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[29]_INST_0_i_6_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[29]_INST_0_i_7_n_0\,
      O => \alu_out[29]_INST_0_i_4_n_0\
    );
\alu_out[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_8_n_0\,
      I1 => \alu_out[28]_INST_0_i_10_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[30]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[28]_INST_0_i_12_n_0\,
      O => \alu_out[29]_INST_0_i_5_n_0\
    );
\alu_out[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_8_n_0\,
      I1 => \alu_out[31]_INST_0_i_16_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[31]_INST_0_i_14_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_15_n_0\,
      O => \alu_out[29]_INST_0_i_6_n_0\
    );
\alu_out[29]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(29),
      I1 => alu_ctrl(0),
      I2 => data0(29),
      O => \alu_out[29]_INST_0_i_7_n_0\
    );
\alu_out[29]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(14),
      I1 => operandB(3),
      I2 => operandA(6),
      I3 => operandB(4),
      I4 => operandA(22),
      O => \alu_out[29]_INST_0_i_8_n_0\
    );
\alu_out[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(1),
      I1 => \alu_out[2]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[2]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(2)
    );
\alu_out[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[2]_INST_0_i_1_n_0\
    );
\alu_out[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(26),
      I1 => operandA(10),
      I2 => operandB(3),
      I3 => operandA(18),
      I4 => operandB(4),
      I5 => operandA(2),
      O => \alu_out[2]_INST_0_i_10_n_0\
    );
\alu_out[2]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(4),
      I2 => operandA(1),
      I3 => operandB(3),
      I4 => operandB(1),
      O => \alu_out[2]_INST_0_i_11_n_0\
    );
\alu_out[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[2]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[2]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[2]_INST_0_i_6_n_0\,
      O => \alu_out[2]_INST_0_i_2_n_0\
    );
\alu_out[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(2),
      I1 => forwarded_rs2(2),
      I2 => alu_src,
      O => operandB(2)
    );
\alu_out[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[3]_INST_0_i_7_n_0\,
      I1 => \alu_out[2]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[3]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[2]_INST_0_i_8_n_0\,
      O => \alu_out[2]_INST_0_i_4_n_0\
    );
\alu_out[2]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      O => \alu_out[2]_INST_0_i_5_n_0\
    );
\alu_out[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data2(2),
      I1 => alu_ctrl(1),
      I2 => data1(2),
      I3 => alu_ctrl(0),
      I4 => data0(2),
      O => \alu_out[2]_INST_0_i_6_n_0\
    );
\alu_out[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_11_n_0\,
      I1 => \alu_out[4]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[6]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[2]_INST_0_i_10_n_0\,
      O => \alu_out[2]_INST_0_i_7_n_0\
    );
\alu_out[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_12_n_0\,
      I1 => \alu_out[4]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[6]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[2]_INST_0_i_10_n_0\,
      O => \alu_out[2]_INST_0_i_8_n_0\
    );
\alu_out[2]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[2]_INST_0_i_11_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[3]_INST_0_i_11_n_0\,
      O => data2(2)
    );
\alu_out[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \PC_plus_4__60\(29),
      I1 => raw_alu_out(30),
      I2 => is_jalr,
      O => alu_out(30)
    );
\alu_out[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_2_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[30]_INST_0_i_3_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[30]_INST_0_i_4_n_0\,
      O => raw_alu_out(30)
    );
\alu_out[30]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(15),
      I1 => operandB(3),
      I2 => operandA(7),
      I3 => operandB(4),
      I4 => operandA(23),
      O => \alu_out[30]_INST_0_i_10_n_0\
    );
\alu_out[30]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => alu_ctrl(1),
      I1 => alu_ctrl(0),
      I2 => operandA(30),
      I3 => operandB(30),
      O => \alu_out[30]_INST_0_i_2_n_0\
    );
\alu_out[30]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B888"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_5_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => operandA(30),
      I4 => operandB(30),
      O => \alu_out[30]_INST_0_i_3_n_0\
    );
\alu_out[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_8_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[30]_INST_0_i_6_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[30]_INST_0_i_7_n_0\,
      O => \alu_out[30]_INST_0_i_4_n_0\
    );
\alu_out[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => \alu_out[30]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[31]_INST_0_i_6_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[30]_INST_0_i_9_n_0\,
      O => \alu_out[30]_INST_0_i_5_n_0\
    );
\alu_out[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_10_n_0\,
      I1 => \alu_out[31]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[31]_INST_0_i_10_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_11_n_0\,
      O => \alu_out[30]_INST_0_i_6_n_0\
    );
\alu_out[30]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(30),
      I1 => alu_ctrl(0),
      I2 => data0(30),
      O => \alu_out[30]_INST_0_i_7_n_0\
    );
\alu_out[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => operandB(1),
      I1 => operandB(2),
      I2 => operandB(3),
      I3 => \operandA__63\(31),
      I4 => operandB(4),
      I5 => operandA(30),
      O => \alu_out[30]_INST_0_i_8_n_0\
    );
\alu_out[30]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(4),
      I2 => operandA(30),
      I3 => operandB(3),
      I4 => operandB(1),
      O => \alu_out[30]_INST_0_i_9_n_0\
    );
\alu_out[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \PC_plus_4__60\(30),
      I1 => raw_alu_out(31),
      I2 => is_jalr,
      O => alu_out(31)
    );
\alu_out[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_2_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[31]_INST_0_i_3_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[31]_INST_0_i_5_n_0\,
      O => raw_alu_out(31)
    );
\alu_out[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(1),
      I1 => operandA(17),
      I2 => operandB(3),
      I3 => operandA(9),
      I4 => operandB(4),
      I5 => operandA(25),
      O => \alu_out[31]_INST_0_i_10_n_0\
    );
\alu_out[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(5),
      I1 => operandA(21),
      I2 => operandB(3),
      I3 => operandA(13),
      I4 => operandB(4),
      I5 => operandA(29),
      O => \alu_out[31]_INST_0_i_11_n_0\
    );
\alu_out[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(3),
      I1 => operandA(19),
      I2 => operandB(3),
      I3 => operandA(11),
      I4 => operandB(4),
      I5 => operandA(27),
      O => \alu_out[31]_INST_0_i_12_n_0\
    );
\alu_out[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(7),
      I1 => operandA(23),
      I2 => operandB(3),
      I3 => operandA(15),
      I4 => operandB(4),
      I5 => \operandA__63\(31),
      O => \alu_out[31]_INST_0_i_13_n_0\
    );
\alu_out[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(0),
      I1 => operandA(16),
      I2 => operandB(3),
      I3 => operandA(8),
      I4 => operandB(4),
      I5 => operandA(24),
      O => \alu_out[31]_INST_0_i_14_n_0\
    );
\alu_out[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(4),
      I1 => operandA(20),
      I2 => operandB(3),
      I3 => operandA(12),
      I4 => operandB(4),
      I5 => operandA(28),
      O => \alu_out[31]_INST_0_i_15_n_0\
    );
\alu_out[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(2),
      I1 => operandA(18),
      I2 => operandB(3),
      I3 => operandA(10),
      I4 => operandB(4),
      I5 => operandA(26),
      O => \alu_out[31]_INST_0_i_16_n_0\
    );
\alu_out[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(6),
      I1 => operandA(22),
      I2 => operandB(3),
      I3 => operandA(14),
      I4 => operandB(4),
      I5 => operandA(30),
      O => \alu_out[31]_INST_0_i_17_n_0\
    );
\alu_out[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7310"
    )
        port map (
      I0 => alu_ctrl(1),
      I1 => alu_ctrl(0),
      I2 => \operandA__63\(31),
      I3 => \operandB__95\(31),
      O => \alu_out[31]_INST_0_i_2_n_0\
    );
\alu_out[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0200F20FF200020"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_6_n_0\,
      I1 => operandB(0),
      I2 => alu_ctrl(1),
      I3 => alu_ctrl(0),
      I4 => \operandA__63\(31),
      I5 => \operandB__95\(31),
      O => \alu_out[31]_INST_0_i_3_n_0\
    );
\alu_out[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
        port map (
      I0 => funct3(2),
      I1 => funct3(1),
      I2 => funct3(0),
      I3 => alu_op(0),
      O => alu_ctrl(2)
    );
\alu_out[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_7_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[31]_INST_0_i_8_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[31]_INST_0_i_9_n_0\,
      O => \alu_out[31]_INST_0_i_5_n_0\
    );
\alu_out[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => operandB(2),
      I1 => operandB(4),
      I2 => \operandA__63\(31),
      I3 => operandB(3),
      I4 => operandB(1),
      O => \alu_out[31]_INST_0_i_6_n_0\
    );
\alu_out[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_10_n_0\,
      I1 => \alu_out[31]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[31]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_13_n_0\,
      O => \alu_out[31]_INST_0_i_7_n_0\
    );
\alu_out[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_14_n_0\,
      I1 => \alu_out[31]_INST_0_i_15_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[31]_INST_0_i_16_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[31]_INST_0_i_17_n_0\,
      O => \alu_out[31]_INST_0_i_8_n_0\
    );
\alu_out[31]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(31),
      I1 => alu_ctrl(0),
      I2 => data0(31),
      O => \alu_out[31]_INST_0_i_9_n_0\
    );
\alu_out[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(2),
      I1 => \alu_out[3]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[3]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(3)
    );
\alu_out[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(3),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[3]_INST_0_i_1_n_0\
    );
\alu_out[3]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(27),
      I1 => operandA(11),
      I2 => operandB(3),
      I3 => operandA(19),
      I4 => operandB(4),
      I5 => operandA(3),
      O => \alu_out[3]_INST_0_i_10_n_0\
    );
\alu_out[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => operandA(0),
      I1 => operandB(1),
      I2 => operandB(3),
      I3 => operandA(2),
      I4 => operandB(4),
      I5 => operandB(2),
      O => \alu_out[3]_INST_0_i_11_n_0\
    );
\alu_out[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[3]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[3]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[3]_INST_0_i_6_n_0\,
      O => \alu_out[3]_INST_0_i_2_n_0\
    );
\alu_out[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(3),
      I1 => forwarded_rs2(3),
      I2 => alu_src,
      O => operandB(3)
    );
\alu_out[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_8_n_0\,
      I1 => \alu_out[3]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[4]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[3]_INST_0_i_8_n_0\,
      O => \alu_out[3]_INST_0_i_4_n_0\
    );
\alu_out[3]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(3),
      O => \alu_out[3]_INST_0_i_5_n_0\
    );
\alu_out[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data2(3),
      I1 => alu_ctrl(1),
      I2 => data1(3),
      I3 => alu_ctrl(0),
      I4 => data0(3),
      O => \alu_out[3]_INST_0_i_6_n_0\
    );
\alu_out[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_11_n_0\,
      I1 => \alu_out[5]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[7]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[3]_INST_0_i_10_n_0\,
      O => \alu_out[3]_INST_0_i_7_n_0\
    );
\alu_out[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_12_n_0\,
      I1 => \alu_out[5]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[7]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[3]_INST_0_i_10_n_0\,
      O => \alu_out[3]_INST_0_i_8_n_0\
    );
\alu_out[3]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[3]_INST_0_i_11_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[4]_INST_0_i_10_n_0\,
      O => data2(3)
    );
\alu_out[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(3),
      I1 => \alu_out[4]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[4]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(4)
    );
\alu_out[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(4),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[4]_INST_0_i_1_n_0\
    );
\alu_out[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => operandA(1),
      I1 => operandB(1),
      I2 => operandB(3),
      I3 => operandA(3),
      I4 => operandB(4),
      I5 => operandB(2),
      O => \alu_out[4]_INST_0_i_10_n_0\
    );
\alu_out[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(28),
      I1 => operandA(12),
      I2 => operandB(3),
      I3 => operandA(20),
      I4 => operandB(4),
      I5 => operandA(4),
      O => \alu_out[4]_INST_0_i_11_n_0\
    );
\alu_out[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_4_n_0\,
      I1 => \alu_out[4]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[4]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[4]_INST_0_i_7_n_0\,
      O => \alu_out[4]_INST_0_i_2_n_0\
    );
\alu_out[4]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(4),
      I1 => forwarded_rs2(4),
      I2 => alu_src,
      O => operandB(4)
    );
\alu_out[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_8_n_0\,
      I1 => \alu_out[4]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[5]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[4]_INST_0_i_9_n_0\,
      O => \alu_out[4]_INST_0_i_4_n_0\
    );
\alu_out[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(4),
      I2 => operandB(4),
      O => \alu_out[4]_INST_0_i_5_n_0\
    );
\alu_out[4]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[4]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[4]_INST_0_i_6_n_0\
    );
\alu_out[4]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => alu_ctrl(0),
      I2 => data0(4),
      O => \alu_out[4]_INST_0_i_7_n_0\
    );
\alu_out[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_11_n_0\,
      I1 => \alu_out[6]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[8]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[4]_INST_0_i_11_n_0\,
      O => \alu_out[4]_INST_0_i_8_n_0\
    );
\alu_out[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_12_n_0\,
      I1 => \alu_out[6]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[8]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[4]_INST_0_i_11_n_0\,
      O => \alu_out[4]_INST_0_i_9_n_0\
    );
\alu_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(4),
      I1 => \alu_out[5]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[5]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(5)
    );
\alu_out[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(5),
      I1 => operandA(5),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[5]_INST_0_i_1_n_0\
    );
\alu_out[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(2),
      I2 => operandB(4),
      I3 => operandB(2),
      I4 => operandB(1),
      I5 => \alu_out[7]_INST_0_i_12_n_0\,
      O => \alu_out[5]_INST_0_i_10_n_0\
    );
\alu_out[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(29),
      I1 => operandA(13),
      I2 => operandB(3),
      I3 => operandA(21),
      I4 => operandB(4),
      I5 => operandA(5),
      O => \alu_out[5]_INST_0_i_11_n_0\
    );
\alu_out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_4_n_0\,
      I1 => \alu_out[5]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[5]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[5]_INST_0_i_7_n_0\,
      O => \alu_out[5]_INST_0_i_2_n_0\
    );
\alu_out[5]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(5),
      I1 => forwarded_rs2(5),
      I2 => alu_src,
      O => operandB(5)
    );
\alu_out[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_7_n_0\,
      I1 => \alu_out[5]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[6]_INST_0_i_8_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[5]_INST_0_i_9_n_0\,
      O => \alu_out[5]_INST_0_i_4_n_0\
    );
\alu_out[5]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(5),
      I2 => operandB(5),
      O => \alu_out[5]_INST_0_i_5_n_0\
    );
\alu_out[5]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_9_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[5]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[5]_INST_0_i_6_n_0\
    );
\alu_out[5]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(5),
      I1 => alu_ctrl(0),
      I2 => data0(5),
      O => \alu_out[5]_INST_0_i_7_n_0\
    );
\alu_out[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_12_n_0\,
      I1 => \alu_out[7]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[9]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[5]_INST_0_i_11_n_0\,
      O => \alu_out[5]_INST_0_i_8_n_0\
    );
\alu_out[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_13_n_0\,
      I1 => \alu_out[7]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[9]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[5]_INST_0_i_11_n_0\,
      O => \alu_out[5]_INST_0_i_9_n_0\
    );
\alu_out[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(5),
      I1 => \alu_out[6]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[6]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(6)
    );
\alu_out[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[6]_INST_0_i_1_n_0\
    );
\alu_out[6]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => alu_ctrl(0),
      I2 => data0(6),
      O => \alu_out[6]_INST_0_i_10_n_0\
    );
\alu_out[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => operandA(30),
      I1 => operandA(14),
      I2 => operandB(3),
      I3 => operandA(22),
      I4 => operandB(4),
      I5 => operandA(6),
      O => \alu_out[6]_INST_0_i_11_n_0\
    );
\alu_out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => alu_ctrl(0),
      I3 => \alu_out[6]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(2),
      I5 => \alu_out[6]_INST_0_i_6_n_0\,
      O => \alu_out[6]_INST_0_i_2_n_0\
    );
\alu_out[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(6),
      I1 => forwarded_rs2(6),
      I2 => alu_src,
      O => operandB(6)
    );
\alu_out[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_8_n_0\,
      I1 => \alu_out[6]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[7]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[6]_INST_0_i_8_n_0\,
      O => \alu_out[6]_INST_0_i_4_n_0\
    );
\alu_out[6]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      O => \alu_out[6]_INST_0_i_5_n_0\
    );
\alu_out[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[6]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(1),
      I5 => \alu_out[6]_INST_0_i_10_n_0\,
      O => \alu_out[6]_INST_0_i_6_n_0\
    );
\alu_out[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_11_n_0\,
      I1 => \alu_out[8]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[10]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[6]_INST_0_i_11_n_0\,
      O => \alu_out[6]_INST_0_i_7_n_0\
    );
\alu_out[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_12_n_0\,
      I1 => \alu_out[8]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[10]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[6]_INST_0_i_11_n_0\,
      O => \alu_out[6]_INST_0_i_8_n_0\
    );
\alu_out[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => operandB(3),
      I1 => operandA(3),
      I2 => operandB(4),
      I3 => operandB(2),
      I4 => operandB(1),
      I5 => \alu_out[8]_INST_0_i_13_n_0\,
      O => \alu_out[6]_INST_0_i_9_n_0\
    );
\alu_out[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(6),
      I1 => \alu_out[7]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[7]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(7)
    );
\alu_out[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(7),
      I1 => operandA(7),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[7]_INST_0_i_1_n_0\
    );
\alu_out[7]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_12_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[9]_INST_0_i_10_n_0\,
      O => \alu_out[7]_INST_0_i_10_n_0\
    );
\alu_out[7]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(15),
      I2 => operandB(3),
      I3 => operandA(23),
      I4 => operandB(4),
      I5 => operandA(7),
      O => \alu_out[7]_INST_0_i_11_n_0\
    );
\alu_out[7]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(0),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(4),
      I4 => operandB(3),
      O => \alu_out[7]_INST_0_i_12_n_0\
    );
\alu_out[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_4_n_0\,
      I1 => \alu_out[7]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[7]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[7]_INST_0_i_7_n_0\,
      O => \alu_out[7]_INST_0_i_2_n_0\
    );
\alu_out[7]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(7),
      I1 => forwarded_rs2(7),
      I2 => alu_src,
      O => operandB(7)
    );
\alu_out[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_8_n_0\,
      I1 => \alu_out[7]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[8]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[7]_INST_0_i_9_n_0\,
      O => \alu_out[7]_INST_0_i_4_n_0\
    );
\alu_out[7]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(7),
      I2 => operandB(7),
      O => \alu_out[7]_INST_0_i_5_n_0\
    );
\alu_out[7]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_10_n_0\,
      I1 => operandB(0),
      I2 => \alu_out[7]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[7]_INST_0_i_6_n_0\
    );
\alu_out[7]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(7),
      I1 => alu_ctrl(0),
      I2 => data0(7),
      O => \alu_out[7]_INST_0_i_7_n_0\
    );
\alu_out[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_11_n_0\,
      I1 => \alu_out[9]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[11]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[7]_INST_0_i_11_n_0\,
      O => \alu_out[7]_INST_0_i_8_n_0\
    );
\alu_out[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_12_n_0\,
      I1 => \alu_out[9]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[11]_INST_0_i_13_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[7]_INST_0_i_11_n_0\,
      O => \alu_out[7]_INST_0_i_9_n_0\
    );
\alu_out[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(7),
      I1 => \alu_out[8]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[8]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(8)
    );
\alu_out[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(8),
      I1 => operandA(8),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[8]_INST_0_i_1_n_0\
    );
\alu_out[8]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_13_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[10]_INST_0_i_13_n_0\,
      O => \alu_out[8]_INST_0_i_10_n_0\
    );
\alu_out[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(16),
      I2 => operandB(3),
      I3 => operandA(24),
      I4 => operandB(4),
      I5 => operandA(8),
      O => \alu_out[8]_INST_0_i_11_n_0\
    );
\alu_out[8]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(16),
      I1 => operandB(3),
      I2 => operandA(24),
      I3 => operandB(4),
      I4 => operandA(8),
      O => \alu_out[8]_INST_0_i_12_n_0\
    );
\alu_out[8]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(1),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(5),
      I4 => operandB(3),
      O => \alu_out[8]_INST_0_i_13_n_0\
    );
\alu_out[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_4_n_0\,
      I1 => \alu_out[8]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[8]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[8]_INST_0_i_7_n_0\,
      O => \alu_out[8]_INST_0_i_2_n_0\
    );
\alu_out[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(8),
      I1 => forwarded_rs2(8),
      I2 => alu_src,
      O => operandB(8)
    );
\alu_out[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_8_n_0\,
      I1 => \alu_out[8]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[9]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[8]_INST_0_i_9_n_0\,
      O => \alu_out[8]_INST_0_i_4_n_0\
    );
\alu_out[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(8),
      I2 => operandB(8),
      O => \alu_out[8]_INST_0_i_5_n_0\
    );
\alu_out[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB800B8"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_10_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[11]_INST_0_i_10_n_0\,
      I3 => operandB(0),
      I4 => \alu_out[8]_INST_0_i_10_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[8]_INST_0_i_6_n_0\
    );
\alu_out[8]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(8),
      I1 => alu_ctrl(0),
      I2 => data0(8),
      O => \alu_out[8]_INST_0_i_7_n_0\
    );
\alu_out[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_11_n_0\,
      I1 => \alu_out[10]_INST_0_i_11_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[12]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[8]_INST_0_i_11_n_0\,
      O => \alu_out[8]_INST_0_i_8_n_0\
    );
\alu_out[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_12_n_0\,
      I1 => \alu_out[10]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[12]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[8]_INST_0_i_12_n_0\,
      O => \alu_out[8]_INST_0_i_9_n_0\
    );
\alu_out[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => \PC_plus_4__60\(8),
      I1 => \alu_out[9]_INST_0_i_1_n_0\,
      I2 => alu_ctrl(3),
      I3 => \alu_out[9]_INST_0_i_2_n_0\,
      I4 => is_jalr,
      O => alu_out(9)
    );
\alu_out[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => operandB(9),
      I1 => operandA(9),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[9]_INST_0_i_1_n_0\
    );
\alu_out[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => operandA(2),
      I1 => operandB(2),
      I2 => operandB(4),
      I3 => operandA(6),
      I4 => operandB(3),
      O => \alu_out[9]_INST_0_i_10_n_0\
    );
\alu_out[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => operandA(17),
      I2 => operandB(3),
      I3 => operandA(25),
      I4 => operandB(4),
      I5 => operandA(9),
      O => \alu_out[9]_INST_0_i_11_n_0\
    );
\alu_out[9]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => operandA(17),
      I1 => operandB(3),
      I2 => operandA(25),
      I3 => operandB(4),
      I4 => operandA(9),
      O => \alu_out[9]_INST_0_i_12_n_0\
    );
\alu_out[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_4_n_0\,
      I1 => \alu_out[9]_INST_0_i_5_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[9]_INST_0_i_6_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[9]_INST_0_i_7_n_0\,
      O => \alu_out[9]_INST_0_i_2_n_0\
    );
\alu_out[9]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate_data(9),
      I1 => forwarded_rs2(9),
      I2 => alu_src,
      O => operandB(9)
    );
\alu_out[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_8_n_0\,
      I1 => \alu_out[9]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[10]_INST_0_i_9_n_0\,
      I4 => operandB(0),
      I5 => \alu_out[9]_INST_0_i_9_n_0\,
      O => \alu_out[9]_INST_0_i_4_n_0\
    );
\alu_out[9]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => alu_ctrl(0),
      I1 => operandA(9),
      I2 => operandB(9),
      O => \alu_out[9]_INST_0_i_5_n_0\
    );
\alu_out[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B8FF00"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_10_n_0\,
      I1 => operandB(1),
      I2 => \alu_out[11]_INST_0_i_10_n_0\,
      I3 => \alu_out[10]_INST_0_i_10_n_0\,
      I4 => operandB(0),
      I5 => alu_ctrl(0),
      O => \alu_out[9]_INST_0_i_6_n_0\
    );
\alu_out[9]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(9),
      I1 => alu_ctrl(0),
      I2 => data0(9),
      O => \alu_out[9]_INST_0_i_7_n_0\
    );
\alu_out[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_11_n_0\,
      I1 => \alu_out[11]_INST_0_i_12_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[13]_INST_0_i_11_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[9]_INST_0_i_11_n_0\,
      O => \alu_out[9]_INST_0_i_8_n_0\
    );
\alu_out[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_12_n_0\,
      I1 => \alu_out[11]_INST_0_i_13_n_0\,
      I2 => operandB(1),
      I3 => \alu_out[13]_INST_0_i_12_n_0\,
      I4 => operandB(2),
      I5 => \alu_out[9]_INST_0_i_12_n_0\,
      O => \alu_out[9]_INST_0_i_9_n_0\
    );
\branch_addr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[10]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(9),
      O => branch_addr(9)
    );
\branch_addr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[11]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(10),
      O => branch_addr(10)
    );
\branch_addr[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[12]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(11),
      O => branch_addr(11)
    );
\branch_addr[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[13]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(12),
      O => branch_addr(12)
    );
\branch_addr[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[14]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(13),
      O => branch_addr(13)
    );
\branch_addr[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[15]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(14),
      O => branch_addr(14)
    );
\branch_addr[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[16]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(15),
      O => branch_addr(15)
    );
\branch_addr[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[17]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(16),
      O => branch_addr(16)
    );
\branch_addr[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[18]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(17),
      O => branch_addr(17)
    );
\branch_addr[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[19]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(18),
      O => branch_addr(18)
    );
\branch_addr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[1]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[1]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(0),
      O => branch_addr(0)
    );
\branch_addr[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[20]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(19),
      O => branch_addr(19)
    );
\branch_addr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[21]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(20),
      O => branch_addr(20)
    );
\branch_addr[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[22]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(21),
      O => branch_addr(21)
    );
\branch_addr[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[23]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(22),
      O => branch_addr(22)
    );
\branch_addr[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[24]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(23),
      O => branch_addr(23)
    );
\branch_addr[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[25]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(24),
      O => branch_addr(24)
    );
\branch_addr[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[26]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(25),
      O => branch_addr(25)
    );
\branch_addr[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[27]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(26),
      O => branch_addr(26)
    );
\branch_addr[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[28]_INST_0_i_3_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(27),
      O => branch_addr(27)
    );
\branch_addr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raw_alu_out(29),
      I1 => is_jalr,
      I2 => \branch_addr0__93\(28),
      O => branch_addr(28)
    );
\branch_addr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[2]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[2]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(1),
      O => branch_addr(1)
    );
\branch_addr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raw_alu_out(30),
      I1 => is_jalr,
      I2 => \branch_addr0__93\(29),
      O => branch_addr(29)
    );
\branch_addr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => raw_alu_out(31),
      I1 => is_jalr,
      I2 => \branch_addr0__93\(30),
      O => branch_addr(30)
    );
\branch_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[3]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[3]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(2),
      O => branch_addr(2)
    );
\branch_addr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[4]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(3),
      O => branch_addr(3)
    );
\branch_addr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[5]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(4),
      O => branch_addr(4)
    );
\branch_addr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[6]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(5),
      O => branch_addr(5)
    );
\branch_addr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[7]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(6),
      O => branch_addr(6)
    );
\branch_addr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[8]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(7),
      O => branch_addr(7)
    );
\branch_addr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[9]_INST_0_i_2_n_0\,
      I3 => is_jalr,
      I4 => \branch_addr0__93\(8),
      O => branch_addr(8)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(14),
      I1 => operandA(14),
      I2 => operandA(15),
      I3 => operandB(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(7),
      I1 => operandB(7),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(12),
      I1 => operandA(12),
      I2 => operandA(13),
      I3 => operandB(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(6),
      I1 => operandB(6),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(10),
      I1 => operandA(10),
      I2 => operandA(11),
      I3 => operandB(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(5),
      I1 => operandB(5),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(8),
      I1 => operandA(8),
      I2 => operandA(9),
      I3 => operandB(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(4),
      I1 => operandB(4),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(14),
      I1 => operandA(14),
      I2 => operandB(15),
      I3 => operandA(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(12),
      I1 => operandA(12),
      I2 => operandB(13),
      I3 => operandA(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(10),
      I1 => operandA(10),
      I2 => operandB(11),
      I3 => operandA(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(8),
      I1 => operandA(8),
      I2 => operandB(9),
      I3 => operandA(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(22),
      I1 => operandA(22),
      I2 => operandA(23),
      I3 => operandB(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(11),
      I1 => operandB(11),
      O => \i__carry__1_i_1__3_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(20),
      I1 => operandA(20),
      I2 => operandA(21),
      I3 => operandB(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(10),
      I1 => operandB(10),
      O => \i__carry__1_i_2__3_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(18),
      I1 => operandA(18),
      I2 => operandA(19),
      I3 => operandB(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(9),
      I1 => operandB(9),
      O => \i__carry__1_i_3__3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(16),
      I1 => operandA(16),
      I2 => operandA(17),
      I3 => operandB(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(8),
      I1 => operandB(8),
      O => \i__carry__1_i_4__3_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(22),
      I1 => operandA(22),
      I2 => operandB(23),
      I3 => operandA(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(20),
      I1 => operandA(20),
      I2 => operandB(21),
      I3 => operandA(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(18),
      I1 => operandA(18),
      I2 => operandB(19),
      I3 => operandA(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(16),
      I1 => operandA(16),
      I2 => operandB(17),
      I3 => operandA(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(30),
      I1 => operandA(30),
      I2 => \operandA__63\(31),
      I3 => \operandB__95\(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(15),
      I1 => operandB(15),
      O => \i__carry__2_i_1__1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      I2 => operandA(29),
      I3 => operandB(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(14),
      I1 => operandB(14),
      O => \i__carry__2_i_2__3_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      I2 => operandA(27),
      I3 => operandB(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(13),
      I1 => operandB(13),
      O => \i__carry__2_i_3__3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      I2 => operandA(25),
      I3 => operandB(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(12),
      I1 => operandB(12),
      O => \i__carry__2_i_4__3_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(30),
      I1 => operandA(30),
      I2 => \operandB__95\(31),
      I3 => \operandA__63\(31),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(28),
      I1 => operandA(28),
      I2 => operandB(29),
      I3 => operandA(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(26),
      I1 => operandA(26),
      I2 => operandB(27),
      I3 => operandA(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(24),
      I1 => operandA(24),
      I2 => operandB(25),
      I3 => operandA(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(19),
      I1 => operandB(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(18),
      I1 => operandB(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(17),
      I1 => operandB(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(16),
      I1 => operandB(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(23),
      I1 => operandB(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(22),
      I1 => operandB(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(21),
      I1 => operandB(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(20),
      I1 => operandB(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(27),
      I1 => operandB(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(26),
      I1 => operandB(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(25),
      I1 => operandB(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(24),
      I1 => operandB(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \operandA__63\(31),
      I1 => \operandB__95\(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(30),
      I1 => operandB(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(29),
      I1 => operandB(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(28),
      I1 => operandB(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      I2 => operandA(7),
      I3 => operandB(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(3),
      I1 => operandB(3),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(4),
      I2 => operandA(5),
      I3 => operandB(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(2),
      I1 => operandB(2),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      I2 => operandA(3),
      I3 => operandB(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(1),
      I1 => operandB(1),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => operandA(1),
      I3 => operandB(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => operandA(0),
      I1 => operandB(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(6),
      I1 => operandA(6),
      I2 => operandB(7),
      I3 => operandA(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(4),
      I1 => operandA(4),
      I2 => operandB(5),
      I3 => operandA(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(2),
      I1 => operandA(2),
      I2 => operandB(3),
      I3 => operandA(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => operandB(0),
      I1 => operandA(0),
      I2 => operandB(1),
      I3 => operandA(1),
      O => \i__carry_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ExecutionStage_0_0_Branch_Unit is
  port (
    forwarded_rs1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    forwarded_rs2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_taken : out STD_LOGIC;
    rs2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EX_MEM_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_WB_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    EX_MEM_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ID_EX_RT_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_EX_RS_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EX_MEM_RegWrite_i : in STD_LOGIC;
    MEM_WB_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MEM_WB_RegWrite_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_ExecutionStage_0_0_Branch_Unit : entity is "Branch_Unit";
end EX_ExecutionStage_0_0_Branch_Unit;

architecture STRUCTURE of EX_ExecutionStage_0_0_Branch_Unit is
  signal \FU_inst/ForwardA0__0\ : STD_LOGIC;
  signal \FU_inst/ForwardA18_out\ : STD_LOGIC;
  signal \FU_inst/ForwardB0__0\ : STD_LOGIC;
  signal \FU_inst/ForwardB12_out\ : STD_LOGIC;
  signal \FU_inst/p_4_in\ : STD_LOGIC;
  signal \FU_inst/p_7_in\ : STD_LOGIC;
  signal alu_out0_carry_i_16_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_18_n_0 : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__0_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__1_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__1_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__1_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__1_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__2_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__2_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry__2_n_3\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \branch_taken0_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal branch_taken_INST_0_i_10_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_11_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_12_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_12_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_12_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_12_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_13_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_14_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_15_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_16_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_17_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_17_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_17_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_17_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_18_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_19_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_1_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_20_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_21_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_22_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_23_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_24_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_25_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_26_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_27_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_28_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_29_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_2_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_2_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_3_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_3_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_5_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_6_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_7_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_8_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_8_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_8_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_8_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_9_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal \^forwarded_rs1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^forwarded_rs2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_17_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_branch_taken_INST_0_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_branch_taken_INST_0_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__1/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__1/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__2/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__2/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__2/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__3/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__3/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__3/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \branch_taken0_inferred__3/i__carry__2\ : label is 11;
begin
  forwarded_rs1(31 downto 0) <= \^forwarded_rs1\(31 downto 0);
  forwarded_rs2(31 downto 0) <= \^forwarded_rs2\(31 downto 0);
\alu_out0_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(6),
      I1 => EX_MEM_i(6),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(6),
      O => \^forwarded_rs1\(6)
    );
\alu_out0_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(5),
      I1 => EX_MEM_i(5),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(5),
      O => \^forwarded_rs1\(5)
    );
\alu_out0_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(4),
      I1 => EX_MEM_i(4),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(4),
      O => \^forwarded_rs1\(4)
    );
\alu_out0_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(7),
      I1 => EX_MEM_i(7),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(7),
      O => \^forwarded_rs1\(7)
    );
\alu_out0_carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(10),
      I1 => EX_MEM_i(10),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(10),
      O => \^forwarded_rs1\(10)
    );
\alu_out0_carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(9),
      I1 => EX_MEM_i(9),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(9),
      O => \^forwarded_rs1\(9)
    );
\alu_out0_carry__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(8),
      I1 => EX_MEM_i(8),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(8),
      O => \^forwarded_rs1\(8)
    );
\alu_out0_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(11),
      I1 => EX_MEM_i(11),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(11),
      O => \^forwarded_rs1\(11)
    );
\alu_out0_carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(14),
      I1 => EX_MEM_i(14),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(14),
      O => \^forwarded_rs1\(14)
    );
\alu_out0_carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(13),
      I1 => EX_MEM_i(13),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(13),
      O => \^forwarded_rs1\(13)
    );
\alu_out0_carry__2_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(12),
      I1 => EX_MEM_i(12),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(12),
      O => \^forwarded_rs1\(12)
    );
\alu_out0_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(15),
      I1 => EX_MEM_i(15),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(15),
      O => \^forwarded_rs1\(15)
    );
\alu_out0_carry__3_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(18),
      I1 => EX_MEM_i(18),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(18),
      O => \^forwarded_rs1\(18)
    );
\alu_out0_carry__3_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(17),
      I1 => EX_MEM_i(17),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(17),
      O => \^forwarded_rs1\(17)
    );
\alu_out0_carry__3_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(16),
      I1 => EX_MEM_i(16),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(16),
      O => \^forwarded_rs1\(16)
    );
\alu_out0_carry__3_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(19),
      I1 => EX_MEM_i(19),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(19),
      O => \^forwarded_rs1\(19)
    );
\alu_out0_carry__4_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(22),
      I1 => EX_MEM_i(22),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(22),
      O => \^forwarded_rs1\(22)
    );
\alu_out0_carry__4_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(21),
      I1 => EX_MEM_i(21),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(21),
      O => \^forwarded_rs1\(21)
    );
\alu_out0_carry__4_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(20),
      I1 => EX_MEM_i(20),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(20),
      O => \^forwarded_rs1\(20)
    );
\alu_out0_carry__4_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(23),
      I1 => EX_MEM_i(23),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(23),
      O => \^forwarded_rs1\(23)
    );
\alu_out0_carry__5_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(26),
      I1 => EX_MEM_i(26),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(26),
      O => \^forwarded_rs1\(26)
    );
\alu_out0_carry__5_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(25),
      I1 => EX_MEM_i(25),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(25),
      O => \^forwarded_rs1\(25)
    );
\alu_out0_carry__5_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(24),
      I1 => EX_MEM_i(24),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(24),
      O => \^forwarded_rs1\(24)
    );
\alu_out0_carry__5_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(27),
      I1 => EX_MEM_i(27),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(27),
      O => \^forwarded_rs1\(27)
    );
\alu_out0_carry__6_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(28),
      I1 => EX_MEM_i(28),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(28),
      O => \^forwarded_rs1\(28)
    );
\alu_out0_carry__6_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(30),
      I1 => EX_MEM_i(30),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(30),
      O => \^forwarded_rs1\(30)
    );
\alu_out0_carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(29),
      I1 => EX_MEM_i(29),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(29),
      O => \^forwarded_rs1\(29)
    );
alu_out0_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(2),
      I1 => EX_MEM_i(2),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(2),
      O => \^forwarded_rs1\(2)
    );
alu_out0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(1),
      I1 => EX_MEM_i(1),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(1),
      O => \^forwarded_rs1\(1)
    );
alu_out0_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(0),
      I1 => EX_MEM_i(0),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(0),
      O => \^forwarded_rs1\(0)
    );
alu_out0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \FU_inst/p_4_in\,
      I1 => MEM_WB_RD_i(4),
      I2 => ID_EX_RS_i(4),
      I3 => alu_out0_carry_i_16_n_0,
      I4 => ID_EX_RS_i(3),
      I5 => MEM_WB_RD_i(3),
      O => \FU_inst/ForwardA0__0\
    );
alu_out0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \FU_inst/p_7_in\,
      I1 => EX_MEM_RD_i(4),
      I2 => ID_EX_RS_i(4),
      I3 => alu_out0_carry_i_18_n_0,
      I4 => ID_EX_RS_i(3),
      I5 => EX_MEM_RD_i(3),
      O => \FU_inst/ForwardA18_out\
    );
alu_out0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => MEM_WB_RegWrite_i,
      I1 => MEM_WB_RD_i(2),
      I2 => MEM_WB_RD_i(4),
      I3 => MEM_WB_RD_i(0),
      I4 => MEM_WB_RD_i(1),
      I5 => MEM_WB_RD_i(3),
      O => \FU_inst/p_4_in\
    );
alu_out0_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => MEM_WB_RD_i(0),
      I1 => ID_EX_RS_i(0),
      I2 => ID_EX_RS_i(2),
      I3 => MEM_WB_RD_i(2),
      I4 => ID_EX_RS_i(1),
      I5 => MEM_WB_RD_i(1),
      O => alu_out0_carry_i_16_n_0
    );
alu_out0_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => EX_MEM_RegWrite_i,
      I1 => EX_MEM_RD_i(2),
      I2 => EX_MEM_RD_i(4),
      I3 => EX_MEM_RD_i(0),
      I4 => EX_MEM_RD_i(1),
      I5 => EX_MEM_RD_i(3),
      O => \FU_inst/p_7_in\
    );
alu_out0_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EX_MEM_RD_i(0),
      I1 => ID_EX_RS_i(0),
      I2 => ID_EX_RS_i(2),
      I3 => EX_MEM_RD_i(2),
      I4 => ID_EX_RS_i(1),
      I5 => EX_MEM_RD_i(1),
      O => alu_out0_carry_i_18_n_0
    );
alu_out0_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(3),
      I1 => EX_MEM_i(3),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(3),
      O => \^forwarded_rs1\(3)
    );
\branch_taken0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \branch_taken0_inferred__1/i__carry_n_0\,
      CO(2) => \branch_taken0_inferred__1/i__carry_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\branch_taken0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__1/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__1/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__1/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__2_n_0\,
      DI(2) => \i__carry__0_i_2__2_n_0\,
      DI(1) => \i__carry__0_i_3__2_n_0\,
      DI(0) => \i__carry__0_i_4__2_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\branch_taken0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__1/i__carry__0_n_0\,
      CO(3) => \branch_taken0_inferred__1/i__carry__1_n_0\,
      CO(2) => \branch_taken0_inferred__1/i__carry__1_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry__1_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__2_n_0\,
      DI(2) => \i__carry__1_i_2__2_n_0\,
      DI(1) => \i__carry__1_i_3__2_n_0\,
      DI(0) => \i__carry__1_i_4__2_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__0_n_0\,
      S(2) => \i__carry__1_i_6__0_n_0\,
      S(1) => \i__carry__1_i_7__0_n_0\,
      S(0) => \i__carry__1_i_8__0_n_0\
    );
\branch_taken0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__1/i__carry__1_n_0\,
      CO(3) => data2,
      CO(2) => \branch_taken0_inferred__1/i__carry__2_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry__2_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__3_n_0\,
      DI(2) => \i__carry__2_i_2__2_n_0\,
      DI(1) => \i__carry__2_i_3__2_n_0\,
      DI(0) => \i__carry__2_i_4__2_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__1_n_0\,
      S(2) => \i__carry__2_i_6__0_n_0\,
      S(1) => \i__carry__2_i_7__0_n_0\,
      S(0) => \i__carry__2_i_8__0_n_0\
    );
\branch_taken0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \branch_taken0_inferred__2/i__carry_n_0\,
      CO(2) => \branch_taken0_inferred__2/i__carry_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\branch_taken0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__2/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__2/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__2/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__2_n_0\,
      S(2) => \i__carry__0_i_6__2_n_0\,
      S(1) => \i__carry__0_i_7__2_n_0\,
      S(0) => \i__carry__0_i_8__2_n_0\
    );
\branch_taken0_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__2/i__carry__0_n_0\,
      CO(3) => \branch_taken0_inferred__2/i__carry__1_n_0\,
      CO(2) => \branch_taken0_inferred__2/i__carry__1_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry__1_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__0_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3__0_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__2_n_0\,
      S(2) => \i__carry__1_i_6__2_n_0\,
      S(1) => \i__carry__1_i_7__2_n_0\,
      S(0) => \i__carry__1_i_8__2_n_0\
    );
\branch_taken0_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__2/i__carry__1_n_0\,
      CO(3) => data3,
      CO(2) => \branch_taken0_inferred__2/i__carry__2_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry__2_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__0_n_0\,
      DI(2) => \i__carry__2_i_2__0_n_0\,
      DI(1) => \i__carry__2_i_3__0_n_0\,
      DI(0) => \i__carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__2_n_0\,
      S(2) => \i__carry__2_i_6__2_n_0\,
      S(1) => \i__carry__2_i_7__2_n_0\,
      S(0) => \i__carry__2_i_8__2_n_0\
    );
\branch_taken0_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \branch_taken0_inferred__3/i__carry_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\branch_taken0_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__3/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__1_n_0\,
      DI(2) => \i__carry__0_i_2__1_n_0\,
      DI(1) => \i__carry__0_i_3__1_n_0\,
      DI(0) => \i__carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5__1_n_0\,
      S(2) => \i__carry__0_i_6__1_n_0\,
      S(1) => \i__carry__0_i_7__1_n_0\,
      S(0) => \i__carry__0_i_8__1_n_0\
    );
\branch_taken0_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry__0_n_0\,
      CO(3) => \branch_taken0_inferred__3/i__carry__1_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry__1_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__1_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1__1_n_0\,
      DI(2) => \i__carry__1_i_2__1_n_0\,
      DI(1) => \i__carry__1_i_3__1_n_0\,
      DI(0) => \i__carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5__1_n_0\,
      S(2) => \i__carry__1_i_6__1_n_0\,
      S(1) => \i__carry__1_i_7__1_n_0\,
      S(0) => \i__carry__1_i_8__1_n_0\
    );
\branch_taken0_inferred__3/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry__1_n_0\,
      CO(3) => data4,
      CO(2) => \branch_taken0_inferred__3/i__carry__2_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__2_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1__2_n_0\,
      DI(2) => \i__carry__2_i_2__1_n_0\,
      DI(1) => \i__carry__2_i_3__1_n_0\,
      DI(0) => \i__carry__2_i_4__1_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__0_n_0\,
      S(2) => \i__carry__2_i_6__1_n_0\,
      S(1) => \i__carry__2_i_7__1_n_0\,
      S(0) => \i__carry__2_i_8__1_n_0\
    );
branch_taken_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => branch_taken_INST_0_i_1_n_0,
      I1 => funct3(1),
      I2 => funct3(2),
      I3 => data1,
      I4 => funct3(0),
      I5 => data0,
      O => branch_taken
    );
branch_taken_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0AF808A0A0F808"
    )
        port map (
      I0 => funct3(2),
      I1 => data2,
      I2 => funct3(0),
      I3 => data3,
      I4 => funct3(1),
      I5 => data4,
      O => branch_taken_INST_0_i_1_n_0
    );
branch_taken_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(27),
      I1 => \^forwarded_rs1\(27),
      I2 => \^forwarded_rs2\(29),
      I3 => \^forwarded_rs1\(29),
      I4 => \^forwarded_rs1\(28),
      I5 => \^forwarded_rs2\(28),
      O => branch_taken_INST_0_i_10_n_0
    );
branch_taken_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(24),
      I1 => \^forwarded_rs1\(24),
      I2 => \^forwarded_rs2\(25),
      I3 => \^forwarded_rs1\(25),
      I4 => \^forwarded_rs2\(26),
      I5 => \^forwarded_rs1\(26),
      O => branch_taken_INST_0_i_11_n_0
    );
branch_taken_INST_0_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_taken_INST_0_i_12_n_0,
      CO(2) => branch_taken_INST_0_i_12_n_1,
      CO(1) => branch_taken_INST_0_i_12_n_2,
      CO(0) => branch_taken_INST_0_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_22_n_0,
      S(2) => branch_taken_INST_0_i_23_n_0,
      S(1) => branch_taken_INST_0_i_24_n_0,
      S(0) => branch_taken_INST_0_i_25_n_0
    );
branch_taken_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(21),
      I1 => \^forwarded_rs1\(21),
      I2 => \^forwarded_rs2\(23),
      I3 => \^forwarded_rs1\(23),
      I4 => \^forwarded_rs1\(22),
      I5 => \^forwarded_rs2\(22),
      O => branch_taken_INST_0_i_13_n_0
    );
branch_taken_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(18),
      I1 => \^forwarded_rs1\(18),
      I2 => \^forwarded_rs2\(19),
      I3 => \^forwarded_rs1\(19),
      I4 => \^forwarded_rs2\(20),
      I5 => \^forwarded_rs1\(20),
      O => branch_taken_INST_0_i_14_n_0
    );
branch_taken_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(15),
      I1 => \^forwarded_rs1\(15),
      I2 => \^forwarded_rs2\(17),
      I3 => \^forwarded_rs1\(17),
      I4 => \^forwarded_rs1\(16),
      I5 => \^forwarded_rs2\(16),
      O => branch_taken_INST_0_i_15_n_0
    );
branch_taken_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(12),
      I1 => \^forwarded_rs1\(12),
      I2 => \^forwarded_rs2\(13),
      I3 => \^forwarded_rs1\(13),
      I4 => \^forwarded_rs2\(14),
      I5 => \^forwarded_rs1\(14),
      O => branch_taken_INST_0_i_16_n_0
    );
branch_taken_INST_0_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_taken_INST_0_i_17_n_0,
      CO(2) => branch_taken_INST_0_i_17_n_1,
      CO(1) => branch_taken_INST_0_i_17_n_2,
      CO(0) => branch_taken_INST_0_i_17_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_17_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_26_n_0,
      S(2) => branch_taken_INST_0_i_27_n_0,
      S(1) => branch_taken_INST_0_i_28_n_0,
      S(0) => branch_taken_INST_0_i_29_n_0
    );
branch_taken_INST_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(21),
      I1 => \^forwarded_rs1\(21),
      I2 => \^forwarded_rs2\(23),
      I3 => \^forwarded_rs1\(23),
      I4 => \^forwarded_rs1\(22),
      I5 => \^forwarded_rs2\(22),
      O => branch_taken_INST_0_i_18_n_0
    );
branch_taken_INST_0_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(18),
      I1 => \^forwarded_rs1\(18),
      I2 => \^forwarded_rs2\(19),
      I3 => \^forwarded_rs1\(19),
      I4 => \^forwarded_rs2\(20),
      I5 => \^forwarded_rs1\(20),
      O => branch_taken_INST_0_i_19_n_0
    );
branch_taken_INST_0_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_4_n_0,
      CO(3) => NLW_branch_taken_INST_0_i_2_CO_UNCONNECTED(3),
      CO(2) => data1,
      CO(1) => branch_taken_INST_0_i_2_n_2,
      CO(0) => branch_taken_INST_0_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => branch_taken_INST_0_i_5_n_0,
      S(1) => branch_taken_INST_0_i_6_n_0,
      S(0) => branch_taken_INST_0_i_7_n_0
    );
branch_taken_INST_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(15),
      I1 => \^forwarded_rs1\(15),
      I2 => \^forwarded_rs2\(17),
      I3 => \^forwarded_rs1\(17),
      I4 => \^forwarded_rs1\(16),
      I5 => \^forwarded_rs2\(16),
      O => branch_taken_INST_0_i_20_n_0
    );
branch_taken_INST_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(12),
      I1 => \^forwarded_rs1\(12),
      I2 => \^forwarded_rs2\(13),
      I3 => \^forwarded_rs1\(13),
      I4 => \^forwarded_rs2\(14),
      I5 => \^forwarded_rs1\(14),
      O => branch_taken_INST_0_i_21_n_0
    );
branch_taken_INST_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(9),
      I1 => \^forwarded_rs1\(9),
      I2 => \^forwarded_rs2\(11),
      I3 => \^forwarded_rs1\(11),
      I4 => \^forwarded_rs1\(10),
      I5 => \^forwarded_rs2\(10),
      O => branch_taken_INST_0_i_22_n_0
    );
branch_taken_INST_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(6),
      I1 => \^forwarded_rs1\(6),
      I2 => \^forwarded_rs2\(7),
      I3 => \^forwarded_rs1\(7),
      I4 => \^forwarded_rs2\(8),
      I5 => \^forwarded_rs1\(8),
      O => branch_taken_INST_0_i_23_n_0
    );
branch_taken_INST_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(3),
      I1 => \^forwarded_rs1\(3),
      I2 => \^forwarded_rs2\(5),
      I3 => \^forwarded_rs1\(5),
      I4 => \^forwarded_rs1\(4),
      I5 => \^forwarded_rs2\(4),
      O => branch_taken_INST_0_i_24_n_0
    );
branch_taken_INST_0_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(0),
      I1 => \^forwarded_rs1\(0),
      I2 => \^forwarded_rs2\(1),
      I3 => \^forwarded_rs1\(1),
      I4 => \^forwarded_rs2\(2),
      I5 => \^forwarded_rs1\(2),
      O => branch_taken_INST_0_i_25_n_0
    );
branch_taken_INST_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(9),
      I1 => \^forwarded_rs1\(9),
      I2 => \^forwarded_rs2\(11),
      I3 => \^forwarded_rs1\(11),
      I4 => \^forwarded_rs1\(10),
      I5 => \^forwarded_rs2\(10),
      O => branch_taken_INST_0_i_26_n_0
    );
branch_taken_INST_0_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(6),
      I1 => \^forwarded_rs1\(6),
      I2 => \^forwarded_rs2\(7),
      I3 => \^forwarded_rs1\(7),
      I4 => \^forwarded_rs2\(8),
      I5 => \^forwarded_rs1\(8),
      O => branch_taken_INST_0_i_27_n_0
    );
branch_taken_INST_0_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(3),
      I1 => \^forwarded_rs1\(3),
      I2 => \^forwarded_rs2\(5),
      I3 => \^forwarded_rs1\(5),
      I4 => \^forwarded_rs1\(4),
      I5 => \^forwarded_rs2\(4),
      O => branch_taken_INST_0_i_28_n_0
    );
branch_taken_INST_0_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(0),
      I1 => \^forwarded_rs1\(0),
      I2 => \^forwarded_rs2\(1),
      I3 => \^forwarded_rs1\(1),
      I4 => \^forwarded_rs2\(2),
      I5 => \^forwarded_rs1\(2),
      O => branch_taken_INST_0_i_29_n_0
    );
branch_taken_INST_0_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_8_n_0,
      CO(3) => NLW_branch_taken_INST_0_i_3_CO_UNCONNECTED(3),
      CO(2) => data0,
      CO(1) => branch_taken_INST_0_i_3_n_2,
      CO(0) => branch_taken_INST_0_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => branch_taken_INST_0_i_9_n_0,
      S(1) => branch_taken_INST_0_i_10_n_0,
      S(0) => branch_taken_INST_0_i_11_n_0
    );
branch_taken_INST_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_12_n_0,
      CO(3) => branch_taken_INST_0_i_4_n_0,
      CO(2) => branch_taken_INST_0_i_4_n_1,
      CO(1) => branch_taken_INST_0_i_4_n_2,
      CO(0) => branch_taken_INST_0_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_13_n_0,
      S(2) => branch_taken_INST_0_i_14_n_0,
      S(1) => branch_taken_INST_0_i_15_n_0,
      S(0) => branch_taken_INST_0_i_16_n_0
    );
branch_taken_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(30),
      I1 => \^forwarded_rs1\(30),
      I2 => \^forwarded_rs2\(31),
      I3 => \^forwarded_rs1\(31),
      O => branch_taken_INST_0_i_5_n_0
    );
branch_taken_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(27),
      I1 => \^forwarded_rs1\(27),
      I2 => \^forwarded_rs2\(29),
      I3 => \^forwarded_rs1\(29),
      I4 => \^forwarded_rs1\(28),
      I5 => \^forwarded_rs2\(28),
      O => branch_taken_INST_0_i_6_n_0
    );
branch_taken_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^forwarded_rs2\(24),
      I1 => \^forwarded_rs1\(24),
      I2 => \^forwarded_rs2\(25),
      I3 => \^forwarded_rs1\(25),
      I4 => \^forwarded_rs2\(26),
      I5 => \^forwarded_rs1\(26),
      O => branch_taken_INST_0_i_7_n_0
    );
branch_taken_INST_0_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_17_n_0,
      CO(3) => branch_taken_INST_0_i_8_n_0,
      CO(2) => branch_taken_INST_0_i_8_n_1,
      CO(1) => branch_taken_INST_0_i_8_n_2,
      CO(0) => branch_taken_INST_0_i_8_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_18_n_0,
      S(2) => branch_taken_INST_0_i_19_n_0,
      S(1) => branch_taken_INST_0_i_20_n_0,
      S(0) => branch_taken_INST_0_i_21_n_0
    );
branch_taken_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(30),
      I1 => \^forwarded_rs1\(30),
      I2 => \^forwarded_rs2\(31),
      I3 => \^forwarded_rs1\(31),
      O => branch_taken_INST_0_i_9_n_0
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(15),
      I3 => EX_MEM_i(15),
      I4 => MEM_WB_i(15),
      O => \^forwarded_rs2\(15)
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(12),
      I3 => EX_MEM_i(12),
      I4 => MEM_WB_i(12),
      O => \^forwarded_rs2\(12)
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(13),
      I3 => EX_MEM_i(13),
      I4 => MEM_WB_i(13),
      O => \^forwarded_rs2\(13)
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(10),
      I3 => EX_MEM_i(10),
      I4 => MEM_WB_i(10),
      O => \^forwarded_rs2\(10)
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(11),
      I3 => EX_MEM_i(11),
      I4 => MEM_WB_i(11),
      O => \^forwarded_rs2\(11)
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(8),
      I3 => EX_MEM_i(8),
      I4 => MEM_WB_i(8),
      O => \^forwarded_rs2\(8)
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(9),
      I3 => EX_MEM_i(9),
      I4 => MEM_WB_i(9),
      O => \^forwarded_rs2\(9)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(14),
      I1 => \^forwarded_rs2\(14),
      I2 => \^forwarded_rs2\(15),
      I3 => \^forwarded_rs1\(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(14),
      I1 => \^forwarded_rs1\(14),
      I2 => \^forwarded_rs1\(15),
      I3 => \^forwarded_rs2\(15),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(14),
      I1 => \^forwarded_rs1\(14),
      I2 => \^forwarded_rs1\(15),
      I3 => \^forwarded_rs2\(15),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(12),
      I1 => \^forwarded_rs2\(12),
      I2 => \^forwarded_rs2\(13),
      I3 => \^forwarded_rs1\(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(12),
      I1 => \^forwarded_rs1\(12),
      I2 => \^forwarded_rs1\(13),
      I3 => \^forwarded_rs2\(13),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(12),
      I1 => \^forwarded_rs1\(12),
      I2 => \^forwarded_rs1\(13),
      I3 => \^forwarded_rs2\(13),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(10),
      I1 => \^forwarded_rs2\(10),
      I2 => \^forwarded_rs2\(11),
      I3 => \^forwarded_rs1\(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(10),
      I1 => \^forwarded_rs1\(10),
      I2 => \^forwarded_rs1\(11),
      I3 => \^forwarded_rs2\(11),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(10),
      I1 => \^forwarded_rs1\(10),
      I2 => \^forwarded_rs1\(11),
      I3 => \^forwarded_rs2\(11),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(8),
      I1 => \^forwarded_rs2\(8),
      I2 => \^forwarded_rs2\(9),
      I3 => \^forwarded_rs1\(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(8),
      I1 => \^forwarded_rs1\(8),
      I2 => \^forwarded_rs1\(9),
      I3 => \^forwarded_rs2\(9),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(8),
      I1 => \^forwarded_rs1\(8),
      I2 => \^forwarded_rs1\(9),
      I3 => \^forwarded_rs2\(9),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(15),
      I1 => \^forwarded_rs2\(15),
      I2 => \^forwarded_rs2\(14),
      I3 => \^forwarded_rs1\(14),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(15),
      I1 => \^forwarded_rs2\(15),
      I2 => \^forwarded_rs2\(14),
      I3 => \^forwarded_rs1\(14),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(14),
      I1 => \^forwarded_rs1\(14),
      I2 => \^forwarded_rs2\(15),
      I3 => \^forwarded_rs1\(15),
      O => \i__carry__0_i_5__2_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(13),
      I1 => \^forwarded_rs2\(13),
      I2 => \^forwarded_rs2\(12),
      I3 => \^forwarded_rs1\(12),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(13),
      I1 => \^forwarded_rs2\(13),
      I2 => \^forwarded_rs2\(12),
      I3 => \^forwarded_rs1\(12),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(12),
      I1 => \^forwarded_rs1\(12),
      I2 => \^forwarded_rs2\(13),
      I3 => \^forwarded_rs1\(13),
      O => \i__carry__0_i_6__2_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(11),
      I1 => \^forwarded_rs2\(11),
      I2 => \^forwarded_rs2\(10),
      I3 => \^forwarded_rs1\(10),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(11),
      I1 => \^forwarded_rs2\(11),
      I2 => \^forwarded_rs2\(10),
      I3 => \^forwarded_rs1\(10),
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__0_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(11),
      I1 => \^forwarded_rs1\(11),
      I2 => \^forwarded_rs1\(10),
      I3 => \^forwarded_rs2\(10),
      O => \i__carry__0_i_7__2_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(9),
      I1 => \^forwarded_rs2\(9),
      I2 => \^forwarded_rs2\(8),
      I3 => \^forwarded_rs1\(8),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__0_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(9),
      I1 => \^forwarded_rs2\(9),
      I2 => \^forwarded_rs2\(8),
      I3 => \^forwarded_rs1\(8),
      O => \i__carry__0_i_8__1_n_0\
    );
\i__carry__0_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(8),
      I1 => \^forwarded_rs1\(8),
      I2 => \^forwarded_rs2\(9),
      I3 => \^forwarded_rs1\(9),
      O => \i__carry__0_i_8__2_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(14),
      I3 => EX_MEM_i(14),
      I4 => MEM_WB_i(14),
      O => \^forwarded_rs2\(14)
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(23),
      I3 => EX_MEM_i(23),
      I4 => MEM_WB_i(23),
      O => \^forwarded_rs2\(23)
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(20),
      I3 => EX_MEM_i(20),
      I4 => MEM_WB_i(20),
      O => \^forwarded_rs2\(20)
    );
\i__carry__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(21),
      I3 => EX_MEM_i(21),
      I4 => MEM_WB_i(21),
      O => \^forwarded_rs2\(21)
    );
\i__carry__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(18),
      I3 => EX_MEM_i(18),
      I4 => MEM_WB_i(18),
      O => \^forwarded_rs2\(18)
    );
\i__carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(19),
      I3 => EX_MEM_i(19),
      I4 => MEM_WB_i(19),
      O => \^forwarded_rs2\(19)
    );
\i__carry__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(16),
      I3 => EX_MEM_i(16),
      I4 => MEM_WB_i(16),
      O => \^forwarded_rs2\(16)
    );
\i__carry__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(17),
      I3 => EX_MEM_i(17),
      I4 => MEM_WB_i(17),
      O => \^forwarded_rs2\(17)
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(22),
      I1 => \^forwarded_rs2\(22),
      I2 => \^forwarded_rs2\(23),
      I3 => \^forwarded_rs1\(23),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(22),
      I1 => \^forwarded_rs1\(22),
      I2 => \^forwarded_rs1\(23),
      I3 => \^forwarded_rs2\(23),
      O => \i__carry__1_i_1__1_n_0\
    );
\i__carry__1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(22),
      I1 => \^forwarded_rs1\(22),
      I2 => \^forwarded_rs1\(23),
      I3 => \^forwarded_rs2\(23),
      O => \i__carry__1_i_1__2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(20),
      I1 => \^forwarded_rs2\(20),
      I2 => \^forwarded_rs2\(21),
      I3 => \^forwarded_rs1\(21),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(20),
      I1 => \^forwarded_rs1\(20),
      I2 => \^forwarded_rs1\(21),
      I3 => \^forwarded_rs2\(21),
      O => \i__carry__1_i_2__1_n_0\
    );
\i__carry__1_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(20),
      I1 => \^forwarded_rs1\(20),
      I2 => \^forwarded_rs1\(21),
      I3 => \^forwarded_rs2\(21),
      O => \i__carry__1_i_2__2_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(18),
      I1 => \^forwarded_rs2\(18),
      I2 => \^forwarded_rs2\(19),
      I3 => \^forwarded_rs1\(19),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(18),
      I1 => \^forwarded_rs1\(18),
      I2 => \^forwarded_rs1\(19),
      I3 => \^forwarded_rs2\(19),
      O => \i__carry__1_i_3__1_n_0\
    );
\i__carry__1_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(18),
      I1 => \^forwarded_rs1\(18),
      I2 => \^forwarded_rs1\(19),
      I3 => \^forwarded_rs2\(19),
      O => \i__carry__1_i_3__2_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(16),
      I1 => \^forwarded_rs2\(16),
      I2 => \^forwarded_rs2\(17),
      I3 => \^forwarded_rs1\(17),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(16),
      I1 => \^forwarded_rs1\(16),
      I2 => \^forwarded_rs1\(17),
      I3 => \^forwarded_rs2\(17),
      O => \i__carry__1_i_4__1_n_0\
    );
\i__carry__1_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(16),
      I1 => \^forwarded_rs1\(16),
      I2 => \^forwarded_rs1\(17),
      I3 => \^forwarded_rs2\(17),
      O => \i__carry__1_i_4__2_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(23),
      I1 => \^forwarded_rs2\(23),
      I2 => \^forwarded_rs2\(22),
      I3 => \^forwarded_rs1\(22),
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(23),
      I1 => \^forwarded_rs2\(23),
      I2 => \^forwarded_rs2\(22),
      I3 => \^forwarded_rs1\(22),
      O => \i__carry__1_i_5__1_n_0\
    );
\i__carry__1_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(23),
      I1 => \^forwarded_rs1\(23),
      I2 => \^forwarded_rs1\(22),
      I3 => \^forwarded_rs2\(22),
      O => \i__carry__1_i_5__2_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(21),
      I1 => \^forwarded_rs2\(21),
      I2 => \^forwarded_rs2\(20),
      I3 => \^forwarded_rs1\(20),
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(21),
      I1 => \^forwarded_rs2\(21),
      I2 => \^forwarded_rs2\(20),
      I3 => \^forwarded_rs1\(20),
      O => \i__carry__1_i_6__1_n_0\
    );
\i__carry__1_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(20),
      I1 => \^forwarded_rs1\(20),
      I2 => \^forwarded_rs2\(21),
      I3 => \^forwarded_rs1\(21),
      O => \i__carry__1_i_6__2_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(19),
      I1 => \^forwarded_rs2\(19),
      I2 => \^forwarded_rs2\(18),
      I3 => \^forwarded_rs1\(18),
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(19),
      I1 => \^forwarded_rs2\(19),
      I2 => \^forwarded_rs2\(18),
      I3 => \^forwarded_rs1\(18),
      O => \i__carry__1_i_7__1_n_0\
    );
\i__carry__1_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(18),
      I1 => \^forwarded_rs1\(18),
      I2 => \^forwarded_rs2\(19),
      I3 => \^forwarded_rs1\(19),
      O => \i__carry__1_i_7__2_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(17),
      I1 => \^forwarded_rs2\(17),
      I2 => \^forwarded_rs2\(16),
      I3 => \^forwarded_rs1\(16),
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry__1_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(17),
      I1 => \^forwarded_rs2\(17),
      I2 => \^forwarded_rs2\(16),
      I3 => \^forwarded_rs1\(16),
      O => \i__carry__1_i_8__1_n_0\
    );
\i__carry__1_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(17),
      I1 => \^forwarded_rs1\(17),
      I2 => \^forwarded_rs1\(16),
      I3 => \^forwarded_rs2\(16),
      O => \i__carry__1_i_8__2_n_0\
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(22),
      I3 => EX_MEM_i(22),
      I4 => MEM_WB_i(22),
      O => \^forwarded_rs2\(22)
    );
\i__carry__2_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(31),
      I3 => EX_MEM_i(31),
      I4 => MEM_WB_i(31),
      O => \^forwarded_rs2\(31)
    );
\i__carry__2_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(31),
      I1 => EX_MEM_i(31),
      I2 => \FU_inst/ForwardA0__0\,
      I3 => \FU_inst/ForwardA18_out\,
      I4 => MEM_WB_i(31),
      O => \^forwarded_rs1\(31)
    );
\i__carry__2_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(28),
      I3 => EX_MEM_i(28),
      I4 => MEM_WB_i(28),
      O => \^forwarded_rs2\(28)
    );
\i__carry__2_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(29),
      I3 => EX_MEM_i(29),
      I4 => MEM_WB_i(29),
      O => \^forwarded_rs2\(29)
    );
\i__carry__2_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(26),
      I3 => EX_MEM_i(26),
      I4 => MEM_WB_i(26),
      O => \^forwarded_rs2\(26)
    );
\i__carry__2_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(27),
      I3 => EX_MEM_i(27),
      I4 => MEM_WB_i(27),
      O => \^forwarded_rs2\(27)
    );
\i__carry__2_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(24),
      I3 => EX_MEM_i(24),
      I4 => MEM_WB_i(24),
      O => \^forwarded_rs2\(24)
    );
\i__carry__2_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(25),
      I3 => EX_MEM_i(25),
      I4 => MEM_WB_i(25),
      O => \^forwarded_rs2\(25)
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(30),
      I1 => \^forwarded_rs2\(30),
      I2 => \^forwarded_rs1\(31),
      I3 => \^forwarded_rs2\(31),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(30),
      I1 => \^forwarded_rs1\(30),
      I2 => \^forwarded_rs1\(31),
      I3 => \^forwarded_rs2\(31),
      O => \i__carry__2_i_1__2_n_0\
    );
\i__carry__2_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(30),
      I1 => \^forwarded_rs1\(30),
      I2 => \^forwarded_rs2\(31),
      I3 => \^forwarded_rs1\(31),
      O => \i__carry__2_i_1__3_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(28),
      I1 => \^forwarded_rs2\(28),
      I2 => \^forwarded_rs2\(29),
      I3 => \^forwarded_rs1\(29),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(28),
      I1 => \^forwarded_rs1\(28),
      I2 => \^forwarded_rs1\(29),
      I3 => \^forwarded_rs2\(29),
      O => \i__carry__2_i_2__1_n_0\
    );
\i__carry__2_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(28),
      I1 => \^forwarded_rs1\(28),
      I2 => \^forwarded_rs1\(29),
      I3 => \^forwarded_rs2\(29),
      O => \i__carry__2_i_2__2_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(26),
      I1 => \^forwarded_rs2\(26),
      I2 => \^forwarded_rs2\(27),
      I3 => \^forwarded_rs1\(27),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(26),
      I1 => \^forwarded_rs1\(26),
      I2 => \^forwarded_rs1\(27),
      I3 => \^forwarded_rs2\(27),
      O => \i__carry__2_i_3__1_n_0\
    );
\i__carry__2_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(26),
      I1 => \^forwarded_rs1\(26),
      I2 => \^forwarded_rs1\(27),
      I3 => \^forwarded_rs2\(27),
      O => \i__carry__2_i_3__2_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(24),
      I1 => \^forwarded_rs2\(24),
      I2 => \^forwarded_rs2\(25),
      I3 => \^forwarded_rs1\(25),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(24),
      I1 => \^forwarded_rs1\(24),
      I2 => \^forwarded_rs1\(25),
      I3 => \^forwarded_rs2\(25),
      O => \i__carry__2_i_4__1_n_0\
    );
\i__carry__2_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(24),
      I1 => \^forwarded_rs1\(24),
      I2 => \^forwarded_rs1\(25),
      I3 => \^forwarded_rs2\(25),
      O => \i__carry__2_i_4__2_n_0\
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(31),
      I1 => \^forwarded_rs2\(31),
      I2 => \^forwarded_rs1\(30),
      I3 => \^forwarded_rs2\(30),
      O => \i__carry__2_i_5__0_n_0\
    );
\i__carry__2_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(31),
      I1 => \^forwarded_rs1\(31),
      I2 => \^forwarded_rs1\(30),
      I3 => \^forwarded_rs2\(30),
      O => \i__carry__2_i_5__1_n_0\
    );
\i__carry__2_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(30),
      I1 => \^forwarded_rs1\(30),
      I2 => \^forwarded_rs1\(31),
      I3 => \^forwarded_rs2\(31),
      O => \i__carry__2_i_5__2_n_0\
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(29),
      I1 => \^forwarded_rs2\(29),
      I2 => \^forwarded_rs2\(28),
      I3 => \^forwarded_rs1\(28),
      O => \i__carry__2_i_6__0_n_0\
    );
\i__carry__2_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(29),
      I1 => \^forwarded_rs2\(29),
      I2 => \^forwarded_rs2\(28),
      I3 => \^forwarded_rs1\(28),
      O => \i__carry__2_i_6__1_n_0\
    );
\i__carry__2_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(29),
      I1 => \^forwarded_rs1\(29),
      I2 => \^forwarded_rs1\(28),
      I3 => \^forwarded_rs2\(28),
      O => \i__carry__2_i_6__2_n_0\
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(27),
      I1 => \^forwarded_rs2\(27),
      I2 => \^forwarded_rs2\(26),
      I3 => \^forwarded_rs1\(26),
      O => \i__carry__2_i_7__0_n_0\
    );
\i__carry__2_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(27),
      I1 => \^forwarded_rs2\(27),
      I2 => \^forwarded_rs2\(26),
      I3 => \^forwarded_rs1\(26),
      O => \i__carry__2_i_7__1_n_0\
    );
\i__carry__2_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(26),
      I1 => \^forwarded_rs1\(26),
      I2 => \^forwarded_rs2\(27),
      I3 => \^forwarded_rs1\(27),
      O => \i__carry__2_i_7__2_n_0\
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(25),
      I1 => \^forwarded_rs2\(25),
      I2 => \^forwarded_rs2\(24),
      I3 => \^forwarded_rs1\(24),
      O => \i__carry__2_i_8__0_n_0\
    );
\i__carry__2_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(25),
      I1 => \^forwarded_rs2\(25),
      I2 => \^forwarded_rs2\(24),
      I3 => \^forwarded_rs1\(24),
      O => \i__carry__2_i_8__1_n_0\
    );
\i__carry__2_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(24),
      I1 => \^forwarded_rs1\(24),
      I2 => \^forwarded_rs2\(25),
      I3 => \^forwarded_rs1\(25),
      O => \i__carry__2_i_8__2_n_0\
    );
\i__carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(30),
      I3 => EX_MEM_i(30),
      I4 => MEM_WB_i(30),
      O => \^forwarded_rs2\(30)
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(7),
      I3 => EX_MEM_i(7),
      I4 => MEM_WB_i(7),
      O => \^forwarded_rs2\(7)
    );
\i__carry_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(4),
      I1 => EX_MEM_i(4),
      I2 => \FU_inst/ForwardB0__0\,
      I3 => \FU_inst/ForwardB12_out\,
      I4 => MEM_WB_i(4),
      O => \^forwarded_rs2\(4)
    );
\i__carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(5),
      I3 => EX_MEM_i(5),
      I4 => MEM_WB_i(5),
      O => \^forwarded_rs2\(5)
    );
\i__carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(2),
      I1 => EX_MEM_i(2),
      I2 => \FU_inst/ForwardB0__0\,
      I3 => \FU_inst/ForwardB12_out\,
      I4 => MEM_WB_i(2),
      O => \^forwarded_rs2\(2)
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(3),
      I1 => EX_MEM_i(3),
      I2 => \FU_inst/ForwardB0__0\,
      I3 => \FU_inst/ForwardB12_out\,
      I4 => MEM_WB_i(3),
      O => \^forwarded_rs2\(3)
    );
\i__carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(0),
      I3 => EX_MEM_i(0),
      I4 => MEM_WB_i(0),
      O => \^forwarded_rs2\(0)
    );
\i__carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(1),
      I1 => EX_MEM_i(1),
      I2 => \FU_inst/ForwardB0__0\,
      I3 => \FU_inst/ForwardB12_out\,
      I4 => MEM_WB_i(1),
      O => \^forwarded_rs2\(1)
    );
\i__carry_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \FU_inst/p_4_in\,
      I1 => MEM_WB_RD_i(4),
      I2 => ID_EX_RT_i(4),
      I3 => \i__carry_i_19_n_0\,
      I4 => ID_EX_RT_i(3),
      I5 => MEM_WB_RD_i(3),
      O => \FU_inst/ForwardB0__0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \FU_inst/p_7_in\,
      I1 => EX_MEM_RD_i(4),
      I2 => ID_EX_RT_i(4),
      I3 => \i__carry_i_20_n_0\,
      I4 => ID_EX_RT_i(3),
      I5 => EX_MEM_RD_i(3),
      O => \FU_inst/ForwardB12_out\
    );
\i__carry_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => MEM_WB_RD_i(0),
      I1 => ID_EX_RT_i(0),
      I2 => ID_EX_RT_i(2),
      I3 => MEM_WB_RD_i(2),
      I4 => ID_EX_RT_i(1),
      I5 => MEM_WB_RD_i(1),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(6),
      I1 => \^forwarded_rs2\(6),
      I2 => \^forwarded_rs2\(7),
      I3 => \^forwarded_rs1\(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(6),
      I1 => \^forwarded_rs1\(6),
      I2 => \^forwarded_rs1\(7),
      I3 => \^forwarded_rs2\(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(6),
      I1 => \^forwarded_rs1\(6),
      I2 => \^forwarded_rs1\(7),
      I3 => \^forwarded_rs2\(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => EX_MEM_RD_i(0),
      I1 => ID_EX_RT_i(0),
      I2 => ID_EX_RT_i(2),
      I3 => EX_MEM_RD_i(2),
      I4 => ID_EX_RT_i(1),
      I5 => EX_MEM_RD_i(1),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(4),
      I1 => \^forwarded_rs2\(4),
      I2 => \^forwarded_rs2\(5),
      I3 => \^forwarded_rs1\(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(4),
      I1 => \^forwarded_rs1\(4),
      I2 => \^forwarded_rs1\(5),
      I3 => \^forwarded_rs2\(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(4),
      I1 => \^forwarded_rs1\(4),
      I2 => \^forwarded_rs1\(5),
      I3 => \^forwarded_rs2\(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(2),
      I1 => \^forwarded_rs2\(2),
      I2 => \^forwarded_rs2\(3),
      I3 => \^forwarded_rs1\(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(2),
      I1 => \^forwarded_rs1\(2),
      I2 => \^forwarded_rs1\(3),
      I3 => \^forwarded_rs2\(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(2),
      I1 => \^forwarded_rs1\(2),
      I2 => \^forwarded_rs1\(3),
      I3 => \^forwarded_rs2\(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs1\(0),
      I1 => \^forwarded_rs2\(0),
      I2 => \^forwarded_rs2\(1),
      I3 => \^forwarded_rs1\(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(0),
      I1 => \^forwarded_rs1\(0),
      I2 => \^forwarded_rs1\(1),
      I3 => \^forwarded_rs2\(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^forwarded_rs2\(0),
      I1 => \^forwarded_rs1\(0),
      I2 => \^forwarded_rs1\(1),
      I3 => \^forwarded_rs2\(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(7),
      I1 => \^forwarded_rs2\(7),
      I2 => \^forwarded_rs2\(6),
      I3 => \^forwarded_rs1\(6),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(7),
      I1 => \^forwarded_rs2\(7),
      I2 => \^forwarded_rs2\(6),
      I3 => \^forwarded_rs1\(6),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(6),
      I1 => \^forwarded_rs1\(6),
      I2 => \^forwarded_rs2\(7),
      I3 => \^forwarded_rs1\(7),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(5),
      I1 => \^forwarded_rs2\(5),
      I2 => \^forwarded_rs2\(4),
      I3 => \^forwarded_rs1\(4),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(5),
      I1 => \^forwarded_rs2\(5),
      I2 => \^forwarded_rs2\(4),
      I3 => \^forwarded_rs1\(4),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(5),
      I1 => \^forwarded_rs1\(5),
      I2 => \^forwarded_rs1\(4),
      I3 => \^forwarded_rs2\(4),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(3),
      I1 => \^forwarded_rs2\(3),
      I2 => \^forwarded_rs2\(2),
      I3 => \^forwarded_rs1\(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(3),
      I1 => \^forwarded_rs2\(3),
      I2 => \^forwarded_rs2\(2),
      I3 => \^forwarded_rs1\(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(2),
      I1 => \^forwarded_rs1\(2),
      I2 => \^forwarded_rs2\(3),
      I3 => \^forwarded_rs1\(3),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(1),
      I1 => \^forwarded_rs2\(1),
      I2 => \^forwarded_rs2\(0),
      I3 => \^forwarded_rs1\(0),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs1\(1),
      I1 => \^forwarded_rs2\(1),
      I2 => \^forwarded_rs2\(0),
      I3 => \^forwarded_rs1\(0),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^forwarded_rs2\(0),
      I1 => \^forwarded_rs1\(0),
      I2 => \^forwarded_rs2\(1),
      I3 => \^forwarded_rs1\(1),
      O => \i__carry_i_8__2_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32DC10"
    )
        port map (
      I0 => \FU_inst/ForwardB0__0\,
      I1 => \FU_inst/ForwardB12_out\,
      I2 => rs2_data(6),
      I3 => EX_MEM_i(6),
      I4 => MEM_WB_i(6),
      O => \^forwarded_rs2\(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ExecutionStage_0_0_ExecutionStage is
  port (
    branch_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_taken : out STD_LOGIC;
    rs2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EX_MEM_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_WB_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    is_jalr : in STD_LOGIC;
    PC_ID_EX : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    is_lui : in STD_LOGIC;
    funct7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ALUSrcA : in STD_LOGIC;
    alu_src : in STD_LOGIC;
    EX_MEM_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ID_EX_RT_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_EX_RS_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EX_MEM_RegWrite_i : in STD_LOGIC;
    MEM_WB_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MEM_WB_RegWrite_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_ExecutionStage_0_0_ExecutionStage : entity is "ExecutionStage";
end EX_ExecutionStage_0_0_ExecutionStage;

architecture STRUCTURE of EX_ExecutionStage_0_0_ExecutionStage is
  signal \PC_plus_4__60\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \PC_plus_4_carry__0_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__0_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__0_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__0_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__1_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__1_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__1_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__1_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__2_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__2_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__2_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__2_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__3_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__3_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__3_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__3_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__4_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__4_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__4_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__4_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__5_n_0\ : STD_LOGIC;
  signal \PC_plus_4_carry__5_n_1\ : STD_LOGIC;
  signal \PC_plus_4_carry__5_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__5_n_3\ : STD_LOGIC;
  signal \PC_plus_4_carry__6_n_2\ : STD_LOGIC;
  signal \PC_plus_4_carry__6_n_3\ : STD_LOGIC;
  signal PC_plus_4_carry_i_1_n_0 : STD_LOGIC;
  signal PC_plus_4_carry_n_0 : STD_LOGIC;
  signal PC_plus_4_carry_n_1 : STD_LOGIC;
  signal PC_plus_4_carry_n_2 : STD_LOGIC;
  signal PC_plus_4_carry_n_3 : STD_LOGIC;
  signal \branch_addr0__93\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \branch_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__4_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__4_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__5_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry__5_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__5_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__5_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry__6_n_1\ : STD_LOGIC;
  signal \branch_addr0_carry__6_n_2\ : STD_LOGIC;
  signal \branch_addr0_carry__6_n_3\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__3_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__4_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__5_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_1__6_n_0\ : STD_LOGIC;
  signal branch_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal \branch_addr0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__3_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__4_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__5_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_2__6_n_0\ : STD_LOGIC;
  signal branch_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal \branch_addr0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__3_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__4_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__5_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_3__6_n_0\ : STD_LOGIC;
  signal branch_addr0_carry_i_3_n_0 : STD_LOGIC;
  signal \branch_addr0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__2_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__3_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__4_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__5_n_0\ : STD_LOGIC;
  signal \branch_addr0_carry_i_4__6_n_0\ : STD_LOGIC;
  signal branch_addr0_carry_i_4_n_0 : STD_LOGIC;
  signal branch_addr0_carry_n_0 : STD_LOGIC;
  signal branch_addr0_carry_n_1 : STD_LOGIC;
  signal branch_addr0_carry_n_2 : STD_LOGIC;
  signal branch_addr0_carry_n_3 : STD_LOGIC;
  signal forwarded_rs1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal forwarded_rs2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_PC_plus_4_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_PC_plus_4_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_branch_addr0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of PC_plus_4_carry : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_plus_4_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of branch_addr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr0_carry__6\ : label is 35;
begin
PC_plus_4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PC_plus_4_carry_n_0,
      CO(2) => PC_plus_4_carry_n_1,
      CO(1) => PC_plus_4_carry_n_2,
      CO(0) => PC_plus_4_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => PC_ID_EX(2),
      DI(0) => '0',
      O(3 downto 0) => \PC_plus_4__60\(4 downto 1),
      S(3 downto 2) => PC_ID_EX(4 downto 3),
      S(1) => PC_plus_4_carry_i_1_n_0,
      S(0) => PC_ID_EX(1)
    );
\PC_plus_4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PC_plus_4_carry_n_0,
      CO(3) => \PC_plus_4_carry__0_n_0\,
      CO(2) => \PC_plus_4_carry__0_n_1\,
      CO(1) => \PC_plus_4_carry__0_n_2\,
      CO(0) => \PC_plus_4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(8 downto 5),
      S(3 downto 0) => PC_ID_EX(8 downto 5)
    );
\PC_plus_4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__0_n_0\,
      CO(3) => \PC_plus_4_carry__1_n_0\,
      CO(2) => \PC_plus_4_carry__1_n_1\,
      CO(1) => \PC_plus_4_carry__1_n_2\,
      CO(0) => \PC_plus_4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(12 downto 9),
      S(3 downto 0) => PC_ID_EX(12 downto 9)
    );
\PC_plus_4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__1_n_0\,
      CO(3) => \PC_plus_4_carry__2_n_0\,
      CO(2) => \PC_plus_4_carry__2_n_1\,
      CO(1) => \PC_plus_4_carry__2_n_2\,
      CO(0) => \PC_plus_4_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(16 downto 13),
      S(3 downto 0) => PC_ID_EX(16 downto 13)
    );
\PC_plus_4_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__2_n_0\,
      CO(3) => \PC_plus_4_carry__3_n_0\,
      CO(2) => \PC_plus_4_carry__3_n_1\,
      CO(1) => \PC_plus_4_carry__3_n_2\,
      CO(0) => \PC_plus_4_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(20 downto 17),
      S(3 downto 0) => PC_ID_EX(20 downto 17)
    );
\PC_plus_4_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__3_n_0\,
      CO(3) => \PC_plus_4_carry__4_n_0\,
      CO(2) => \PC_plus_4_carry__4_n_1\,
      CO(1) => \PC_plus_4_carry__4_n_2\,
      CO(0) => \PC_plus_4_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(24 downto 21),
      S(3 downto 0) => PC_ID_EX(24 downto 21)
    );
\PC_plus_4_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__4_n_0\,
      CO(3) => \PC_plus_4_carry__5_n_0\,
      CO(2) => \PC_plus_4_carry__5_n_1\,
      CO(1) => \PC_plus_4_carry__5_n_2\,
      CO(0) => \PC_plus_4_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \PC_plus_4__60\(28 downto 25),
      S(3 downto 0) => PC_ID_EX(28 downto 25)
    );
\PC_plus_4_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_plus_4_carry__5_n_0\,
      CO(3 downto 2) => \NLW_PC_plus_4_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \PC_plus_4_carry__6_n_2\,
      CO(0) => \PC_plus_4_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_PC_plus_4_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \PC_plus_4__60\(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => PC_ID_EX(31 downto 29)
    );
PC_plus_4_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PC_ID_EX(2),
      O => PC_plus_4_carry_i_1_n_0
    );
alu_inst: entity work.EX_ExecutionStage_0_0_ALU
     port map (
      ALUSrcA => ALUSrcA,
      PC_ID_EX(31 downto 0) => PC_ID_EX(31 downto 0),
      \PC_plus_4__60\(30 downto 0) => \PC_plus_4__60\(31 downto 1),
      alu_op(1 downto 0) => alu_op(1 downto 0),
      alu_out(31 downto 0) => alu_out(31 downto 0),
      alu_src => alu_src,
      branch_addr(30 downto 0) => branch_addr(31 downto 1),
      \branch_addr0__93\(30 downto 0) => \branch_addr0__93\(31 downto 1),
      forwarded_rs1(31 downto 0) => forwarded_rs1(31 downto 0),
      forwarded_rs2(31 downto 0) => forwarded_rs2(31 downto 0),
      funct3(2 downto 0) => funct3(2 downto 0),
      funct7(0) => funct7(0),
      immediate_data(31 downto 0) => immediate_data(31 downto 0),
      is_jalr => is_jalr,
      is_lui => is_lui
    );
branch_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_addr0_carry_n_0,
      CO(2) => branch_addr0_carry_n_1,
      CO(1) => branch_addr0_carry_n_2,
      CO(0) => branch_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(3 downto 0),
      O(3 downto 0) => \branch_addr0__93\(3 downto 0),
      S(3) => \branch_addr0_carry_i_1__0_n_0\,
      S(2) => branch_addr0_carry_i_2_n_0,
      S(1) => branch_addr0_carry_i_3_n_0,
      S(0) => branch_addr0_carry_i_4_n_0
    );
\branch_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => branch_addr0_carry_n_0,
      CO(3) => \branch_addr0_carry__0_n_0\,
      CO(2) => \branch_addr0_carry__0_n_1\,
      CO(1) => \branch_addr0_carry__0_n_2\,
      CO(0) => \branch_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(7 downto 4),
      O(3 downto 0) => \branch_addr0__93\(7 downto 4),
      S(3) => \branch_addr0_carry_i_1__1_n_0\,
      S(2) => \branch_addr0_carry_i_2__0_n_0\,
      S(1) => \branch_addr0_carry_i_3__0_n_0\,
      S(0) => \branch_addr0_carry_i_4__0_n_0\
    );
\branch_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__0_n_0\,
      CO(3) => \branch_addr0_carry__1_n_0\,
      CO(2) => \branch_addr0_carry__1_n_1\,
      CO(1) => \branch_addr0_carry__1_n_2\,
      CO(0) => \branch_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(11 downto 8),
      O(3 downto 0) => \branch_addr0__93\(11 downto 8),
      S(3) => \branch_addr0_carry_i_1__2_n_0\,
      S(2) => \branch_addr0_carry_i_2__1_n_0\,
      S(1) => \branch_addr0_carry_i_3__1_n_0\,
      S(0) => \branch_addr0_carry_i_4__1_n_0\
    );
\branch_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__1_n_0\,
      CO(3) => \branch_addr0_carry__2_n_0\,
      CO(2) => \branch_addr0_carry__2_n_1\,
      CO(1) => \branch_addr0_carry__2_n_2\,
      CO(0) => \branch_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(15 downto 12),
      O(3 downto 0) => \branch_addr0__93\(15 downto 12),
      S(3) => \branch_addr0_carry_i_1__3_n_0\,
      S(2) => \branch_addr0_carry_i_2__2_n_0\,
      S(1) => \branch_addr0_carry_i_3__2_n_0\,
      S(0) => \branch_addr0_carry_i_4__2_n_0\
    );
\branch_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__2_n_0\,
      CO(3) => \branch_addr0_carry__3_n_0\,
      CO(2) => \branch_addr0_carry__3_n_1\,
      CO(1) => \branch_addr0_carry__3_n_2\,
      CO(0) => \branch_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(19 downto 16),
      O(3 downto 0) => \branch_addr0__93\(19 downto 16),
      S(3) => \branch_addr0_carry_i_1__4_n_0\,
      S(2) => \branch_addr0_carry_i_2__3_n_0\,
      S(1) => \branch_addr0_carry_i_3__3_n_0\,
      S(0) => \branch_addr0_carry_i_4__3_n_0\
    );
\branch_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__3_n_0\,
      CO(3) => \branch_addr0_carry__4_n_0\,
      CO(2) => \branch_addr0_carry__4_n_1\,
      CO(1) => \branch_addr0_carry__4_n_2\,
      CO(0) => \branch_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(23 downto 20),
      O(3 downto 0) => \branch_addr0__93\(23 downto 20),
      S(3) => \branch_addr0_carry_i_1__5_n_0\,
      S(2) => \branch_addr0_carry_i_2__4_n_0\,
      S(1) => \branch_addr0_carry_i_3__4_n_0\,
      S(0) => \branch_addr0_carry_i_4__4_n_0\
    );
\branch_addr0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__4_n_0\,
      CO(3) => \branch_addr0_carry__5_n_0\,
      CO(2) => \branch_addr0_carry__5_n_1\,
      CO(1) => \branch_addr0_carry__5_n_2\,
      CO(0) => \branch_addr0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => PC_ID_EX(27 downto 24),
      O(3 downto 0) => \branch_addr0__93\(27 downto 24),
      S(3) => \branch_addr0_carry_i_1__6_n_0\,
      S(2) => \branch_addr0_carry_i_2__5_n_0\,
      S(1) => \branch_addr0_carry_i_3__5_n_0\,
      S(0) => \branch_addr0_carry_i_4__5_n_0\
    );
\branch_addr0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr0_carry__5_n_0\,
      CO(3) => \NLW_branch_addr0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \branch_addr0_carry__6_n_1\,
      CO(1) => \branch_addr0_carry__6_n_2\,
      CO(0) => \branch_addr0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => PC_ID_EX(30 downto 28),
      O(3 downto 0) => \branch_addr0__93\(31 downto 28),
      S(3) => branch_addr0_carry_i_1_n_0,
      S(2) => \branch_addr0_carry_i_2__6_n_0\,
      S(1) => \branch_addr0_carry_i_3__6_n_0\,
      S(0) => \branch_addr0_carry_i_4__6_n_0\
    );
branch_addr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(31),
      I1 => immediate_data(31),
      O => branch_addr0_carry_i_1_n_0
    );
\branch_addr0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(3),
      I1 => immediate_data(3),
      O => \branch_addr0_carry_i_1__0_n_0\
    );
\branch_addr0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(7),
      I1 => immediate_data(7),
      O => \branch_addr0_carry_i_1__1_n_0\
    );
\branch_addr0_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(11),
      I1 => immediate_data(11),
      O => \branch_addr0_carry_i_1__2_n_0\
    );
\branch_addr0_carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(15),
      I1 => immediate_data(15),
      O => \branch_addr0_carry_i_1__3_n_0\
    );
\branch_addr0_carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(19),
      I1 => immediate_data(19),
      O => \branch_addr0_carry_i_1__4_n_0\
    );
\branch_addr0_carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(23),
      I1 => immediate_data(23),
      O => \branch_addr0_carry_i_1__5_n_0\
    );
\branch_addr0_carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(27),
      I1 => immediate_data(27),
      O => \branch_addr0_carry_i_1__6_n_0\
    );
branch_addr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(2),
      I1 => immediate_data(2),
      O => branch_addr0_carry_i_2_n_0
    );
\branch_addr0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(6),
      I1 => immediate_data(6),
      O => \branch_addr0_carry_i_2__0_n_0\
    );
\branch_addr0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(10),
      I1 => immediate_data(10),
      O => \branch_addr0_carry_i_2__1_n_0\
    );
\branch_addr0_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(14),
      I1 => immediate_data(14),
      O => \branch_addr0_carry_i_2__2_n_0\
    );
\branch_addr0_carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(18),
      I1 => immediate_data(18),
      O => \branch_addr0_carry_i_2__3_n_0\
    );
\branch_addr0_carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(22),
      I1 => immediate_data(22),
      O => \branch_addr0_carry_i_2__4_n_0\
    );
\branch_addr0_carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(26),
      I1 => immediate_data(26),
      O => \branch_addr0_carry_i_2__5_n_0\
    );
\branch_addr0_carry_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(30),
      I1 => immediate_data(30),
      O => \branch_addr0_carry_i_2__6_n_0\
    );
branch_addr0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(1),
      I1 => immediate_data(1),
      O => branch_addr0_carry_i_3_n_0
    );
\branch_addr0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(5),
      I1 => immediate_data(5),
      O => \branch_addr0_carry_i_3__0_n_0\
    );
\branch_addr0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(9),
      I1 => immediate_data(9),
      O => \branch_addr0_carry_i_3__1_n_0\
    );
\branch_addr0_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(13),
      I1 => immediate_data(13),
      O => \branch_addr0_carry_i_3__2_n_0\
    );
\branch_addr0_carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(17),
      I1 => immediate_data(17),
      O => \branch_addr0_carry_i_3__3_n_0\
    );
\branch_addr0_carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(21),
      I1 => immediate_data(21),
      O => \branch_addr0_carry_i_3__4_n_0\
    );
\branch_addr0_carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(25),
      I1 => immediate_data(25),
      O => \branch_addr0_carry_i_3__5_n_0\
    );
\branch_addr0_carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(29),
      I1 => immediate_data(29),
      O => \branch_addr0_carry_i_3__6_n_0\
    );
branch_addr0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(0),
      I1 => immediate_data(0),
      O => branch_addr0_carry_i_4_n_0
    );
\branch_addr0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(4),
      I1 => immediate_data(4),
      O => \branch_addr0_carry_i_4__0_n_0\
    );
\branch_addr0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(8),
      I1 => immediate_data(8),
      O => \branch_addr0_carry_i_4__1_n_0\
    );
\branch_addr0_carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(12),
      I1 => immediate_data(12),
      O => \branch_addr0_carry_i_4__2_n_0\
    );
\branch_addr0_carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(16),
      I1 => immediate_data(16),
      O => \branch_addr0_carry_i_4__3_n_0\
    );
\branch_addr0_carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(20),
      I1 => immediate_data(20),
      O => \branch_addr0_carry_i_4__4_n_0\
    );
\branch_addr0_carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(24),
      I1 => immediate_data(24),
      O => \branch_addr0_carry_i_4__5_n_0\
    );
\branch_addr0_carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => PC_ID_EX(28),
      I1 => immediate_data(28),
      O => \branch_addr0_carry_i_4__6_n_0\
    );
\branch_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \branch_addr0__93\(0),
      I1 => is_jalr,
      O => branch_addr(0)
    );
branch_unit_inst: entity work.EX_ExecutionStage_0_0_Branch_Unit
     port map (
      EX_MEM_RD_i(4 downto 0) => EX_MEM_RD_i(4 downto 0),
      EX_MEM_RegWrite_i => EX_MEM_RegWrite_i,
      EX_MEM_i(31 downto 0) => EX_MEM_i(31 downto 0),
      ID_EX_RS_i(4 downto 0) => ID_EX_RS_i(4 downto 0),
      ID_EX_RT_i(4 downto 0) => ID_EX_RT_i(4 downto 0),
      MEM_WB_RD_i(4 downto 0) => MEM_WB_RD_i(4 downto 0),
      MEM_WB_RegWrite_i => MEM_WB_RegWrite_i,
      MEM_WB_i(31 downto 0) => MEM_WB_i(31 downto 0),
      branch_taken => branch_taken,
      forwarded_rs1(31 downto 0) => forwarded_rs1(31 downto 0),
      forwarded_rs2(31 downto 0) => forwarded_rs2(31 downto 0),
      funct3(2 downto 0) => funct3(2 downto 0),
      rs1_data(31 downto 0) => rs1_data(31 downto 0),
      rs2_data(31 downto 0) => rs2_data(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ExecutionStage_0_0 is
  port (
    EX_MEM_RegWrite_i : in STD_LOGIC;
    MEM_WB_RegWrite_i : in STD_LOGIC;
    ID_EX_RS_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ID_EX_RT_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    EX_MEM_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MEM_WB_RD_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs2_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    EX_MEM_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_WB_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    is_lui : in STD_LOGIC;
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    alu_src : in STD_LOGIC;
    immediate_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_ID_EX : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrcA : in STD_LOGIC;
    is_jalr : in STD_LOGIC;
    alu_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_taken : out STD_LOGIC;
    branch_addr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EX_ExecutionStage_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ExecutionStage_0_0 : entity is "EX_ExecutionStage_0_0,ExecutionStage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ExecutionStage_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ExecutionStage_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EX_ExecutionStage_0_0 : entity is "ExecutionStage,Vivado 2024.2";
end EX_ExecutionStage_0_0;

architecture STRUCTURE of EX_ExecutionStage_0_0 is
begin
inst: entity work.EX_ExecutionStage_0_0_ExecutionStage
     port map (
      ALUSrcA => ALUSrcA,
      EX_MEM_RD_i(4 downto 0) => EX_MEM_RD_i(4 downto 0),
      EX_MEM_RegWrite_i => EX_MEM_RegWrite_i,
      EX_MEM_i(31 downto 0) => EX_MEM_i(31 downto 0),
      ID_EX_RS_i(4 downto 0) => ID_EX_RS_i(4 downto 0),
      ID_EX_RT_i(4 downto 0) => ID_EX_RT_i(4 downto 0),
      MEM_WB_RD_i(4 downto 0) => MEM_WB_RD_i(4 downto 0),
      MEM_WB_RegWrite_i => MEM_WB_RegWrite_i,
      MEM_WB_i(31 downto 0) => MEM_WB_i(31 downto 0),
      PC_ID_EX(31 downto 0) => PC_ID_EX(31 downto 0),
      alu_op(1 downto 0) => alu_op(1 downto 0),
      alu_out(31 downto 0) => alu_out(31 downto 0),
      alu_src => alu_src,
      branch_addr(31 downto 0) => branch_addr(31 downto 0),
      branch_taken => branch_taken,
      funct3(2 downto 0) => funct3(2 downto 0),
      funct7(0) => funct7(5),
      immediate_data(31 downto 0) => immediate_data(31 downto 0),
      is_jalr => is_jalr,
      is_lui => is_lui,
      rs1_data(31 downto 0) => rs1_data(31 downto 0),
      rs2_data(31 downto 0) => rs2_data(31 downto 0)
    );
end STRUCTURE;
