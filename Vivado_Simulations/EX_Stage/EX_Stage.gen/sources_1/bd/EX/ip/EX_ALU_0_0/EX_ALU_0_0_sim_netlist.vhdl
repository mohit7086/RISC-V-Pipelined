-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:36 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_0_0/EX_ALU_0_0_sim_netlist.vhdl
-- Design      : EX_ALU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ALU_0_0_ALU is
  port (
    alu_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_ALU_0_0_ALU : entity is "ALU";
end EX_ALU_0_0_ALU;

architecture STRUCTURE of EX_ALU_0_0_ALU is
  signal \alu_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__0_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__1_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__2_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__3_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__4_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__5_n_3\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_1\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_2\ : STD_LOGIC;
  signal \alu_out0_carry__6_n_3\ : STD_LOGIC;
  signal alu_out0_carry_i_1_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_2_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_3_n_0 : STD_LOGIC;
  signal alu_out0_carry_i_4_n_0 : STD_LOGIC;
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
  signal \alu_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[11]_INST_0_i_3_n_0\ : STD_LOGIC;
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
  signal \alu_out[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[13]_INST_0_i_3_n_0\ : STD_LOGIC;
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
  signal \alu_out[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[20]_INST_0_i_3_n_0\ : STD_LOGIC;
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
  signal \alu_out[21]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[21]_INST_0_i_3_n_0\ : STD_LOGIC;
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
  signal \alu_out[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[27]_INST_0_i_3_n_0\ : STD_LOGIC;
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
  signal \alu_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \alu_out[30]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal \alu_out[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \alu_out[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
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
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_out[0]_INST_0_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \alu_out[10]_INST_0_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \alu_out[11]_INST_0_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_11\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_out[12]_INST_0_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_out[14]_INST_0_i_13\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_out[15]_INST_0_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_out[16]_INST_0_i_9\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \alu_out[17]_INST_0_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \alu_out[18]_INST_0_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \alu_out[19]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \alu_out[1]_INST_0_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \alu_out[20]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_11\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_15\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_out[21]_INST_0_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_13\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \alu_out[22]_INST_0_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \alu_out[23]_INST_0_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_out[24]_INST_0_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_out[25]_INST_0_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \alu_out[26]_INST_0_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \alu_out[27]_INST_0_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_out[28]_INST_0_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_out[29]_INST_0_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \alu_out[2]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_out[30]_INST_0_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_out[31]_INST_0_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \alu_out[31]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_out[3]_INST_0_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \alu_out[4]_INST_0_i_9\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_out[7]_INST_0_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \alu_out[8]_INST_0_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \alu_out[9]_INST_0_i_7\ : label is "soft_lutpair21";
begin
alu_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_out0_carry_n_0,
      CO(2) => alu_out0_carry_n_1,
      CO(1) => alu_out0_carry_n_2,
      CO(0) => alu_out0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => alu_out0_carry_i_1_n_0,
      S(2) => alu_out0_carry_i_2_n_0,
      S(1) => alu_out0_carry_i_3_n_0,
      S(0) => alu_out0_carry_i_4_n_0
    );
\alu_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => alu_out0_carry_n_0,
      CO(3) => \alu_out0_carry__0_n_0\,
      CO(2) => \alu_out0_carry__0_n_1\,
      CO(1) => \alu_out0_carry__0_n_2\,
      CO(0) => \alu_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \alu_out0_carry__0_i_1_n_0\,
      S(2) => \alu_out0_carry__0_i_2_n_0\,
      S(1) => \alu_out0_carry__0_i_3_n_0\,
      S(0) => \alu_out0_carry__0_i_4_n_0\
    );
\alu_out0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \alu_out0_carry__0_i_1_n_0\
    );
\alu_out0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \alu_out0_carry__0_i_2_n_0\
    );
\alu_out0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \alu_out0_carry__0_i_3_n_0\
    );
\alu_out0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \alu_out0_carry__0_i_4_n_0\
    );
\alu_out0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__0_n_0\,
      CO(3) => \alu_out0_carry__1_n_0\,
      CO(2) => \alu_out0_carry__1_n_1\,
      CO(1) => \alu_out0_carry__1_n_2\,
      CO(0) => \alu_out0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \alu_out0_carry__1_i_1_n_0\,
      S(2) => \alu_out0_carry__1_i_2_n_0\,
      S(1) => \alu_out0_carry__1_i_3_n_0\,
      S(0) => \alu_out0_carry__1_i_4_n_0\
    );
\alu_out0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      O => \alu_out0_carry__1_i_1_n_0\
    );
\alu_out0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      O => \alu_out0_carry__1_i_2_n_0\
    );
\alu_out0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      O => \alu_out0_carry__1_i_3_n_0\
    );
\alu_out0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      O => \alu_out0_carry__1_i_4_n_0\
    );
\alu_out0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__1_n_0\,
      CO(3) => \alu_out0_carry__2_n_0\,
      CO(2) => \alu_out0_carry__2_n_1\,
      CO(1) => \alu_out0_carry__2_n_2\,
      CO(0) => \alu_out0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \alu_out0_carry__2_i_1_n_0\,
      S(2) => \alu_out0_carry__2_i_2_n_0\,
      S(1) => \alu_out0_carry__2_i_3_n_0\,
      S(0) => \alu_out0_carry__2_i_4_n_0\
    );
\alu_out0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      O => \alu_out0_carry__2_i_1_n_0\
    );
\alu_out0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      O => \alu_out0_carry__2_i_2_n_0\
    );
\alu_out0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(13),
      I1 => b(13),
      O => \alu_out0_carry__2_i_3_n_0\
    );
\alu_out0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      O => \alu_out0_carry__2_i_4_n_0\
    );
\alu_out0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__2_n_0\,
      CO(3) => \alu_out0_carry__3_n_0\,
      CO(2) => \alu_out0_carry__3_n_1\,
      CO(1) => \alu_out0_carry__3_n_2\,
      CO(0) => \alu_out0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
      O(3 downto 0) => data0(19 downto 16),
      S(3) => \alu_out0_carry__3_i_1_n_0\,
      S(2) => \alu_out0_carry__3_i_2_n_0\,
      S(1) => \alu_out0_carry__3_i_3_n_0\,
      S(0) => \alu_out0_carry__3_i_4_n_0\
    );
\alu_out0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(19),
      I1 => b(19),
      O => \alu_out0_carry__3_i_1_n_0\
    );
\alu_out0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      O => \alu_out0_carry__3_i_2_n_0\
    );
\alu_out0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(17),
      I1 => b(17),
      O => \alu_out0_carry__3_i_3_n_0\
    );
\alu_out0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      O => \alu_out0_carry__3_i_4_n_0\
    );
\alu_out0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__3_n_0\,
      CO(3) => \alu_out0_carry__4_n_0\,
      CO(2) => \alu_out0_carry__4_n_1\,
      CO(1) => \alu_out0_carry__4_n_2\,
      CO(0) => \alu_out0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(23 downto 20),
      O(3 downto 0) => data0(23 downto 20),
      S(3) => \alu_out0_carry__4_i_1_n_0\,
      S(2) => \alu_out0_carry__4_i_2_n_0\,
      S(1) => \alu_out0_carry__4_i_3_n_0\,
      S(0) => \alu_out0_carry__4_i_4_n_0\
    );
\alu_out0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(23),
      I1 => b(23),
      O => \alu_out0_carry__4_i_1_n_0\
    );
\alu_out0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      O => \alu_out0_carry__4_i_2_n_0\
    );
\alu_out0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      O => \alu_out0_carry__4_i_3_n_0\
    );
\alu_out0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      O => \alu_out0_carry__4_i_4_n_0\
    );
\alu_out0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_carry__4_n_0\,
      CO(3) => \alu_out0_carry__5_n_0\,
      CO(2) => \alu_out0_carry__5_n_1\,
      CO(1) => \alu_out0_carry__5_n_2\,
      CO(0) => \alu_out0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(27 downto 24),
      O(3 downto 0) => data0(27 downto 24),
      S(3) => \alu_out0_carry__5_i_1_n_0\,
      S(2) => \alu_out0_carry__5_i_2_n_0\,
      S(1) => \alu_out0_carry__5_i_3_n_0\,
      S(0) => \alu_out0_carry__5_i_4_n_0\
    );
\alu_out0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      O => \alu_out0_carry__5_i_1_n_0\
    );
\alu_out0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      O => \alu_out0_carry__5_i_2_n_0\
    );
\alu_out0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(25),
      I1 => b(25),
      O => \alu_out0_carry__5_i_3_n_0\
    );
\alu_out0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      O => \alu_out0_carry__5_i_4_n_0\
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
      DI(2 downto 0) => a(30 downto 28),
      O(3 downto 0) => data0(31 downto 28),
      S(3) => \alu_out0_carry__6_i_1_n_0\,
      S(2) => \alu_out0_carry__6_i_2_n_0\,
      S(1) => \alu_out0_carry__6_i_3_n_0\,
      S(0) => \alu_out0_carry__6_i_4_n_0\
    );
\alu_out0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      O => \alu_out0_carry__6_i_1_n_0\
    );
\alu_out0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      O => \alu_out0_carry__6_i_2_n_0\
    );
\alu_out0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(29),
      I1 => b(29),
      O => \alu_out0_carry__6_i_3_n_0\
    );
\alu_out0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      O => \alu_out0_carry__6_i_4_n_0\
    );
alu_out0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => alu_out0_carry_i_1_n_0
    );
alu_out0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => alu_out0_carry_i_2_n_0
    );
alu_out0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => alu_out0_carry_i_3_n_0
    );
alu_out0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => alu_out0_carry_i_4_n_0
    );
\alu_out0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_out0_inferred__0/i__carry_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => a(3 downto 0),
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
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__0_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__1_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__1_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__1_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__1_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__2_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__2_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__2_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\alu_out0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out0_inferred__0/i__carry__2_n_0\,
      CO(3) => \alu_out0_inferred__0/i__carry__3_n_0\,
      CO(2) => \alu_out0_inferred__0/i__carry__3_n_1\,
      CO(1) => \alu_out0_inferred__0/i__carry__3_n_2\,
      CO(0) => \alu_out0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
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
      DI(3 downto 0) => a(23 downto 20),
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
      DI(3 downto 0) => a(27 downto 24),
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
      DI(2 downto 0) => a(30 downto 28),
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
      INIT => X"5D04"
    )
        port map (
      I0 => a(15),
      I1 => b(14),
      I2 => a(14),
      I3 => b(15),
      O => \alu_out2_carry__0_i_1_n_0\
    );
\alu_out2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(13),
      I1 => b(12),
      I2 => a(12),
      I3 => b(13),
      O => \alu_out2_carry__0_i_2_n_0\
    );
\alu_out2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(11),
      I1 => b(10),
      I2 => a(10),
      I3 => b(11),
      O => \alu_out2_carry__0_i_3_n_0\
    );
\alu_out2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(9),
      I1 => b(8),
      I2 => a(8),
      I3 => b(9),
      O => \alu_out2_carry__0_i_4_n_0\
    );
\alu_out2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => b(15),
      I3 => a(15),
      O => \alu_out2_carry__0_i_5_n_0\
    );
\alu_out2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => b(13),
      I3 => a(13),
      O => \alu_out2_carry__0_i_6_n_0\
    );
\alu_out2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => b(11),
      I3 => a(11),
      O => \alu_out2_carry__0_i_7_n_0\
    );
\alu_out2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => b(9),
      I3 => a(9),
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
      INIT => X"5D04"
    )
        port map (
      I0 => a(23),
      I1 => b(22),
      I2 => a(22),
      I3 => b(23),
      O => \alu_out2_carry__1_i_1_n_0\
    );
\alu_out2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(21),
      I1 => b(20),
      I2 => a(20),
      I3 => b(21),
      O => \alu_out2_carry__1_i_2_n_0\
    );
\alu_out2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(19),
      I1 => b(18),
      I2 => a(18),
      I3 => b(19),
      O => \alu_out2_carry__1_i_3_n_0\
    );
