-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:31 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_Branch_Unit_0_0/EX_Branch_Unit_0_0_sim_netlist.vhdl
-- Design      : EX_Branch_Unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_Branch_Unit_0_0_Branch_Unit is
  port (
    branch_taken : out STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_Branch_Unit_0_0_Branch_Unit : entity is "Branch_Unit";
end EX_Branch_Unit_0_0_Branch_Unit;

architecture STRUCTURE of EX_Branch_Unit_0_0_Branch_Unit is
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
  signal branch_taken_INST_0_i_10_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_10_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_10_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_11_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_12_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_13_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_14_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_14_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_14_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_14_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_15_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_16_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_17_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_18_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_19_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_19_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_19_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_19_n_3 : STD_LOGIC;
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
  signal branch_taken_INST_0_i_2_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_30_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_31_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_3_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_4_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_5_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_5_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_6_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_6_n_1 : STD_LOGIC;
  signal branch_taken_INST_0_i_6_n_2 : STD_LOGIC;
  signal branch_taken_INST_0_i_6_n_3 : STD_LOGIC;
  signal branch_taken_INST_0_i_7_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_8_n_0 : STD_LOGIC;
  signal branch_taken_INST_0_i_9_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
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
  signal NLW_branch_taken_INST_0_i_10_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_14_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_19_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_branch_taken_INST_0_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_branch_taken_INST_0_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_branch_taken_INST_0_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
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
\branch_taken0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \branch_taken0_inferred__1/i__carry_n_0\,
      CO(2) => \branch_taken0_inferred__1/i__carry_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__4_n_0\,
      DI(2) => \i__carry_i_2__4_n_0\,
      DI(1) => \i__carry_i_3__4_n_0\,
      DI(0) => \i__carry_i_4__4_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__4_n_0\,
      S(2) => \i__carry_i_6__4_n_0\,
      S(1) => \i__carry_i_7__4_n_0\,
      S(0) => \i__carry_i_8__4_n_0\
    );
\branch_taken0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__1/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__1/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__1/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__1/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
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
      DI(3) => \i__carry__1_i_1__0_n_0\,
      DI(2) => \i__carry__1_i_2__0_n_0\,
      DI(1) => \i__carry__1_i_3__0_n_0\,
      DI(0) => \i__carry__1_i_4__0_n_0\,
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
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2__0_n_0\,
      DI(1) => \i__carry__2_i_3__0_n_0\,
      DI(0) => \i__carry__2_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
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
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\branch_taken0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__2/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__2/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__2/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\branch_taken0_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__2/i__carry__0_n_0\,
      CO(3) => \branch_taken0_inferred__2/i__carry__1_n_0\,
      CO(2) => \branch_taken0_inferred__2/i__carry__1_n_1\,
      CO(1) => \branch_taken0_inferred__2/i__carry__1_n_2\,
      CO(0) => \branch_taken0_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
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
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__2/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5__0_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\branch_taken0_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \branch_taken0_inferred__3/i__carry_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__3_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__3_n_0\,
      S(0) => \i__carry_i_8__3_n_0\
    );
\branch_taken0_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry_n_0\,
      CO(3) => \branch_taken0_inferred__3/i__carry__0_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry__0_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__0_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
\branch_taken0_inferred__3/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry__0_n_0\,
      CO(3) => \branch_taken0_inferred__3/i__carry__1_n_0\,
      CO(2) => \branch_taken0_inferred__3/i__carry__1_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__1_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\branch_taken0_inferred__3/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_taken0_inferred__3/i__carry__1_n_0\,
      CO(3) => data4,
      CO(2) => \branch_taken0_inferred__3/i__carry__2_n_1\,
      CO(1) => \branch_taken0_inferred__3/i__carry__2_n_2\,
      CO(0) => \branch_taken0_inferred__3/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_branch_taken0_inferred__3/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
branch_taken_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => branch_taken_INST_0_i_2_n_0,
      I1 => branch_taken_INST_0_i_3_n_0,
      O => branch_taken,
      S => branch_taken_INST_0_i_1_n_0
    );
branch_taken_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => funct3(1),
      I1 => funct3(2),
      O => branch_taken_INST_0_i_1_n_0
    );
branch_taken_INST_0_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_19_n_0,
      CO(3) => branch_taken_INST_0_i_10_n_0,
      CO(2) => branch_taken_INST_0_i_10_n_1,
      CO(1) => branch_taken_INST_0_i_10_n_2,
      CO(0) => branch_taken_INST_0_i_10_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_10_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_20_n_0,
      S(2) => branch_taken_INST_0_i_21_n_0,
      S(1) => branch_taken_INST_0_i_22_n_0,
      S(0) => branch_taken_INST_0_i_23_n_0
    );
branch_taken_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => a(31),
      I3 => b(31),
      O => branch_taken_INST_0_i_11_n_0
    );
branch_taken_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      I2 => b(29),
      I3 => a(29),
      I4 => b(28),
      I5 => a(28),
      O => branch_taken_INST_0_i_12_n_0
    );
branch_taken_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      I2 => b(26),
      I3 => a(26),
      I4 => b(25),
      I5 => a(25),
      O => branch_taken_INST_0_i_13_n_0
    );
branch_taken_INST_0_i_14: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_taken_INST_0_i_14_n_0,
      CO(2) => branch_taken_INST_0_i_14_n_1,
      CO(1) => branch_taken_INST_0_i_14_n_2,
      CO(0) => branch_taken_INST_0_i_14_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_14_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_24_n_0,
      S(2) => branch_taken_INST_0_i_25_n_0,
      S(1) => branch_taken_INST_0_i_26_n_0,
      S(0) => branch_taken_INST_0_i_27_n_0
    );
branch_taken_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      I2 => b(23),
      I3 => a(23),
      I4 => b(22),
      I5 => a(22),
      O => branch_taken_INST_0_i_15_n_0
    );
branch_taken_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      I2 => b(20),
      I3 => a(20),
      I4 => b(19),
      I5 => a(19),
      O => branch_taken_INST_0_i_16_n_0
    );
branch_taken_INST_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      I2 => b(17),
      I3 => a(17),
      I4 => b(16),
      I5 => a(16),
      O => branch_taken_INST_0_i_17_n_0
    );
branch_taken_INST_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => b(14),
      I3 => a(14),
      I4 => b(13),
      I5 => a(13),
      O => branch_taken_INST_0_i_18_n_0
    );
branch_taken_INST_0_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_taken_INST_0_i_19_n_0,
      CO(2) => branch_taken_INST_0_i_19_n_1,
      CO(1) => branch_taken_INST_0_i_19_n_2,
      CO(0) => branch_taken_INST_0_i_19_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_19_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_28_n_0,
      S(2) => branch_taken_INST_0_i_29_n_0,
      S(1) => branch_taken_INST_0_i_30_n_0,
      S(0) => branch_taken_INST_0_i_31_n_0
    );
branch_taken_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => data1,
      I1 => funct3(2),
      I2 => funct3(1),
      I3 => funct3(0),
      I4 => data0,
      O => branch_taken_INST_0_i_2_n_0
    );
branch_taken_INST_0_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      I2 => b(23),
      I3 => a(23),
      I4 => b(22),
      I5 => a(22),
      O => branch_taken_INST_0_i_20_n_0
    );
branch_taken_INST_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      I2 => b(20),
      I3 => a(20),
      I4 => b(19),
      I5 => a(19),
      O => branch_taken_INST_0_i_21_n_0
    );
branch_taken_INST_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      I2 => b(17),
      I3 => a(17),
      I4 => b(16),
      I5 => a(16),
      O => branch_taken_INST_0_i_22_n_0
    );
branch_taken_INST_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => b(14),
      I3 => a(14),
      I4 => b(13),
      I5 => a(13),
      O => branch_taken_INST_0_i_23_n_0
    );
branch_taken_INST_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      I2 => b(11),
      I3 => a(11),
      I4 => b(10),
      I5 => a(10),
      O => branch_taken_INST_0_i_24_n_0
    );
branch_taken_INST_0_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => b(8),
      I3 => a(8),
      I4 => b(7),
      I5 => a(7),
      O => branch_taken_INST_0_i_25_n_0
    );