\alu_out2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(17),
      I1 => b(16),
      I2 => a(16),
      I3 => b(17),
      O => \alu_out2_carry__1_i_4_n_0\
    );
\alu_out2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => b(23),
      I3 => a(23),
      O => \alu_out2_carry__1_i_5_n_0\
    );
\alu_out2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => b(21),
      I3 => a(21),
      O => \alu_out2_carry__1_i_6_n_0\
    );
\alu_out2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => b(19),
      I3 => a(19),
      O => \alu_out2_carry__1_i_7_n_0\
    );
\alu_out2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => b(17),
      I3 => a(17),
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
      INIT => X"22B2"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      I2 => b(30),
      I3 => a(30),
      O => \alu_out2_carry__2_i_1_n_0\
    );
\alu_out2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(29),
      I1 => b(28),
      I2 => a(28),
      I3 => b(29),
      O => \alu_out2_carry__2_i_2_n_0\
    );
\alu_out2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(27),
      I1 => b(26),
      I2 => a(26),
      I3 => b(27),
      O => \alu_out2_carry__2_i_3_n_0\
    );
\alu_out2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(25),
      I1 => b(24),
      I2 => a(24),
      I3 => b(25),
      O => \alu_out2_carry__2_i_4_n_0\
    );
\alu_out2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(31),
      I1 => a(31),
      I2 => b(30),
      I3 => a(30),
      O => \alu_out2_carry__2_i_5_n_0\
    );
\alu_out2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => b(29),
      I3 => a(29),
      O => \alu_out2_carry__2_i_6_n_0\
    );
\alu_out2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => b(27),
      I3 => a(27),
      O => \alu_out2_carry__2_i_7_n_0\
    );
\alu_out2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => b(25),
      I3 => a(25),
      O => \alu_out2_carry__2_i_8_n_0\
    );
alu_out2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(7),
      I1 => b(6),
      I2 => a(6),
      I3 => b(7),
      O => alu_out2_carry_i_1_n_0
    );
alu_out2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      I2 => a(4),
      I3 => b(4),
      O => alu_out2_carry_i_2_n_0
    );
alu_out2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      I2 => a(2),
      I3 => b(2),
      O => alu_out2_carry_i_3_n_0
    );
alu_out2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      I2 => a(0),
      I3 => b(0),
      O => alu_out2_carry_i_4_n_0
    );
alu_out2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => b(7),
      I3 => a(7),
      O => alu_out2_carry_i_5_n_0
    );
alu_out2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => b(5),
      I3 => a(5),
      O => alu_out2_carry_i_6_n_0
    );
alu_out2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => b(3),
      I3 => a(3),
      O => alu_out2_carry_i_7_n_0
    );
alu_out2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
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
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
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
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\alu_out2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_inferred__0/i__carry__0_n_0\,
      CO(3) => \alu_out2_inferred__0/i__carry__1_n_0\,
      CO(2) => \alu_out2_inferred__0/i__carry__1_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry__1_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\alu_out2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \alu_out2_inferred__0/i__carry__1_n_0\,
      CO(3) => data4,
      CO(2) => \alu_out2_inferred__0/i__carry__2_n_1\,
      CO(1) => \alu_out2_inferred__0/i__carry__2_n_2\,
      CO(0) => \alu_out2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_alu_out2_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\alu_out[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[0]_INST_0_i_1_n_0\,
      I1 => \alu_out[0]_INST_0_i_2_n_0\,
      O => alu_out(0),
      S => alu_ctrl(3)
    );
\alu_out[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[0]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[0]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[0]_INST_0_i_5_n_0\,
      O => \alu_out[0]_INST_0_i_1_n_0\
    );
\alu_out[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[0]_INST_0_i_2_n_0\
    );
\alu_out[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_6_n_0\,
      I1 => b(2),
      I2 => \alu_out[16]_INST_0_i_9_n_0\,
      I3 => b(4),
      I4 => \alu_out[0]_INST_0_i_6_n_0\,
      O => \alu_out[0]_INST_0_i_3_n_0\
    );
\alu_out[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => alu_ctrl(0),
      I3 => data4,
      O => \alu_out[0]_INST_0_i_4_n_0\
    );
\alu_out[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => \alu_out[0]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => data1(0),
      I4 => alu_ctrl(0),
      I5 => data0(0),
      O => \alu_out[0]_INST_0_i_5_n_0\
    );
\alu_out[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_9_n_0\,
      I1 => b(3),
      I2 => \alu_out[0]_INST_0_i_8_n_0\,
      O => \alu_out[0]_INST_0_i_6_n_0\
    );
\alu_out[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => b(4),
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => b(3),
      I5 => b(2),
      O => \alu_out[0]_INST_0_i_7_n_0\
    );
\alu_out[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => b(0),
      I3 => a(2),
      I4 => b(1),
      I5 => a(0),
      O => \alu_out[0]_INST_0_i_8_n_0\
    );
\alu_out[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[10]_INST_0_i_1_n_0\,
      I1 => \alu_out[10]_INST_0_i_2_n_0\,
      O => alu_out(10),
      S => alu_ctrl(3)
    );
\alu_out[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[10]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[10]_INST_0_i_5_n_0\,
      O => \alu_out[10]_INST_0_i_1_n_0\
    );
\alu_out[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[10]_INST_0_i_2_n_0\
    );
\alu_out[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_8_n_0\,
      I1 => \alu_out[10]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[14]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[10]_INST_0_i_7_n_0\,
      O => \alu_out[10]_INST_0_i_3_n_0\
    );
\alu_out[10]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      O => \alu_out[10]_INST_0_i_4_n_0\
    );
\alu_out[10]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(10),
      I3 => alu_ctrl(0),
      I4 => data0(10),
      O => \alu_out[10]_INST_0_i_5_n_0\
    );
\alu_out[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[26]_INST_0_i_10_n_0\,
      I2 => b(4),
      I3 => \alu_out[18]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[10]_INST_0_i_9_n_0\,
      O => \alu_out[10]_INST_0_i_6_n_0\
    );
\alu_out[10]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_10_n_0\,
      I1 => b(4),
      I2 => \alu_out[18]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[10]_INST_0_i_9_n_0\,
      O => \alu_out[10]_INST_0_i_7_n_0\
    );
\alu_out[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_11_n_0\,
      I1 => b(2),
      I2 => \alu_out[30]_INST_0_i_16_n_0\,
      I3 => b(3),
      I4 => \alu_out[30]_INST_0_i_15_n_0\,
      I5 => b(4),
      O => \alu_out[10]_INST_0_i_8_n_0\
    );
\alu_out[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(13),
      I1 => a(11),
      I2 => b(0),
      I3 => a(12),
      I4 => b(1),
      I5 => a(10),
      O => \alu_out[10]_INST_0_i_9_n_0\
    );
\alu_out[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[11]_INST_0_i_1_n_0\,
      I1 => \alu_out[11]_INST_0_i_2_n_0\,
      O => alu_out(11),
      S => alu_ctrl(3)
    );
\alu_out[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[11]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[11]_INST_0_i_5_n_0\,
      O => \alu_out[11]_INST_0_i_1_n_0\
    );
\alu_out[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[11]_INST_0_i_2_n_0\
    );
\alu_out[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_8_n_0\,
      I1 => \alu_out[11]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[15]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[11]_INST_0_i_7_n_0\,
      O => \alu_out[11]_INST_0_i_3_n_0\
    );
\alu_out[11]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      O => \alu_out[11]_INST_0_i_4_n_0\
    );
\alu_out[11]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(11),
      I3 => alu_ctrl(0),
      I4 => data0(11),
      O => \alu_out[11]_INST_0_i_5_n_0\
    );
\alu_out[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[27]_INST_0_i_10_n_0\,
      I2 => b(4),
      I3 => \alu_out[19]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[11]_INST_0_i_9_n_0\,
      O => \alu_out[11]_INST_0_i_6_n_0\
    );
\alu_out[11]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_10_n_0\,
      I1 => b(4),
      I2 => \alu_out[19]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[11]_INST_0_i_9_n_0\,
      O => \alu_out[11]_INST_0_i_7_n_0\
    );
\alu_out[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[31]_INST_0_i_14_n_0\,
      I3 => b(3),
      I4 => \alu_out[31]_INST_0_i_13_n_0\,
      I5 => b(4),
      O => \alu_out[11]_INST_0_i_8_n_0\
    );
\alu_out[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(14),
      I1 => a(12),
      I2 => b(0),
      I3 => a(13),
      I4 => b(1),
      I5 => a(11),
      O => \alu_out[11]_INST_0_i_9_n_0\
    );
\alu_out[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[12]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[12]_INST_0_i_3_n_0\,
      O => alu_out(12)
    );
\alu_out[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[12]_INST_0_i_1_n_0\
    );
\alu_out[12]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_11_n_0\,
      I1 => b(3),
      I2 => \alu_out[24]_INST_0_i_9_n_0\,
      I3 => b(4),
      O => \alu_out[12]_INST_0_i_10_n_0\
    );
\alu_out[12]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => b(4),
      I2 => \alu_out[20]_INST_0_i_13_n_0\,
      I3 => b(3),
      I4 => \alu_out[12]_INST_0_i_13_n_0\,
      O => \alu_out[12]_INST_0_i_11_n_0\
    );
\alu_out[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_15_n_0\,
      I1 => b(3),
      I2 => b(0),
      I3 => a(0),
      I4 => b(1),
      I5 => b(4),
      O => \alu_out[12]_INST_0_i_12_n_0\
    );
\alu_out[12]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(15),
      I1 => a(13),
      I2 => b(0),
      I3 => a(14),
      I4 => b(1),
      I5 => a(12),
      O => \alu_out[12]_INST_0_i_13_n_0\
    );
\alu_out[12]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[12]_INST_0_i_4_n_0\,
      I1 => \alu_out[12]_INST_0_i_5_n_0\,
      O => \alu_out[12]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[12]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[12]_INST_0_i_6_n_0\,
      I1 => \alu_out[12]_INST_0_i_7_n_0\,
      O => \alu_out[12]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => alu_ctrl(0),
      O => \alu_out[12]_INST_0_i_4_n_0\
    );
\alu_out[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_8_n_0\,
      I1 => \alu_out[12]_INST_0_i_9_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[12]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \alu_out[12]_INST_0_i_11_n_0\,
      O => \alu_out[12]_INST_0_i_5_n_0\
    );
\alu_out[12]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(12),
      I1 => alu_ctrl(0),
      I2 => data0(12),
      O => \alu_out[12]_INST_0_i_6_n_0\
    );
\alu_out[12]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[12]_INST_0_i_12_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[12]_INST_0_i_7_n_0\
    );
\alu_out[12]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[24]_INST_0_i_9_n_0\,
      I3 => b(3),
      I4 => \alu_out[16]_INST_0_i_11_n_0\,
      O => \alu_out[12]_INST_0_i_8_n_0\
    );
\alu_out[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[28]_INST_0_i_7_n_0\,
      I2 => b(4),
      I3 => \alu_out[20]_INST_0_i_13_n_0\,
      I4 => b(3),
      I5 => \alu_out[12]_INST_0_i_13_n_0\,
      O => \alu_out[12]_INST_0_i_9_n_0\
    );
\alu_out[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[13]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[13]_INST_0_i_3_n_0\,
      O => alu_out(13)
    );
\alu_out[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(13),
      I1 => b(13),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[13]_INST_0_i_1_n_0\
    );
\alu_out[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
      I4 => b(3),
      I5 => \alu_out[29]_INST_0_i_16_n_0\,
      O => \alu_out[13]_INST_0_i_10_n_0\
    );
\alu_out[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(16),
      I1 => a(14),
      I2 => b(0),
      I3 => a(15),
      I4 => b(1),
      I5 => a(13),
      O => \alu_out[13]_INST_0_i_11_n_0\
    );