branch_taken_INST_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      I2 => b(5),
      I3 => a(5),
      I4 => b(4),
      I5 => a(4),
      O => branch_taken_INST_0_i_26_n_0
    );
branch_taken_INST_0_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => b(2),
      I3 => a(2),
      I4 => b(1),
      I5 => a(1),
      O => branch_taken_INST_0_i_27_n_0
    );
branch_taken_INST_0_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      I2 => b(11),
      I3 => a(11),
      I4 => b(10),
      I5 => a(10),
      O => branch_taken_INST_0_i_28_n_0
    );
branch_taken_INST_0_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => b(8),
      I3 => a(8),
      I4 => b(7),
      I5 => a(7),
      O => branch_taken_INST_0_i_29_n_0
    );
branch_taken_INST_0_i_3: unisim.vcomponents.LUT6
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
      O => branch_taken_INST_0_i_3_n_0
    );
branch_taken_INST_0_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      I2 => b(5),
      I3 => a(5),
      I4 => b(4),
      I5 => a(4),
      O => branch_taken_INST_0_i_30_n_0
    );
branch_taken_INST_0_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => b(2),
      I3 => a(2),
      I4 => b(1),
      I5 => a(1),
      O => branch_taken_INST_0_i_31_n_0
    );
branch_taken_INST_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_6_n_0,
      CO(3) => NLW_branch_taken_INST_0_i_4_CO_UNCONNECTED(3),
      CO(2) => data1,
      CO(1) => branch_taken_INST_0_i_4_n_2,
      CO(0) => branch_taken_INST_0_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => branch_taken_INST_0_i_7_n_0,
      S(1) => branch_taken_INST_0_i_8_n_0,
      S(0) => branch_taken_INST_0_i_9_n_0
    );
branch_taken_INST_0_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_10_n_0,
      CO(3) => NLW_branch_taken_INST_0_i_5_CO_UNCONNECTED(3),
      CO(2) => data0,
      CO(1) => branch_taken_INST_0_i_5_n_2,
      CO(0) => branch_taken_INST_0_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_5_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => branch_taken_INST_0_i_11_n_0,
      S(1) => branch_taken_INST_0_i_12_n_0,
      S(0) => branch_taken_INST_0_i_13_n_0
    );
branch_taken_INST_0_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => branch_taken_INST_0_i_14_n_0,
      CO(3) => branch_taken_INST_0_i_6_n_0,
      CO(2) => branch_taken_INST_0_i_6_n_1,
      CO(1) => branch_taken_INST_0_i_6_n_2,
      CO(0) => branch_taken_INST_0_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_branch_taken_INST_0_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => branch_taken_INST_0_i_15_n_0,
      S(2) => branch_taken_INST_0_i_16_n_0,
      S(1) => branch_taken_INST_0_i_17_n_0,
      S(0) => branch_taken_INST_0_i_18_n_0
    );
branch_taken_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => a(31),
      I3 => b(31),
      O => branch_taken_INST_0_i_7_n_0
    );
branch_taken_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      I2 => b(29),
      I3 => a(29),
      I4 => b(28),
      I5 => a(28),
      O => branch_taken_INST_0_i_8_n_0
    );
branch_taken_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      I2 => b(26),
      I3 => a(26),
      I4 => b(25),
      I5 => a(25),
      O => branch_taken_INST_0_i_9_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      I2 => b(15),
      I3 => a(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => a(15),
      I3 => b(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => b(13),
      I3 => a(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => a(13),
      I3 => b(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      I2 => b(11),
      I3 => a(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => a(11),
      I3 => b(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      I2 => b(9),
      I3 => a(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => a(9),
      I3 => b(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      I2 => a(15),
      I3 => b(15),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => b(15),
      I3 => a(15),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      I2 => a(13),
      I3 => b(13),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => b(13),
      I3 => a(13),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      I2 => a(11),
      I3 => b(11),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => b(11),
      I3 => a(11),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      I2 => a(9),
      I3 => b(9),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => b(9),
      I3 => a(9),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      I2 => b(23),
      I3 => a(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => a(23),
      I3 => b(23),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      I2 => b(21),
      I3 => a(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => a(21),
      I3 => b(21),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      I2 => b(19),
      I3 => a(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => a(19),
      I3 => b(19),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      I2 => b(17),
      I3 => a(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => a(17),
      I3 => b(17),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      I2 => a(23),
      I3 => b(23),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => b(23),
      I3 => a(23),
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      I2 => a(21),
      I3 => b(21),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => b(21),
      I3 => a(21),
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      I2 => a(19),
      I3 => b(19),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => b(19),
      I3 => a(19),
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      I2 => a(17),
      I3 => b(17),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => b(17),
      I3 => a(17),
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      I2 => b(31),
      I3 => a(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => a(31),
      I3 => b(31),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      I2 => b(29),
      I3 => a(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => a(29),
      I3 => b(29),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      I2 => b(27),
      I3 => a(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => a(27),
      I3 => b(27),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      I2 => b(25),
      I3 => a(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => a(25),
      I3 => b(25),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      I2 => a(31),
      I3 => b(31),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => b(31),
      I3 => a(31),
      O => \i__carry__2_i_5__0_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      I2 => a(29),
      I3 => b(29),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => b(29),
      I3 => a(29),
      O => \i__carry__2_i_6__0_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      I2 => a(27),
      I3 => b(27),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => b(27),
      I3 => a(27),
      O => \i__carry__2_i_7__0_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      I2 => a(25),
      I3 => b(25),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => b(25),
      I3 => a(25),
      O => \i__carry__2_i_8__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => b(7),
      I3 => a(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      I2 => a(31),
      I3 => b(31),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => a(23),
      I3 => b(23),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => a(15),
      I3 => b(15),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => a(7),
      I3 => b(7),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => a(7),
      I3 => b(7),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      I2 => b(5),
      I3 => a(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => a(29),
      I3 => b(29),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => a(21),
      I3 => b(21),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => a(13),
      I3 => b(13),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => a(5),
      I3 => b(5),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => a(5),
      I3 => b(5),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => b(3),
      I3 => a(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => a(27),
      I3 => b(27),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => a(19),
      I3 => b(19),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => a(11),
      I3 => b(11),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => a(3),
      I3 => b(3),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => a(3),
      I3 => b(3),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => b(1),
      I3 => a(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => a(25),
      I3 => b(25),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => a(17),
      I3 => b(17),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => a(9),
      I3 => b(9),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => a(1),
      I3 => b(1),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => a(1),
      I3 => b(1),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      I2 => a(7),
      I3 => b(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      I2 => b(31),
      I3 => a(31),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => b(23),
      I3 => a(23),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => b(15),
      I3 => a(15),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => b(7),
      I3 => a(7),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => b(7),
      I3 => a(7),
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      I2 => a(5),
      I3 => b(5),
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
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => b(5),
      I3 => a(5),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_6__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => b(5),
      I3 => a(5),
      O => \i__carry_i_6__4_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => a(3),
      I3 => b(3),
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
\i__carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => b(3),
      I3 => a(3),
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_7__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => b(3),
      I3 => a(3),
      O => \i__carry_i_7__4_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
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
\i__carry_i_8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
      O => \i__carry_i_8__3_n_0\
    );
\i__carry_i_8__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => b(1),
      I3 => a(1),
      O => \i__carry_i_8__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_Branch_Unit_0_0 is
  port (
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_taken : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EX_Branch_Unit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_Branch_Unit_0_0 : entity is "EX_Branch_Unit_0_0,Branch_Unit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_Branch_Unit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_Branch_Unit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EX_Branch_Unit_0_0 : entity is "Branch_Unit,Vivado 2024.2";
end EX_Branch_Unit_0_0;

architecture STRUCTURE of EX_Branch_Unit_0_0 is
begin
inst: entity work.EX_Branch_Unit_0_0_Branch_Unit
     port map (
      a(31 downto 0) => a(31 downto 0),
      b(31 downto 0) => b(31 downto 0),
      branch_taken => branch_taken,
      funct3(2 downto 0) => funct3(2 downto 0)
    );
end STRUCTURE;