\alu_out[13]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[13]_INST_0_i_4_n_0\,
      I1 => \alu_out[13]_INST_0_i_5_n_0\,
      O => \alu_out[13]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[13]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[13]_INST_0_i_6_n_0\,
      I1 => \alu_out[13]_INST_0_i_7_n_0\,
      O => \alu_out[13]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[13]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      I2 => alu_ctrl(0),
      O => \alu_out[13]_INST_0_i_4_n_0\
    );
\alu_out[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_8_n_0\,
      I1 => \alu_out[13]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[17]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[13]_INST_0_i_9_n_0\,
      O => \alu_out[13]_INST_0_i_5_n_0\
    );
\alu_out[13]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(13),
      I1 => alu_ctrl(0),
      I2 => data0(13),
      O => \alu_out[13]_INST_0_i_6_n_0\
    );
\alu_out[13]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => b(4),
      I3 => \alu_out[13]_INST_0_i_10_n_0\,
      I4 => alu_ctrl(0),
      O => \alu_out[13]_INST_0_i_7_n_0\
    );
\alu_out[13]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_7_n_0\,
      I1 => b(4),
      I2 => \alu_out[21]_INST_0_i_14_n_0\,
      I3 => b(3),
      I4 => \alu_out[13]_INST_0_i_11_n_0\,
      O => \alu_out[13]_INST_0_i_8_n_0\
    );
\alu_out[13]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_8_n_0\,
      I1 => b(4),
      I2 => \alu_out[21]_INST_0_i_14_n_0\,
      I3 => b(3),
      I4 => \alu_out[13]_INST_0_i_11_n_0\,
      O => \alu_out[13]_INST_0_i_9_n_0\
    );
\alu_out[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[14]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[14]_INST_0_i_3_n_0\,
      O => alu_out(14)
    );
\alu_out[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[14]_INST_0_i_1_n_0\
    );
\alu_out[14]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_16_n_0\,
      I1 => b(3),
      I2 => \alu_out[30]_INST_0_i_15_n_0\,
      I3 => b(4),
      O => \alu_out[14]_INST_0_i_10_n_0\
    );
\alu_out[14]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => b(3),
      I1 => b(0),
      I2 => a(31),
      I3 => b(1),
      I4 => a(30),
      O => \alu_out[14]_INST_0_i_11_n_0\
    );
\alu_out[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(17),
      I1 => a(15),
      I2 => b(0),
      I3 => a(16),
      I4 => b(1),
      I5 => a(14),
      O => \alu_out[14]_INST_0_i_12_n_0\
    );
\alu_out[14]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => b(1),
      I1 => a(30),
      I2 => b(0),
      I3 => a(31),
      I4 => b(3),
      O => \alu_out[14]_INST_0_i_13_n_0\
    );
\alu_out[14]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[14]_INST_0_i_4_n_0\,
      I1 => \alu_out[14]_INST_0_i_5_n_0\,
      O => \alu_out[14]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[14]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[14]_INST_0_i_6_n_0\,
      I1 => \alu_out[14]_INST_0_i_7_n_0\,
      O => \alu_out[14]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[14]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => alu_ctrl(0),
      O => \alu_out[14]_INST_0_i_4_n_0\
    );
\alu_out[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_8_n_0\,
      I1 => \alu_out[14]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[18]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[14]_INST_0_i_9_n_0\,
      O => \alu_out[14]_INST_0_i_5_n_0\
    );
\alu_out[14]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(14),
      I1 => alu_ctrl(0),
      I2 => data0(14),
      O => \alu_out[14]_INST_0_i_6_n_0\
    );
\alu_out[14]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[14]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[14]_INST_0_i_7_n_0\
    );
\alu_out[14]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_11_n_0\,
      I1 => b(4),
      I2 => \alu_out[22]_INST_0_i_12_n_0\,
      I3 => b(3),
      I4 => \alu_out[14]_INST_0_i_12_n_0\,
      O => \alu_out[14]_INST_0_i_8_n_0\
    );
\alu_out[14]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[14]_INST_0_i_13_n_0\,
      I1 => b(4),
      I2 => \alu_out[22]_INST_0_i_12_n_0\,
      I3 => b(3),
      I4 => \alu_out[14]_INST_0_i_12_n_0\,
      O => \alu_out[14]_INST_0_i_9_n_0\
    );
\alu_out[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[15]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[15]_INST_0_i_3_n_0\,
      O => alu_out(15)
    );
\alu_out[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[15]_INST_0_i_1_n_0\
    );
\alu_out[15]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_14_n_0\,
      I1 => b(3),
      I2 => \alu_out[31]_INST_0_i_13_n_0\,
      I3 => b(4),
      O => \alu_out[15]_INST_0_i_10_n_0\
    );
\alu_out[15]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(18),
      I1 => a(16),
      I2 => b(0),
      I3 => a(17),
      I4 => b(1),
      I5 => a(15),
      O => \alu_out[15]_INST_0_i_11_n_0\
    );
\alu_out[15]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => b(0),
      I1 => a(31),
      I2 => b(1),
      I3 => b(3),
      O => \alu_out[15]_INST_0_i_12_n_0\
    );
\alu_out[15]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[15]_INST_0_i_4_n_0\,
      I1 => \alu_out[15]_INST_0_i_5_n_0\,
      O => \alu_out[15]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[15]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[15]_INST_0_i_6_n_0\,
      I1 => \alu_out[15]_INST_0_i_7_n_0\,
      O => \alu_out[15]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[15]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      I2 => alu_ctrl(0),
      O => \alu_out[15]_INST_0_i_4_n_0\
    );
\alu_out[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_8_n_0\,
      I1 => \alu_out[15]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[19]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[15]_INST_0_i_9_n_0\,
      O => \alu_out[15]_INST_0_i_5_n_0\
    );
\alu_out[15]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(15),
      I1 => alu_ctrl(0),
      I2 => data0(15),
      O => \alu_out[15]_INST_0_i_6_n_0\
    );
\alu_out[15]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[15]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[15]_INST_0_i_7_n_0\
    );
\alu_out[15]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[23]_INST_0_i_10_n_0\,
      I3 => b(3),
      I4 => \alu_out[15]_INST_0_i_11_n_0\,
      O => \alu_out[15]_INST_0_i_8_n_0\
    );
\alu_out[15]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[15]_INST_0_i_12_n_0\,
      I1 => b(4),
      I2 => \alu_out[23]_INST_0_i_10_n_0\,
      I3 => b(3),
      I4 => \alu_out[15]_INST_0_i_11_n_0\,
      O => \alu_out[15]_INST_0_i_9_n_0\
    );
\alu_out[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[16]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[16]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[16]_INST_0_i_3_n_0\,
      O => alu_out(16)
    );
\alu_out[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[16]_INST_0_i_1_n_0\
    );
\alu_out[16]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_11_n_0\,
      I1 => b(3),
      I2 => \alu_out[28]_INST_0_i_10_n_0\,
      I3 => b(4),
      O => \alu_out[16]_INST_0_i_10_n_0\
    );
\alu_out[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(19),
      I1 => a(17),
      I2 => b(0),
      I3 => a(18),
      I4 => b(1),
      I5 => a(16),
      O => \alu_out[16]_INST_0_i_11_n_0\
    );
\alu_out[16]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[16]_INST_0_i_4_n_0\,
      I1 => \alu_out[16]_INST_0_i_5_n_0\,
      O => \alu_out[16]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[16]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[16]_INST_0_i_6_n_0\,
      I1 => \alu_out[16]_INST_0_i_7_n_0\,
      O => \alu_out[16]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[16]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => alu_ctrl(0),
      O => \alu_out[16]_INST_0_i_4_n_0\
    );
\alu_out[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F0FFF000"
    )
        port map (
      I0 => a(31),
      I1 => alu_ctrl(0),
      I2 => \alu_out[16]_INST_0_i_8_n_0\,
      I3 => b(2),
      I4 => \alu_out[16]_INST_0_i_9_n_0\,
      I5 => b(4),
      O => \alu_out[16]_INST_0_i_5_n_0\
    );
\alu_out[16]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(16),
      I1 => alu_ctrl(0),
      I2 => data0(16),
      O => \alu_out[16]_INST_0_i_6_n_0\
    );
\alu_out[16]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_12_n_0\,
      I1 => b(2),
      I2 => \alu_out[16]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[16]_INST_0_i_7_n_0\
    );
\alu_out[16]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => b(3),
      I2 => \alu_out[20]_INST_0_i_13_n_0\,
      O => \alu_out[16]_INST_0_i_8_n_0\
    );
\alu_out[16]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_9_n_0\,
      I1 => b(3),
      I2 => \alu_out[16]_INST_0_i_11_n_0\,
      O => \alu_out[16]_INST_0_i_9_n_0\
    );
\alu_out[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[17]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[17]_INST_0_i_3_n_0\,
      O => alu_out(17)
    );
\alu_out[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(17),
      I1 => b(17),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[17]_INST_0_i_1_n_0\
    );
\alu_out[17]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_12_n_0\,
      I1 => b(3),
      I2 => \alu_out[29]_INST_0_i_11_n_0\,
      I3 => b(4),
      O => \alu_out[17]_INST_0_i_10_n_0\
    );
\alu_out[17]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(20),
      I1 => a(18),
      I2 => b(0),
      I3 => a(19),
      I4 => b(1),
      I5 => a(17),
      O => \alu_out[17]_INST_0_i_11_n_0\
    );
\alu_out[17]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[17]_INST_0_i_4_n_0\,
      I1 => \alu_out[17]_INST_0_i_5_n_0\,
      O => \alu_out[17]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[17]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[17]_INST_0_i_6_n_0\,
      I1 => \alu_out[17]_INST_0_i_7_n_0\,
      O => \alu_out[17]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[17]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(17),
      I1 => a(17),
      I2 => alu_ctrl(0),
      O => \alu_out[17]_INST_0_i_4_n_0\
    );
\alu_out[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_9_n_0\,
      I1 => \alu_out[17]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[21]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \alu_out[17]_INST_0_i_9_n_0\,
      O => \alu_out[17]_INST_0_i_5_n_0\
    );
\alu_out[17]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(17),
      I1 => alu_ctrl(0),
      I2 => data0(17),
      O => \alu_out[17]_INST_0_i_6_n_0\
    );
\alu_out[17]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_12_n_0\,
      I1 => b(2),
      I2 => \alu_out[17]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[17]_INST_0_i_7_n_0\
    );
\alu_out[17]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[25]_INST_0_i_9_n_0\,
      I3 => b(3),
      I4 => \alu_out[17]_INST_0_i_11_n_0\,
      O => \alu_out[17]_INST_0_i_8_n_0\
    );
\alu_out[17]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[17]_INST_0_i_11_n_0\,
      I1 => b(3),
      I2 => \alu_out[25]_INST_0_i_9_n_0\,
      I3 => b(4),
      O => \alu_out[17]_INST_0_i_9_n_0\
    );
\alu_out[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[18]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[18]_INST_0_i_3_n_0\,
      O => alu_out(18)
    );
\alu_out[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[18]_INST_0_i_1_n_0\
    );
\alu_out[18]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_12_n_0\,
      I1 => b(3),
      I2 => \alu_out[30]_INST_0_i_11_n_0\,
      I3 => b(4),
      O => \alu_out[18]_INST_0_i_10_n_0\
    );
\alu_out[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(21),
      I1 => a(19),
      I2 => b(0),
      I3 => a(20),
      I4 => b(1),
      I5 => a(18),
      O => \alu_out[18]_INST_0_i_11_n_0\
    );
\alu_out[18]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[18]_INST_0_i_4_n_0\,
      I1 => \alu_out[18]_INST_0_i_5_n_0\,
      O => \alu_out[18]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[18]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[18]_INST_0_i_6_n_0\,
      I1 => \alu_out[18]_INST_0_i_7_n_0\,
      O => \alu_out[18]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[18]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => alu_ctrl(0),
      O => \alu_out[18]_INST_0_i_4_n_0\
    );
\alu_out[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_8_n_0\,
      I1 => \alu_out[18]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[22]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[18]_INST_0_i_9_n_0\,
      O => \alu_out[18]_INST_0_i_5_n_0\
    );
\alu_out[18]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(18),
      I1 => alu_ctrl(0),
      I2 => data0(18),
      O => \alu_out[18]_INST_0_i_6_n_0\
    );
\alu_out[18]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[18]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[18]_INST_0_i_7_n_0\
    );
\alu_out[18]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[26]_INST_0_i_10_n_0\,
      I3 => b(3),
      I4 => \alu_out[18]_INST_0_i_11_n_0\,
      O => \alu_out[18]_INST_0_i_8_n_0\
    );
\alu_out[18]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[18]_INST_0_i_11_n_0\,
      I1 => b(3),
      I2 => \alu_out[26]_INST_0_i_10_n_0\,
      I3 => b(4),
      O => \alu_out[18]_INST_0_i_9_n_0\
    );
\alu_out[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[19]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[19]_INST_0_i_3_n_0\,
      O => alu_out(19)
    );
\alu_out[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(19),
      I1 => b(19),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[19]_INST_0_i_1_n_0\
    );
\alu_out[19]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_10_n_0\,
      I1 => b(3),
      I2 => \alu_out[31]_INST_0_i_9_n_0\,
      I3 => b(4),
      O => \alu_out[19]_INST_0_i_10_n_0\
    );
\alu_out[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(22),
      I1 => a(20),
      I2 => b(0),
      I3 => a(21),
      I4 => b(1),
      I5 => a(19),
      O => \alu_out[19]_INST_0_i_11_n_0\
    );
\alu_out[19]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[19]_INST_0_i_4_n_0\,
      I1 => \alu_out[19]_INST_0_i_5_n_0\,
      O => \alu_out[19]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[19]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[19]_INST_0_i_6_n_0\,
      I1 => \alu_out[19]_INST_0_i_7_n_0\,
      O => \alu_out[19]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[19]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(19),
      I1 => a(19),
      I2 => alu_ctrl(0),
      O => \alu_out[19]_INST_0_i_4_n_0\
    );
\alu_out[19]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_7_n_0\,
      I1 => \alu_out[19]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[23]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \alu_out[19]_INST_0_i_9_n_0\,
      O => \alu_out[19]_INST_0_i_5_n_0\
    );
\alu_out[19]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(19),
      I1 => alu_ctrl(0),
      I2 => data0(19),
      O => \alu_out[19]_INST_0_i_6_n_0\
    );
\alu_out[19]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[19]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[19]_INST_0_i_7_n_0\
    );
\alu_out[19]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[27]_INST_0_i_10_n_0\,
      I3 => b(3),
      I4 => \alu_out[19]_INST_0_i_11_n_0\,
      O => \alu_out[19]_INST_0_i_8_n_0\
    );
\alu_out[19]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[19]_INST_0_i_11_n_0\,
      I1 => b(3),
      I2 => \alu_out[27]_INST_0_i_10_n_0\,
      I3 => b(4),
      O => \alu_out[19]_INST_0_i_9_n_0\
    );
\alu_out[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[1]_INST_0_i_1_n_0\,
      I1 => \alu_out[1]_INST_0_i_2_n_0\,
      O => alu_out(1),
      S => alu_ctrl(3)
    );
\alu_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[1]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[1]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[1]_INST_0_i_5_n_0\,
      O => \alu_out[1]_INST_0_i_1_n_0\
    );
\alu_out[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[1]_INST_0_i_2_n_0\
    );
\alu_out[1]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_6_n_0\,
      I1 => alu_ctrl(0),
      I2 => \alu_out[5]_INST_0_i_7_n_0\,
      I3 => b(2),
      I4 => \alu_out[1]_INST_0_i_6_n_0\,
      O => \alu_out[1]_INST_0_i_3_n_0\
    );
\alu_out[1]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      O => \alu_out[1]_INST_0_i_4_n_0\
    );
\alu_out[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => b(2),
      I1 => \alu_out[1]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => data1(1),
      I4 => alu_ctrl(0),
      I5 => data0(1),
      O => \alu_out[1]_INST_0_i_5_n_0\
    );
\alu_out[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_9_n_0\,
      I1 => \alu_out[17]_INST_0_i_11_n_0\,
      I2 => b(4),
      I3 => \alu_out[9]_INST_0_i_9_n_0\,
      I4 => b(3),
      I5 => \alu_out[1]_INST_0_i_8_n_0\,
      O => \alu_out[1]_INST_0_i_6_n_0\
    );
\alu_out[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004540"
    )
        port map (
      I0 => b(3),
      I1 => a(0),
      I2 => b(0),
      I3 => a(1),
      I4 => b(1),
      I5 => b(4),
      O => \alu_out[1]_INST_0_i_7_n_0\
    );
\alu_out[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(4),
      I1 => a(2),
      I2 => b(0),
      I3 => a(3),
      I4 => b(1),
      I5 => a(1),
      O => \alu_out[1]_INST_0_i_8_n_0\
    );
\alu_out[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[20]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[20]_INST_0_i_3_n_0\,
      O => alu_out(20)
    );
\alu_out[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[20]_INST_0_i_1_n_0\
    );
\alu_out[20]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(3),
      I1 => \alu_out[24]_INST_0_i_9_n_0\,
      I2 => b(4),
      O => \alu_out[20]_INST_0_i_10_n_0\
    );
\alu_out[20]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_13_n_0\,
      I1 => b(3),
      I2 => \alu_out[28]_INST_0_i_7_n_0\,
      I3 => b(4),
      O => \alu_out[20]_INST_0_i_11_n_0\
    );
\alu_out[20]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_14_n_0\,
      I1 => b(4),
      I2 => \alu_out[28]_INST_0_i_15_n_0\,
      I3 => b(3),
      I4 => \alu_out[28]_INST_0_i_16_n_0\,
      O => \alu_out[20]_INST_0_i_12_n_0\
    );
\alu_out[20]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(23),
      I1 => a(21),
      I2 => b(0),
      I3 => a(22),
      I4 => b(1),
      I5 => a(20),
      O => \alu_out[20]_INST_0_i_13_n_0\
    );
\alu_out[20]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => b(3),
      O => \alu_out[20]_INST_0_i_14_n_0\
    );
\alu_out[20]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[20]_INST_0_i_4_n_0\,
      I1 => \alu_out[20]_INST_0_i_5_n_0\,
      O => \alu_out[20]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[20]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[20]_INST_0_i_6_n_0\,
      I1 => \alu_out[20]_INST_0_i_7_n_0\,
      O => \alu_out[20]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[20]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => alu_ctrl(0),
      O => \alu_out[20]_INST_0_i_4_n_0\
    );
\alu_out[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[20]_INST_0_i_8_n_0\,
      I1 => \alu_out[20]_INST_0_i_9_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[20]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \alu_out[20]_INST_0_i_11_n_0\,
      O => \alu_out[20]_INST_0_i_5_n_0\
    );
\alu_out[20]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(20),
      I1 => alu_ctrl(0),
      I2 => data0(20),
      O => \alu_out[20]_INST_0_i_6_n_0\
    );
\alu_out[20]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => \alu_out[20]_INST_0_i_12_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[20]_INST_0_i_7_n_0\
    );
\alu_out[20]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(4),
      I1 => a(31),
      I2 => b(3),
      I3 => \alu_out[24]_INST_0_i_9_n_0\,
      O => \alu_out[20]_INST_0_i_8_n_0\
    );
\alu_out[20]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[28]_INST_0_i_7_n_0\,
      I3 => b(3),
      I4 => \alu_out[20]_INST_0_i_13_n_0\,
      O => \alu_out[20]_INST_0_i_9_n_0\
    );
\alu_out[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[21]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[21]_INST_0_i_3_n_0\,
      O => alu_out(21)
    );
\alu_out[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[21]_INST_0_i_1_n_0\
    );
\alu_out[21]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(3),
      I1 => \alu_out[25]_INST_0_i_9_n_0\,
      I2 => b(4),
      O => \alu_out[21]_INST_0_i_10_n_0\
    );
\alu_out[21]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_14_n_0\,
      I1 => b(3),
      I2 => \alu_out[21]_INST_0_i_15_n_0\,
      I3 => b(4),
      O => \alu_out[21]_INST_0_i_11_n_0\
    );
\alu_out[21]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_16_n_0\,
      I1 => b(4),
      I2 => \alu_out[29]_INST_0_i_16_n_0\,
      I3 => b(3),
      I4 => \alu_out[29]_INST_0_i_17_n_0\,
      O => \alu_out[21]_INST_0_i_12_n_0\
    );
\alu_out[21]_INST_0_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => a(30),
      I1 => b(0),
      I2 => a(31),
      I3 => b(1),
      I4 => a(29),
      O => \alu_out[21]_INST_0_i_13_n_0\
    );
\alu_out[21]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(24),
      I1 => a(22),
      I2 => b(0),
      I3 => a(23),
      I4 => b(1),
      I5 => a(21),
      O => \alu_out[21]_INST_0_i_14_n_0\
    );
\alu_out[21]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(30),
      I1 => b(0),
      I2 => a(31),
      I3 => b(1),
      I4 => a(29),
      O => \alu_out[21]_INST_0_i_15_n_0\
    );
\alu_out[21]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005404"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => b(0),
      I3 => a(0),
      I4 => b(3),
      O => \alu_out[21]_INST_0_i_16_n_0\
    );
\alu_out[21]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[21]_INST_0_i_4_n_0\,
      I1 => \alu_out[21]_INST_0_i_5_n_0\,
      O => \alu_out[21]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[21]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[21]_INST_0_i_6_n_0\,
      I1 => \alu_out[21]_INST_0_i_7_n_0\,
      O => \alu_out[21]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[21]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(21),
      I1 => a(21),
      I2 => alu_ctrl(0),
      O => \alu_out[21]_INST_0_i_4_n_0\
    );
\alu_out[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_8_n_0\,
      I1 => \alu_out[21]_INST_0_i_9_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[21]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \alu_out[21]_INST_0_i_11_n_0\,
      O => \alu_out[21]_INST_0_i_5_n_0\
    );
\alu_out[21]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(21),
      I1 => alu_ctrl(0),
      I2 => data0(21),
      O => \alu_out[21]_INST_0_i_6_n_0\
    );
\alu_out[21]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => \alu_out[21]_INST_0_i_12_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[21]_INST_0_i_7_n_0\
    );
\alu_out[21]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(4),
      I1 => a(31),
      I2 => b(3),
      I3 => \alu_out[25]_INST_0_i_9_n_0\,
      O => \alu_out[21]_INST_0_i_8_n_0\
    );
\alu_out[21]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[21]_INST_0_i_13_n_0\,
      I3 => b(3),
      I4 => \alu_out[21]_INST_0_i_14_n_0\,
      O => \alu_out[21]_INST_0_i_9_n_0\
    );
\alu_out[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[22]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[22]_INST_0_i_3_n_0\,
      O => alu_out(22)
    );
\alu_out[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[22]_INST_0_i_1_n_0\
    );
\alu_out[22]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_14_n_0\,
      I1 => b(4),
      I2 => \alu_out[30]_INST_0_i_16_n_0\,
      I3 => b(3),
      I4 => \alu_out[30]_INST_0_i_17_n_0\,
      O => \alu_out[22]_INST_0_i_10_n_0\
    );
\alu_out[22]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(0),
      I1 => a(31),
      I2 => b(1),
      I3 => a(30),
      O => \alu_out[22]_INST_0_i_11_n_0\
    );
\alu_out[22]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(25),
      I1 => a(23),
      I2 => b(0),
      I3 => a(24),
      I4 => b(1),
      I5 => a(22),
      O => \alu_out[22]_INST_0_i_12_n_0\
    );
\alu_out[22]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a(31),
      I1 => b(0),
      I2 => a(30),
      I3 => b(1),
      O => \alu_out[22]_INST_0_i_13_n_0\
    );
\alu_out[22]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => a(2),
      I1 => b(1),
      I2 => a(0),
      I3 => b(0),
      I4 => a(1),
      I5 => b(3),
      O => \alu_out[22]_INST_0_i_14_n_0\
    );
\alu_out[22]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[22]_INST_0_i_4_n_0\,
      I1 => \alu_out[22]_INST_0_i_5_n_0\,
      O => \alu_out[22]_INST_0_i_2_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[22]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[22]_INST_0_i_6_n_0\,
      I1 => \alu_out[22]_INST_0_i_7_n_0\,
      O => \alu_out[22]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[22]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => alu_ctrl(0),
      O => \alu_out[22]_INST_0_i_4_n_0\
    );
\alu_out[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_7_n_0\,
      I1 => \alu_out[22]_INST_0_i_8_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[26]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \alu_out[22]_INST_0_i_9_n_0\,
      O => \alu_out[22]_INST_0_i_5_n_0\
    );
\alu_out[22]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(22),
      I1 => alu_ctrl(0),
      I2 => data0(22),
      O => \alu_out[22]_INST_0_i_6_n_0\
    );
\alu_out[22]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[22]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[22]_INST_0_i_7_n_0\
    );
\alu_out[22]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => \alu_out[22]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[22]_INST_0_i_12_n_0\,
      O => \alu_out[22]_INST_0_i_8_n_0\
    );
\alu_out[22]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_12_n_0\,
      I1 => b(3),
      I2 => \alu_out[22]_INST_0_i_13_n_0\,
      I3 => b(4),
      O => \alu_out[22]_INST_0_i_9_n_0\
    );
\alu_out[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[23]_INST_0_i_1_n_0\,
      I1 => \alu_out[23]_INST_0_i_2_n_0\,
      O => alu_out(23),
      S => alu_ctrl(3)
    );
\alu_out[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_3_n_0\,
      I1 => \alu_out[23]_INST_0_i_4_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[23]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[23]_INST_0_i_6_n_0\,
      O => \alu_out[23]_INST_0_i_1_n_0\
    );
\alu_out[23]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(26),
      I1 => a(24),
      I2 => b(0),
      I3 => a(25),
      I4 => b(1),
      I5 => a(23),
      O => \alu_out[23]_INST_0_i_10_n_0\
    );
\alu_out[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(23),
      I1 => b(23),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[23]_INST_0_i_2_n_0\
    );
\alu_out[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_7_n_0\,
      I1 => \alu_out[23]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[27]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \alu_out[23]_INST_0_i_8_n_0\,
      O => \alu_out[23]_INST_0_i_3_n_0\
    );
\alu_out[23]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(23),
      I1 => a(23),
      I2 => alu_ctrl(0),
      O => \alu_out[23]_INST_0_i_4_n_0\
    );
\alu_out[23]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[23]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[23]_INST_0_i_5_n_0\
    );
\alu_out[23]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(23),
      I1 => alu_ctrl(0),
      I2 => data0(23),
      O => \alu_out[23]_INST_0_i_6_n_0\
    );
\alu_out[23]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(4),
      I1 => a(31),
      I2 => b(3),
      I3 => \alu_out[23]_INST_0_i_10_n_0\,
      O => \alu_out[23]_INST_0_i_7_n_0\
    );
\alu_out[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022222E22"
    )
        port map (
      I0 => \alu_out[23]_INST_0_i_10_n_0\,
      I1 => b(3),
      I2 => b(0),
      I3 => a(31),
      I4 => b(1),
      I5 => b(4),
      O => \alu_out[23]_INST_0_i_8_n_0\
    );
\alu_out[23]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_13_n_0\,
      I1 => b(4),
      I2 => \alu_out[31]_INST_0_i_14_n_0\,
      I3 => b(3),
      I4 => \alu_out[31]_INST_0_i_15_n_0\,
      O => \alu_out[23]_INST_0_i_9_n_0\
    );
\alu_out[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[24]_INST_0_i_1_n_0\,
      I1 => \alu_out[24]_INST_0_i_2_n_0\,
      O => alu_out(24),
      S => alu_ctrl(3)
    );
\alu_out[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(2),
      I2 => \alu_out[24]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(1),
      I4 => \alu_out[24]_INST_0_i_5_n_0\,
      O => \alu_out[24]_INST_0_i_1_n_0\
    );
\alu_out[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[24]_INST_0_i_2_n_0\
    );
\alu_out[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFAFA0C0C0C0C0"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_6_n_0\,
      I1 => \alu_out[24]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => b(24),
      I4 => a(24),
      I5 => alu_ctrl(0),
      O => \alu_out[24]_INST_0_i_3_n_0\
    );
\alu_out[24]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[24]_INST_0_i_8_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[24]_INST_0_i_4_n_0\
    );
\alu_out[24]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(24),
      I1 => alu_ctrl(0),
      I2 => data0(24),
      O => \alu_out[24]_INST_0_i_5_n_0\
    );
\alu_out[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => b(4),
      I3 => a(31),
      I4 => b(3),
      I5 => \alu_out[24]_INST_0_i_9_n_0\,
      O => \alu_out[24]_INST_0_i_6_n_0\
    );
\alu_out[24]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => b(3),
      I3 => \alu_out[24]_INST_0_i_9_n_0\,
      I4 => b(4),
      O => \alu_out[24]_INST_0_i_7_n_0\
    );
\alu_out[24]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_10_n_0\,
      I1 => b(4),
      I2 => \alu_out[28]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[28]_INST_0_i_12_n_0\,
      O => \alu_out[24]_INST_0_i_8_n_0\
    );
\alu_out[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(27),
      I1 => a(25),
      I2 => b(0),
      I3 => a(26),
      I4 => b(1),
      I5 => a(24),
      O => \alu_out[24]_INST_0_i_9_n_0\
    );
\alu_out[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[25]_INST_0_i_1_n_0\,
      I1 => \alu_out[25]_INST_0_i_2_n_0\,
      O => alu_out(25),
      S => alu_ctrl(3)
    );
\alu_out[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(2),
      I2 => \alu_out[25]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(1),
      I4 => \alu_out[25]_INST_0_i_5_n_0\,
      O => \alu_out[25]_INST_0_i_1_n_0\
    );
\alu_out[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(25),
      I1 => b(25),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[25]_INST_0_i_2_n_0\
    );
\alu_out[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFAFA0C0C0C0C0"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_6_n_0\,
      I1 => \alu_out[25]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => b(25),
      I4 => a(25),
      I5 => alu_ctrl(0),
      O => \alu_out[25]_INST_0_i_3_n_0\
    );
\alu_out[25]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[25]_INST_0_i_8_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[25]_INST_0_i_4_n_0\
    );
\alu_out[25]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(25),
      I1 => alu_ctrl(0),
      I2 => data0(25),
      O => \alu_out[25]_INST_0_i_5_n_0\
    );
\alu_out[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB0BFB08F808"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => b(4),
      I3 => a(31),
      I4 => b(3),
      I5 => \alu_out[25]_INST_0_i_9_n_0\,
      O => \alu_out[25]_INST_0_i_6_n_0\
    );
\alu_out[25]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008B88"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => b(3),
      I3 => \alu_out[25]_INST_0_i_9_n_0\,
      I4 => b(4),
      O => \alu_out[25]_INST_0_i_7_n_0\
    );
\alu_out[25]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_11_n_0\,
      I1 => b(4),
      I2 => \alu_out[29]_INST_0_i_12_n_0\,
      I3 => b(3),
      I4 => \alu_out[29]_INST_0_i_13_n_0\,
      O => \alu_out[25]_INST_0_i_8_n_0\
    );
\alu_out[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(28),
      I1 => a(26),
      I2 => b(0),
      I3 => a(27),
      I4 => b(1),
      I5 => a(25),
      O => \alu_out[25]_INST_0_i_9_n_0\
    );
\alu_out[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[26]_INST_0_i_1_n_0\,
      I1 => \alu_out[26]_INST_0_i_2_n_0\,
      O => alu_out(26),
      S => alu_ctrl(3)
    );
\alu_out[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_3_n_0\,
      I1 => \alu_out[26]_INST_0_i_4_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[26]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[26]_INST_0_i_6_n_0\,
      O => \alu_out[26]_INST_0_i_1_n_0\
    );
\alu_out[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(29),
      I1 => a(27),
      I2 => b(0),
      I3 => a(28),
      I4 => b(1),
      I5 => a(26),
      O => \alu_out[26]_INST_0_i_10_n_0\
    );
\alu_out[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[26]_INST_0_i_2_n_0\
    );
\alu_out[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_7_n_0\,
      I1 => \alu_out[26]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[30]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \alu_out[26]_INST_0_i_8_n_0\,
      O => \alu_out[26]_INST_0_i_3_n_0\
    );
\alu_out[26]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => alu_ctrl(0),
      O => \alu_out[26]_INST_0_i_4_n_0\
    );
\alu_out[26]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[26]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[26]_INST_0_i_5_n_0\
    );
\alu_out[26]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(26),
      I1 => alu_ctrl(0),
      I2 => data0(26),
      O => \alu_out[26]_INST_0_i_6_n_0\
    );
\alu_out[26]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(4),
      I1 => a(31),
      I2 => b(3),
      I3 => \alu_out[26]_INST_0_i_10_n_0\,
      O => \alu_out[26]_INST_0_i_7_n_0\
    );
\alu_out[26]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(3),
      I1 => \alu_out[26]_INST_0_i_10_n_0\,
      I2 => b(4),
      O => \alu_out[26]_INST_0_i_8_n_0\
    );
\alu_out[26]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_11_n_0\,
      I1 => b(4),
      I2 => \alu_out[30]_INST_0_i_12_n_0\,
      I3 => b(3),
      I4 => \alu_out[30]_INST_0_i_13_n_0\,
      O => \alu_out[26]_INST_0_i_9_n_0\
    );
\alu_out[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[27]_INST_0_i_1_n_0\,
      I1 => \alu_out[27]_INST_0_i_2_n_0\,
      O => alu_out(27),
      S => alu_ctrl(3)
    );
\alu_out[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_3_n_0\,
      I1 => \alu_out[27]_INST_0_i_4_n_0\,
      I2 => alu_ctrl(2),
      I3 => \alu_out[27]_INST_0_i_5_n_0\,
      I4 => alu_ctrl(1),
      I5 => \alu_out[27]_INST_0_i_6_n_0\,
      O => \alu_out[27]_INST_0_i_1_n_0\
    );
\alu_out[27]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(30),
      I1 => a(28),
      I2 => b(0),
      I3 => a(29),
      I4 => b(1),
      I5 => a(27),
      O => \alu_out[27]_INST_0_i_10_n_0\
    );
\alu_out[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[27]_INST_0_i_2_n_0\
    );
\alu_out[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[27]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[31]_INST_0_i_6_n_0\,
      I4 => b(2),
      I5 => \alu_out[27]_INST_0_i_8_n_0\,
      O => \alu_out[27]_INST_0_i_3_n_0\
    );
\alu_out[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => b(27),
      I1 => a(27),
      I2 => alu_ctrl(0),
      O => \alu_out[27]_INST_0_i_4_n_0\
    );
\alu_out[27]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => \alu_out[27]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[27]_INST_0_i_5_n_0\
    );
\alu_out[27]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(27),
      I1 => alu_ctrl(0),
      I2 => data0(27),
      O => \alu_out[27]_INST_0_i_6_n_0\
    );
\alu_out[27]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => b(4),
      I1 => a(31),
      I2 => b(3),
      I3 => \alu_out[27]_INST_0_i_10_n_0\,
      O => \alu_out[27]_INST_0_i_7_n_0\
    );
\alu_out[27]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(3),
      I1 => \alu_out[27]_INST_0_i_10_n_0\,
      I2 => b(4),
      O => \alu_out[27]_INST_0_i_8_n_0\
    );
\alu_out[27]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_9_n_0\,
      I1 => b(4),
      I2 => \alu_out[31]_INST_0_i_10_n_0\,
      I3 => b(3),
      I4 => \alu_out[31]_INST_0_i_11_n_0\,
      O => \alu_out[27]_INST_0_i_9_n_0\
    );
\alu_out[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[28]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[28]_INST_0_i_3_n_0\,
      O => alu_out(28)
    );
\alu_out[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[28]_INST_0_i_1_n_0\
    );
\alu_out[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(1),
      I1 => a(3),
      I2 => b(0),
      I3 => a(2),
      I4 => b(1),
      I5 => a(4),
      O => \alu_out[28]_INST_0_i_10_n_0\
    );
\alu_out[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(9),
      I1 => a(11),
      I2 => b(0),
      I3 => a(10),
      I4 => b(1),
      I5 => a(12),
      O => \alu_out[28]_INST_0_i_11_n_0\
    );
\alu_out[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(17),
      I1 => a(19),
      I2 => b(0),
      I3 => a(18),
      I4 => b(1),
      I5 => a(20),
      O => \alu_out[28]_INST_0_i_12_n_0\
    );
\alu_out[28]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(25),
      I1 => a(27),
      I2 => b(0),
      I3 => a(26),
      I4 => b(1),
      I5 => a(28),
      O => \alu_out[28]_INST_0_i_13_n_0\
    );
\alu_out[28]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(1),
      I1 => a(0),
      I2 => b(0),
      O => \alu_out[28]_INST_0_i_14_n_0\
    );
\alu_out[28]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(5),
      I1 => a(7),
      I2 => b(0),
      I3 => a(6),
      I4 => b(1),
      I5 => a(8),
      O => \alu_out[28]_INST_0_i_15_n_0\
    );
\alu_out[28]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(13),
      I1 => a(15),
      I2 => b(0),
      I3 => a(14),
      I4 => b(1),
      I5 => a(16),
      O => \alu_out[28]_INST_0_i_16_n_0\
    );
\alu_out[28]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(21),
      I1 => a(23),
      I2 => b(0),
      I3 => a(22),
      I4 => b(1),
      I5 => a(24),
      O => \alu_out[28]_INST_0_i_17_n_0\
    );
\alu_out[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => b(28),
      I3 => a(28),
      I4 => alu_ctrl(0),
      O => \alu_out[28]_INST_0_i_2_n_0\
    );
\alu_out[28]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[28]_INST_0_i_5_n_0\,
      I1 => \alu_out[28]_INST_0_i_6_n_0\,
      O => \alu_out[28]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888F80"
    )
        port map (
      I0 => a(31),
      I1 => alu_ctrl(0),
      I2 => b(4),
      I3 => \alu_out[28]_INST_0_i_7_n_0\,
      I4 => b(3),
      I5 => b(2),
      O => \alu_out[28]_INST_0_i_4_n_0\
    );
\alu_out[28]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(28),
      I1 => alu_ctrl(0),
      I2 => data0(28),
      O => \alu_out[28]_INST_0_i_5_n_0\
    );
\alu_out[28]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => \alu_out[28]_INST_0_i_9_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[28]_INST_0_i_6_n_0\
    );
\alu_out[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => a(29),
      I2 => b(0),
      I3 => a(30),
      I4 => b(1),
      I5 => a(28),
      O => \alu_out[28]_INST_0_i_7_n_0\
    );
\alu_out[28]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_10_n_0\,
      I1 => \alu_out[28]_INST_0_i_11_n_0\,
      I2 => b(4),
      I3 => \alu_out[28]_INST_0_i_12_n_0\,
      I4 => b(3),
      I5 => \alu_out[28]_INST_0_i_13_n_0\,
      O => \alu_out[28]_INST_0_i_8_n_0\
    );
\alu_out[28]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_14_n_0\,
      I1 => \alu_out[28]_INST_0_i_15_n_0\,
      I2 => b(4),
      I3 => \alu_out[28]_INST_0_i_16_n_0\,
      I4 => b(3),
      I5 => \alu_out[28]_INST_0_i_17_n_0\,
      O => \alu_out[28]_INST_0_i_9_n_0\
    );
\alu_out[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[29]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[29]_INST_0_i_3_n_0\,
      O => alu_out(29)
    );
\alu_out[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(29),
      I1 => b(29),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[29]_INST_0_i_1_n_0\
    );
\alu_out[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_15_n_0\,
      I1 => \alu_out[29]_INST_0_i_16_n_0\,
      I2 => b(4),
      I3 => \alu_out[29]_INST_0_i_17_n_0\,
      I4 => b(3),
      I5 => \alu_out[29]_INST_0_i_18_n_0\,
      O => \alu_out[29]_INST_0_i_10_n_0\
    );
\alu_out[29]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(2),
      I1 => a(4),
      I2 => b(0),
      I3 => a(3),
      I4 => b(1),
      I5 => a(5),
      O => \alu_out[29]_INST_0_i_11_n_0\
    );
\alu_out[29]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(10),
      I1 => a(12),
      I2 => b(0),
      I3 => a(11),
      I4 => b(1),
      I5 => a(13),
      O => \alu_out[29]_INST_0_i_12_n_0\
    );
\alu_out[29]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(18),
      I1 => a(20),
      I2 => b(0),
      I3 => a(19),
      I4 => b(1),
      I5 => a(21),
      O => \alu_out[29]_INST_0_i_13_n_0\
    );
\alu_out[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(26),
      I1 => a(28),
      I2 => b(0),
      I3 => a(27),
      I4 => b(1),
      I5 => a(29),
      O => \alu_out[29]_INST_0_i_14_n_0\
    );
\alu_out[29]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
      O => \alu_out[29]_INST_0_i_15_n_0\
    );
\alu_out[29]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(6),
      I1 => a(8),
      I2 => b(0),
      I3 => a(7),
      I4 => b(1),
      I5 => a(9),
      O => \alu_out[29]_INST_0_i_16_n_0\
    );
\alu_out[29]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(14),
      I1 => a(16),
      I2 => b(0),
      I3 => a(15),
      I4 => b(1),
      I5 => a(17),
      O => \alu_out[29]_INST_0_i_17_n_0\
    );
\alu_out[29]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(22),
      I1 => a(24),
      I2 => b(0),
      I3 => a(23),
      I4 => b(1),
      I5 => a(25),
      O => \alu_out[29]_INST_0_i_18_n_0\
    );
\alu_out[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => b(29),
      I3 => a(29),
      I4 => alu_ctrl(0),
      O => \alu_out[29]_INST_0_i_2_n_0\
    );
\alu_out[29]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[29]_INST_0_i_5_n_0\,
      I1 => \alu_out[29]_INST_0_i_6_n_0\,
      O => \alu_out[29]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0CFA0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[29]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => b(4),
      I4 => \alu_out[29]_INST_0_i_8_n_0\,
      I5 => b(2),
      O => \alu_out[29]_INST_0_i_4_n_0\
    );
\alu_out[29]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(29),
      I1 => alu_ctrl(0),
      I2 => data0(29),
      O => \alu_out[29]_INST_0_i_5_n_0\
    );
\alu_out[29]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[29]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[29]_INST_0_i_6_n_0\
    );
\alu_out[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00EF45FF00EA40"
    )
        port map (
      I0 => b(3),
      I1 => a(30),
      I2 => b(0),
      I3 => a(31),
      I4 => b(1),
      I5 => a(29),
      O => \alu_out[29]_INST_0_i_7_n_0\
    );
\alu_out[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => a(29),
      I1 => b(1),
      I2 => a(31),
      I3 => b(0),
      I4 => a(30),
      I5 => b(3),
      O => \alu_out[29]_INST_0_i_8_n_0\
    );
\alu_out[29]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_11_n_0\,
      I1 => \alu_out[29]_INST_0_i_12_n_0\,
      I2 => b(4),
      I3 => \alu_out[29]_INST_0_i_13_n_0\,
      I4 => b(3),
      I5 => \alu_out[29]_INST_0_i_14_n_0\,
      O => \alu_out[29]_INST_0_i_9_n_0\
    );
\alu_out[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[2]_INST_0_i_1_n_0\,
      I1 => \alu_out[2]_INST_0_i_2_n_0\,
      O => alu_out(2),
      S => alu_ctrl(3)
    );
\alu_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[2]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[2]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[2]_INST_0_i_5_n_0\,
      O => \alu_out[2]_INST_0_i_1_n_0\
    );
\alu_out[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[2]_INST_0_i_2_n_0\
    );
\alu_out[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_6_n_0\,
      I1 => alu_ctrl(0),
      I2 => \alu_out[6]_INST_0_i_7_n_0\,
      I3 => b(2),
      I4 => \alu_out[2]_INST_0_i_6_n_0\,
      O => \alu_out[2]_INST_0_i_3_n_0\
    );
\alu_out[2]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      O => \alu_out[2]_INST_0_i_4_n_0\
    );
\alu_out[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => b(2),
      I1 => \alu_out[2]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => data1(2),
      I4 => alu_ctrl(0),
      I5 => data0(2),
      O => \alu_out[2]_INST_0_i_5_n_0\
    );
\alu_out[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[26]_INST_0_i_10_n_0\,
      I1 => \alu_out[18]_INST_0_i_11_n_0\,
      I2 => b(4),
      I3 => \alu_out[10]_INST_0_i_9_n_0\,
      I4 => b(3),
      I5 => \alu_out[2]_INST_0_i_8_n_0\,
      O => \alu_out[2]_INST_0_i_6_n_0\
    );
\alu_out[2]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_14_n_0\,
      I1 => b(4),
      O => \alu_out[2]_INST_0_i_7_n_0\
    );
\alu_out[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(5),
      I1 => a(3),
      I2 => b(0),
      I3 => a(4),
      I4 => b(1),
      I5 => a(2),
      O => \alu_out[2]_INST_0_i_8_n_0\
    );
\alu_out[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_1_n_0\,
      I1 => alu_ctrl(3),
      I2 => \alu_out[30]_INST_0_i_2_n_0\,
      I3 => alu_ctrl(2),
      I4 => \alu_out[30]_INST_0_i_3_n_0\,
      O => alu_out(30)
    );
\alu_out[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[30]_INST_0_i_1_n_0\
    );
\alu_out[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_15_n_0\,
      I1 => \alu_out[30]_INST_0_i_16_n_0\,
      I2 => b(4),
      I3 => \alu_out[30]_INST_0_i_17_n_0\,
      I4 => b(3),
      I5 => \alu_out[30]_INST_0_i_18_n_0\,
      O => \alu_out[30]_INST_0_i_10_n_0\
    );
\alu_out[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => b(0),
      I3 => a(4),
      I4 => b(1),
      I5 => a(6),
      O => \alu_out[30]_INST_0_i_11_n_0\
    );
\alu_out[30]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(11),
      I1 => a(13),
      I2 => b(0),
      I3 => a(12),
      I4 => b(1),
      I5 => a(14),
      O => \alu_out[30]_INST_0_i_12_n_0\
    );
\alu_out[30]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(19),
      I1 => a(21),
      I2 => b(0),
      I3 => a(20),
      I4 => b(1),
      I5 => a(22),
      O => \alu_out[30]_INST_0_i_13_n_0\
    );
\alu_out[30]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(27),
      I1 => a(29),
      I2 => b(0),
      I3 => a(28),
      I4 => b(1),
      I5 => a(30),
      O => \alu_out[30]_INST_0_i_14_n_0\
    );
\alu_out[30]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(1),
      I1 => b(0),
      I2 => a(0),
      I3 => b(1),
      I4 => a(2),
      O => \alu_out[30]_INST_0_i_15_n_0\
    );
\alu_out[30]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(7),
      I1 => a(9),
      I2 => b(0),
      I3 => a(8),
      I4 => b(1),
      I5 => a(10),
      O => \alu_out[30]_INST_0_i_16_n_0\
    );
\alu_out[30]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(15),
      I1 => a(17),
      I2 => b(0),
      I3 => a(16),
      I4 => b(1),
      I5 => a(18),
      O => \alu_out[30]_INST_0_i_17_n_0\
    );
\alu_out[30]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(23),
      I1 => a(25),
      I2 => b(0),
      I3 => a(24),
      I4 => b(1),
      I5 => a(26),
      O => \alu_out[30]_INST_0_i_18_n_0\
    );
\alu_out[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB88888"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_4_n_0\,
      I1 => alu_ctrl(1),
      I2 => b(30),
      I3 => a(30),
      I4 => alu_ctrl(0),
      O => \alu_out[30]_INST_0_i_2_n_0\
    );
\alu_out[30]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[30]_INST_0_i_5_n_0\,
      I1 => \alu_out[30]_INST_0_i_6_n_0\,
      O => \alu_out[30]_INST_0_i_3_n_0\,
      S => alu_ctrl(1)
    );
\alu_out[30]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[30]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[30]_INST_0_i_8_n_0\,
      I4 => b(2),
      O => \alu_out[30]_INST_0_i_4_n_0\
    );
\alu_out[30]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(30),
      I1 => alu_ctrl(0),
      I2 => data0(30),
      O => \alu_out[30]_INST_0_i_5_n_0\
    );
\alu_out[30]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_9_n_0\,
      I1 => b(2),
      I2 => \alu_out[30]_INST_0_i_10_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[30]_INST_0_i_6_n_0\
    );
\alu_out[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => b(4),
      I1 => b(3),
      I2 => b(0),
      I3 => a(31),
      I4 => b(1),
      I5 => a(30),
      O => \alu_out[30]_INST_0_i_7_n_0\
    );
\alu_out[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004540"
    )
        port map (
      I0 => b(3),
      I1 => a(31),
      I2 => b(0),
      I3 => a(30),
      I4 => b(1),
      I5 => b(4),
      O => \alu_out[30]_INST_0_i_8_n_0\
    );
\alu_out[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[30]_INST_0_i_11_n_0\,
      I1 => \alu_out[30]_INST_0_i_12_n_0\,
      I2 => b(4),
      I3 => \alu_out[30]_INST_0_i_13_n_0\,
      I4 => b(3),
      I5 => \alu_out[30]_INST_0_i_14_n_0\,
      O => \alu_out[30]_INST_0_i_9_n_0\
    );
\alu_out[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[31]_INST_0_i_1_n_0\,
      I1 => \alu_out[31]_INST_0_i_2_n_0\,
      O => alu_out(31),
      S => alu_ctrl(3)
    );
\alu_out[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(2),
      I2 => \alu_out[31]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(1),
      I4 => \alu_out[31]_INST_0_i_5_n_0\,
      O => \alu_out[31]_INST_0_i_1_n_0\
    );
\alu_out[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(12),
      I1 => a(14),
      I2 => b(0),
      I3 => a(13),
      I4 => b(1),
      I5 => a(15),
      O => \alu_out[31]_INST_0_i_10_n_0\
    );
\alu_out[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(20),
      I1 => a(22),
      I2 => b(0),
      I3 => a(21),
      I4 => b(1),
      I5 => a(23),
      O => \alu_out[31]_INST_0_i_11_n_0\
    );
\alu_out[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(28),
      I1 => a(30),
      I2 => b(0),
      I3 => a(29),
      I4 => b(1),
      I5 => a(31),
      O => \alu_out[31]_INST_0_i_12_n_0\
    );
\alu_out[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(0),
      I1 => a(2),
      I2 => b(0),
      I3 => a(1),
      I4 => b(1),
      I5 => a(3),
      O => \alu_out[31]_INST_0_i_13_n_0\
    );
\alu_out[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(8),
      I1 => a(10),
      I2 => b(0),
      I3 => a(9),
      I4 => b(1),
      I5 => a(11),
      O => \alu_out[31]_INST_0_i_14_n_0\
    );
\alu_out[31]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(16),
      I1 => a(18),
      I2 => b(0),
      I3 => a(17),
      I4 => b(1),
      I5 => a(19),
      O => \alu_out[31]_INST_0_i_15_n_0\
    );
\alu_out[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(24),
      I1 => a(26),
      I2 => b(0),
      I3 => a(25),
      I4 => b(1),
      I5 => a(27),
      O => \alu_out[31]_INST_0_i_16_n_0\
    );
\alu_out[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[31]_INST_0_i_2_n_0\
    );
\alu_out[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0F0020202020"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_6_n_0\,
      I1 => b(2),
      I2 => alu_ctrl(1),
      I3 => b(31),
      I4 => a(31),
      I5 => alu_ctrl(0),
      O => \alu_out[31]_INST_0_i_3_n_0\
    );
\alu_out[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => \alu_out[31]_INST_0_i_8_n_0\,
      I3 => alu_ctrl(0),
      O => \alu_out[31]_INST_0_i_4_n_0\
    );
\alu_out[31]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(31),
      I1 => alu_ctrl(0),
      I2 => data0(31),
      O => \alu_out[31]_INST_0_i_5_n_0\
    );
\alu_out[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(3),
      I1 => b(1),
      I2 => a(31),
      I3 => b(0),
      I4 => b(4),
      O => \alu_out[31]_INST_0_i_6_n_0\
    );
\alu_out[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_9_n_0\,
      I1 => \alu_out[31]_INST_0_i_10_n_0\,
      I2 => b(4),
      I3 => \alu_out[31]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[31]_INST_0_i_12_n_0\,
      O => \alu_out[31]_INST_0_i_7_n_0\
    );
\alu_out[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[31]_INST_0_i_13_n_0\,
      I1 => \alu_out[31]_INST_0_i_14_n_0\,
      I2 => b(4),
      I3 => \alu_out[31]_INST_0_i_15_n_0\,
      I4 => b(3),
      I5 => \alu_out[31]_INST_0_i_16_n_0\,
      O => \alu_out[31]_INST_0_i_8_n_0\
    );
\alu_out[31]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(4),
      I1 => a(6),
      I2 => b(0),
      I3 => a(5),
      I4 => b(1),
      I5 => a(7),
      O => \alu_out[31]_INST_0_i_9_n_0\
    );
\alu_out[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[3]_INST_0_i_1_n_0\,
      I1 => \alu_out[3]_INST_0_i_2_n_0\,
      O => alu_out(3),
      S => alu_ctrl(3)
    );
\alu_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[3]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[3]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[3]_INST_0_i_5_n_0\,
      O => \alu_out[3]_INST_0_i_1_n_0\
    );
\alu_out[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[3]_INST_0_i_2_n_0\
    );
\alu_out[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_6_n_0\,
      I1 => alu_ctrl(0),
      I2 => \alu_out[7]_INST_0_i_7_n_0\,
      I3 => b(2),
      I4 => \alu_out[3]_INST_0_i_6_n_0\,
      O => \alu_out[3]_INST_0_i_3_n_0\
    );
\alu_out[3]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      O => \alu_out[3]_INST_0_i_4_n_0\
    );
\alu_out[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => b(2),
      I1 => \alu_out[3]_INST_0_i_7_n_0\,
      I2 => alu_ctrl(1),
      I3 => data1(3),
      I4 => alu_ctrl(0),
      I5 => data0(3),
      O => \alu_out[3]_INST_0_i_5_n_0\
    );
\alu_out[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[27]_INST_0_i_10_n_0\,
      I1 => \alu_out[19]_INST_0_i_11_n_0\,
      I2 => b(4),
      I3 => \alu_out[11]_INST_0_i_9_n_0\,
      I4 => b(3),
      I5 => \alu_out[3]_INST_0_i_8_n_0\,
      O => \alu_out[3]_INST_0_i_6_n_0\
    );
\alu_out[3]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(3),
      I1 => \alu_out[31]_INST_0_i_13_n_0\,
      I2 => b(4),
      O => \alu_out[3]_INST_0_i_7_n_0\
    );
\alu_out[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(6),
      I1 => a(4),
      I2 => b(0),
      I3 => a(5),
      I4 => b(1),
      I5 => a(3),
      O => \alu_out[3]_INST_0_i_8_n_0\
    );
\alu_out[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[4]_INST_0_i_1_n_0\,
      I1 => \alu_out[4]_INST_0_i_2_n_0\,
      O => alu_out(4),
      S => alu_ctrl(3)
    );
\alu_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[4]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[4]_INST_0_i_5_n_0\,
      O => \alu_out[4]_INST_0_i_1_n_0\
    );
\alu_out[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A8E"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[4]_INST_0_i_2_n_0\
    );
\alu_out[4]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_6_n_0\,
      I1 => alu_ctrl(0),
      I2 => \alu_out[8]_INST_0_i_7_n_0\,
      I3 => b(2),
      I4 => \alu_out[4]_INST_0_i_6_n_0\,
      O => \alu_out[4]_INST_0_i_3_n_0\
    );
\alu_out[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      O => \alu_out[4]_INST_0_i_4_n_0\
    );
\alu_out[4]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[4]_INST_0_i_7_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(4),
      I3 => alu_ctrl(0),
      I4 => data0(4),
      O => \alu_out[4]_INST_0_i_5_n_0\
    );
\alu_out[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_7_n_0\,
      I1 => \alu_out[20]_INST_0_i_13_n_0\,
      I2 => b(4),
      I3 => \alu_out[12]_INST_0_i_13_n_0\,
      I4 => b(3),
      I5 => \alu_out[4]_INST_0_i_8_n_0\,
      O => \alu_out[4]_INST_0_i_6_n_0\
    );
\alu_out[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040004"
    )
        port map (
      I0 => b(4),
      I1 => \alu_out[28]_INST_0_i_10_n_0\,
      I2 => b(3),
      I3 => b(2),
      I4 => \alu_out[4]_INST_0_i_9_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[4]_INST_0_i_7_n_0\
    );
\alu_out[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(7),
      I1 => a(5),
      I2 => b(0),
      I3 => a(6),
      I4 => b(1),
      I5 => a(4),
      O => \alu_out[4]_INST_0_i_8_n_0\
    );
\alu_out[4]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(3),
      I1 => b(1),
      I2 => a(0),
      I3 => b(0),
      I4 => b(4),
      O => \alu_out[4]_INST_0_i_9_n_0\
    );
\alu_out[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[5]_INST_0_i_1_n_0\,
      I1 => \alu_out[5]_INST_0_i_2_n_0\,
      O => alu_out(5),
      S => alu_ctrl(3)
    );
\alu_out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[5]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[5]_INST_0_i_5_n_0\,
      O => \alu_out[5]_INST_0_i_1_n_0\
    );
\alu_out[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[5]_INST_0_i_2_n_0\
    );
\alu_out[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_6_n_0\,
      I1 => \alu_out[5]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[9]_INST_0_i_7_n_0\,
      I4 => b(2),
      I5 => \alu_out[5]_INST_0_i_7_n_0\,
      O => \alu_out[5]_INST_0_i_3_n_0\
    );
\alu_out[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \alu_out[5]_INST_0_i_4_n_0\
    );
\alu_out[5]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[5]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(5),
      I3 => alu_ctrl(0),
      I4 => data0(5),
      O => \alu_out[5]_INST_0_i_5_n_0\
    );
\alu_out[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_13_n_0\,
      I1 => \alu_out[21]_INST_0_i_14_n_0\,
      I2 => b(4),
      I3 => \alu_out[13]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[5]_INST_0_i_9_n_0\,
      O => \alu_out[5]_INST_0_i_6_n_0\
    );
\alu_out[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[21]_INST_0_i_15_n_0\,
      I1 => \alu_out[21]_INST_0_i_14_n_0\,
      I2 => b(4),
      I3 => \alu_out[13]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[5]_INST_0_i_9_n_0\,
      O => \alu_out[5]_INST_0_i_7_n_0\
    );
\alu_out[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040004"
    )
        port map (
      I0 => b(4),
      I1 => \alu_out[29]_INST_0_i_11_n_0\,
      I2 => b(3),
      I3 => b(2),
      I4 => \alu_out[1]_INST_0_i_7_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[5]_INST_0_i_8_n_0\
    );
\alu_out[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(8),
      I1 => a(6),
      I2 => b(0),
      I3 => a(7),
      I4 => b(1),
      I5 => a(5),
      O => \alu_out[5]_INST_0_i_9_n_0\
    );
\alu_out[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[6]_INST_0_i_1_n_0\,
      I1 => \alu_out[6]_INST_0_i_2_n_0\,
      O => alu_out(6),
      S => alu_ctrl(3)
    );
\alu_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[6]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[6]_INST_0_i_5_n_0\,
      O => \alu_out[6]_INST_0_i_1_n_0\
    );
\alu_out[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[6]_INST_0_i_2_n_0\
    );
\alu_out[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[10]_INST_0_i_6_n_0\,
      I1 => \alu_out[6]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[10]_INST_0_i_7_n_0\,
      I4 => b(2),
      I5 => \alu_out[6]_INST_0_i_7_n_0\,
      O => \alu_out[6]_INST_0_i_3_n_0\
    );
\alu_out[6]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \alu_out[6]_INST_0_i_4_n_0\
    );
\alu_out[6]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[6]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(6),
      I3 => alu_ctrl(0),
      I4 => data0(6),
      O => \alu_out[6]_INST_0_i_5_n_0\
    );
\alu_out[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_11_n_0\,
      I1 => \alu_out[22]_INST_0_i_12_n_0\,
      I2 => b(4),
      I3 => \alu_out[14]_INST_0_i_12_n_0\,
      I4 => b(3),
      I5 => \alu_out[6]_INST_0_i_9_n_0\,
      O => \alu_out[6]_INST_0_i_6_n_0\
    );
\alu_out[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[22]_INST_0_i_13_n_0\,
      I1 => \alu_out[22]_INST_0_i_12_n_0\,
      I2 => b(4),
      I3 => \alu_out[14]_INST_0_i_12_n_0\,
      I4 => b(3),
      I5 => \alu_out[6]_INST_0_i_9_n_0\,
      O => \alu_out[6]_INST_0_i_7_n_0\
    );
\alu_out[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055040004"
    )
        port map (
      I0 => b(4),
      I1 => \alu_out[30]_INST_0_i_11_n_0\,
      I2 => b(3),
      I3 => b(2),
      I4 => \alu_out[22]_INST_0_i_14_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[6]_INST_0_i_8_n_0\
    );
\alu_out[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(9),
      I1 => a(7),
      I2 => b(0),
      I3 => a(8),
      I4 => b(1),
      I5 => a(6),
      O => \alu_out[6]_INST_0_i_9_n_0\
    );
\alu_out[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[7]_INST_0_i_1_n_0\,
      I1 => \alu_out[7]_INST_0_i_2_n_0\,
      O => alu_out(7),
      S => alu_ctrl(3)
    );
\alu_out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[7]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[7]_INST_0_i_5_n_0\,
      O => \alu_out[7]_INST_0_i_1_n_0\
    );
\alu_out[7]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => b(1),
      I1 => a(31),
      I2 => b(0),
      O => \alu_out[7]_INST_0_i_10_n_0\
    );
\alu_out[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[7]_INST_0_i_2_n_0\
    );
\alu_out[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[11]_INST_0_i_6_n_0\,
      I1 => \alu_out[7]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[11]_INST_0_i_7_n_0\,
      I4 => b(2),
      I5 => \alu_out[7]_INST_0_i_7_n_0\,
      O => \alu_out[7]_INST_0_i_3_n_0\
    );
\alu_out[7]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \alu_out[7]_INST_0_i_4_n_0\
    );
\alu_out[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(7),
      I3 => alu_ctrl(0),
      I4 => data0(7),
      O => \alu_out[7]_INST_0_i_5_n_0\
    );
\alu_out[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[23]_INST_0_i_10_n_0\,
      I2 => b(4),
      I3 => \alu_out[15]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[7]_INST_0_i_9_n_0\,
      O => \alu_out[7]_INST_0_i_6_n_0\
    );
\alu_out[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[7]_INST_0_i_10_n_0\,
      I1 => \alu_out[23]_INST_0_i_10_n_0\,
      I2 => b(4),
      I3 => \alu_out[15]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[7]_INST_0_i_9_n_0\,
      O => \alu_out[7]_INST_0_i_7_n_0\
    );
\alu_out[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005040004"
    )
        port map (
      I0 => b(4),
      I1 => \alu_out[31]_INST_0_i_9_n_0\,
      I2 => b(3),
      I3 => b(2),
      I4 => \alu_out[31]_INST_0_i_13_n_0\,
      I5 => alu_ctrl(0),
      O => \alu_out[7]_INST_0_i_8_n_0\
    );
\alu_out[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(10),
      I1 => a(8),
      I2 => b(0),
      I3 => a(9),
      I4 => b(1),
      I5 => a(7),
      O => \alu_out[7]_INST_0_i_9_n_0\
    );
\alu_out[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[8]_INST_0_i_1_n_0\,
      I1 => \alu_out[8]_INST_0_i_2_n_0\,
      O => alu_out(8),
      S => alu_ctrl(3)
    );
\alu_out[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[8]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[8]_INST_0_i_5_n_0\,
      O => \alu_out[8]_INST_0_i_1_n_0\
    );
\alu_out[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[8]_INST_0_i_2_n_0\
    );
\alu_out[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[12]_INST_0_i_9_n_0\,
      I1 => \alu_out[8]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[12]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \alu_out[8]_INST_0_i_7_n_0\,
      O => \alu_out[8]_INST_0_i_3_n_0\
    );
\alu_out[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      O => \alu_out[8]_INST_0_i_4_n_0\
    );
\alu_out[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[8]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(8),
      I3 => alu_ctrl(0),
      I4 => data0(8),
      O => \alu_out[8]_INST_0_i_5_n_0\
    );
\alu_out[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[24]_INST_0_i_9_n_0\,
      I2 => b(4),
      I3 => \alu_out[16]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[8]_INST_0_i_9_n_0\,
      O => \alu_out[8]_INST_0_i_6_n_0\
    );
\alu_out[8]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[24]_INST_0_i_9_n_0\,
      I1 => b(4),
      I2 => \alu_out[16]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[8]_INST_0_i_9_n_0\,
      O => \alu_out[8]_INST_0_i_7_n_0\
    );
\alu_out[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \alu_out[28]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \alu_out[28]_INST_0_i_15_n_0\,
      I3 => b(3),
      I4 => \alu_out[28]_INST_0_i_14_n_0\,
      I5 => b(4),
      O => \alu_out[8]_INST_0_i_8_n_0\
    );
\alu_out[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(11),
      I1 => a(9),
      I2 => b(0),
      I3 => a(10),
      I4 => b(1),
      I5 => a(8),
      O => \alu_out[8]_INST_0_i_9_n_0\
    );
\alu_out[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \alu_out[9]_INST_0_i_1_n_0\,
      I1 => \alu_out[9]_INST_0_i_2_n_0\,
      O => alu_out(9),
      S => alu_ctrl(3)
    );
\alu_out[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_3_n_0\,
      I1 => alu_ctrl(1),
      I2 => \alu_out[9]_INST_0_i_4_n_0\,
      I3 => alu_ctrl(0),
      I4 => alu_ctrl(2),
      I5 => \alu_out[9]_INST_0_i_5_n_0\,
      O => \alu_out[9]_INST_0_i_1_n_0\
    );
\alu_out[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000C8E"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      I2 => alu_ctrl(0),
      I3 => alu_ctrl(1),
      I4 => alu_ctrl(2),
      O => \alu_out[9]_INST_0_i_2_n_0\
    );
\alu_out[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_out[13]_INST_0_i_8_n_0\,
      I1 => \alu_out[9]_INST_0_i_6_n_0\,
      I2 => alu_ctrl(0),
      I3 => \alu_out[13]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \alu_out[9]_INST_0_i_7_n_0\,
      O => \alu_out[9]_INST_0_i_3_n_0\
    );
\alu_out[9]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      O => \alu_out[9]_INST_0_i_4_n_0\
    );
\alu_out[9]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[9]_INST_0_i_8_n_0\,
      I1 => alu_ctrl(1),
      I2 => data1(9),
      I3 => alu_ctrl(0),
      I4 => data0(9),
      O => \alu_out[9]_INST_0_i_5_n_0\
    );
\alu_out[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(31),
      I1 => \alu_out[25]_INST_0_i_9_n_0\,
      I2 => b(4),
      I3 => \alu_out[17]_INST_0_i_11_n_0\,
      I4 => b(3),
      I5 => \alu_out[9]_INST_0_i_9_n_0\,
      O => \alu_out[9]_INST_0_i_6_n_0\
    );
\alu_out[9]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \alu_out[25]_INST_0_i_9_n_0\,
      I1 => b(4),
      I2 => \alu_out[17]_INST_0_i_11_n_0\,
      I3 => b(3),
      I4 => \alu_out[9]_INST_0_i_9_n_0\,
      O => \alu_out[9]_INST_0_i_7_n_0\
    );
\alu_out[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => \alu_out[29]_INST_0_i_11_n_0\,
      I1 => b(2),
      I2 => \alu_out[29]_INST_0_i_16_n_0\,
      I3 => b(3),
      I4 => \alu_out[29]_INST_0_i_15_n_0\,
      I5 => b(4),
      O => \alu_out[9]_INST_0_i_8_n_0\
    );
\alu_out[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => a(12),
      I1 => a(10),
      I2 => b(0),
      I3 => a(11),
      I4 => b(1),
      I5 => a(9),
      O => \alu_out[9]_INST_0_i_9_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(11),
      I1 => a(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(9),
      I1 => a(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(19),
      I1 => a(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(17),
      I1 => a(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(23),
      I1 => a(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(21),
      I1 => a(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(27),
      I1 => a(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(25),
      I1 => a(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(29),
      I1 => a(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => a(31),
      I1 => a(30),
      I2 => b(30),
      I3 => b(31),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(23),
      I1 => b(22),
      I2 => a(22),
      I3 => b(23),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(15),
      I1 => b(14),
      I2 => a(14),
      I3 => b(15),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(7),
      I1 => b(6),
      I2 => a(6),
      I3 => b(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(29),
      I1 => b(28),
      I2 => a(28),
      I3 => b(29),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(21),
      I1 => b(20),
      I2 => a(20),
      I3 => b(21),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(13),
      I1 => b(12),
      I2 => a(12),
      I3 => b(13),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      I2 => a(4),
      I3 => b(4),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      I2 => a(2),
      I3 => b(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(27),
      I1 => b(26),
      I2 => a(26),
      I3 => b(27),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(19),
      I1 => b(18),
      I2 => a(18),
      I3 => b(19),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(11),
      I1 => b(10),
      I2 => a(10),
      I3 => b(11),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4D44"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      I2 => a(0),
      I3 => b(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(25),
      I1 => b(24),
      I2 => a(24),
      I3 => b(25),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(17),
      I1 => b(16),
      I2 => a(16),
      I3 => b(17),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D04"
    )
        port map (
      I0 => a(9),
      I1 => b(8),
      I2 => a(8),
      I3 => b(9),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(31),
      I1 => a(31),
      I2 => b(30),
      I3 => a(30),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => b(23),
      I3 => a(23),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => b(15),
      I3 => a(15),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => b(7),
      I3 => a(7),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => b(5),
      I3 => a(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => b(29),
      I3 => a(29),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => b(21),
      I3 => a(21),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => b(13),
      I3 => a(13),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => b(3),
      I3 => a(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => b(27),
      I3 => a(27),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => b(19),
      I3 => a(19),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => b(11),
      I3 => a(11),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => b(25),
      I3 => a(25),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => b(17),
      I3 => a(17),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => b(9),
      I3 => a(9),
      O => \i__carry_i_8__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ALU_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EX_ALU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ALU_0_0 : entity is "EX_ALU_0_0,ALU,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ALU_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ALU_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EX_ALU_0_0 : entity is "ALU,Vivado 2024.2";
end EX_ALU_0_0;

architecture STRUCTURE of EX_ALU_0_0 is
begin
inst: entity work.EX_ALU_0_0_ALU
     port map (
      a(31 downto 0) => a(31 downto 0),
      alu_ctrl(3 downto 0) => alu_ctrl(3 downto 0),
      alu_out(31 downto 0) => alu_out(31 downto 0),
      b(31 downto 0) => b(31 downto 0)
    );
end STRUCTURE;
