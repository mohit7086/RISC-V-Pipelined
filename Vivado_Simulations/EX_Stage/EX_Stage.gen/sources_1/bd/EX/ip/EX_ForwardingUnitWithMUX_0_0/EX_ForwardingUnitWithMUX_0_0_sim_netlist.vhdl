-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:36 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ForwardingUnitWithMUX_0_0/EX_ForwardingUnitWithMUX_0_0_sim_netlist.vhdl
-- Design      : EX_ForwardingUnitWithMUX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ForwardingUnitWithMUX_0_0 is
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
    ForwardedDataA_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ForwardedDataB_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EX_ForwardingUnitWithMUX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ForwardingUnitWithMUX_0_0 : entity is "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ForwardingUnitWithMUX_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ForwardingUnitWithMUX_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EX_ForwardingUnitWithMUX_0_0 : entity is "ForwardingUnitWithMUX,Vivado 2024.2";
end EX_ForwardingUnitWithMUX_0_0;

architecture STRUCTURE of EX_ForwardingUnitWithMUX_0_0 is
  signal \ForwardedDataA_o[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ForwardedDataA_o[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ForwardedDataB_o[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ForwardedDataB_o[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \inst/ForwardA0__0\ : STD_LOGIC;
  signal \inst/ForwardA18_out\ : STD_LOGIC;
  signal \inst/ForwardB0__0\ : STD_LOGIC;
  signal \inst/ForwardB12_out\ : STD_LOGIC;
  signal \inst/p_4_in\ : STD_LOGIC;
  signal \inst/p_7_in\ : STD_LOGIC;
begin
\ForwardedDataA_o[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(0),
      I1 => EX_MEM_i(0),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(0),
      O => ForwardedDataA_o(0)
    );
\ForwardedDataA_o[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(10),
      I1 => EX_MEM_i(10),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(10),
      O => ForwardedDataA_o(10)
    );
\ForwardedDataA_o[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(11),
      I1 => EX_MEM_i(11),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(11),
      O => ForwardedDataA_o(11)
    );
\ForwardedDataA_o[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(12),
      I1 => EX_MEM_i(12),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(12),
      O => ForwardedDataA_o(12)
    );
\ForwardedDataA_o[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(13),
      I1 => EX_MEM_i(13),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(13),
      O => ForwardedDataA_o(13)
    );
\ForwardedDataA_o[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(14),
      I1 => EX_MEM_i(14),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(14),
      O => ForwardedDataA_o(14)
    );
\ForwardedDataA_o[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(15),
      I1 => EX_MEM_i(15),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(15),
      O => ForwardedDataA_o(15)
    );
\ForwardedDataA_o[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(16),
      I1 => EX_MEM_i(16),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(16),
      O => ForwardedDataA_o(16)
    );
\ForwardedDataA_o[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(17),
      I1 => EX_MEM_i(17),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(17),
      O => ForwardedDataA_o(17)
    );
\ForwardedDataA_o[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(18),
      I1 => EX_MEM_i(18),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(18),
      O => ForwardedDataA_o(18)
    );
\ForwardedDataA_o[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(19),
      I1 => EX_MEM_i(19),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(19),
      O => ForwardedDataA_o(19)
    );
\ForwardedDataA_o[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(1),
      I1 => EX_MEM_i(1),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(1),
      O => ForwardedDataA_o(1)
    );
\ForwardedDataA_o[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(20),
      I1 => EX_MEM_i(20),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(20),
      O => ForwardedDataA_o(20)
    );
\ForwardedDataA_o[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(21),
      I1 => EX_MEM_i(21),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(21),
      O => ForwardedDataA_o(21)
    );
\ForwardedDataA_o[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(22),
      I1 => EX_MEM_i(22),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(22),
      O => ForwardedDataA_o(22)
    );
\ForwardedDataA_o[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(23),
      I1 => EX_MEM_i(23),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(23),
      O => ForwardedDataA_o(23)
    );
\ForwardedDataA_o[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(24),
      I1 => EX_MEM_i(24),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(24),
      O => ForwardedDataA_o(24)
    );
\ForwardedDataA_o[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(25),
      I1 => EX_MEM_i(25),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(25),
      O => ForwardedDataA_o(25)
    );
\ForwardedDataA_o[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(26),
      I1 => EX_MEM_i(26),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(26),
      O => ForwardedDataA_o(26)
    );
\ForwardedDataA_o[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(27),
      I1 => EX_MEM_i(27),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(27),
      O => ForwardedDataA_o(27)
    );
\ForwardedDataA_o[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(28),
      I1 => EX_MEM_i(28),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(28),
      O => ForwardedDataA_o(28)
    );
\ForwardedDataA_o[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(29),
      I1 => EX_MEM_i(29),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(29),
      O => ForwardedDataA_o(29)
    );
\ForwardedDataA_o[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(2),
      I1 => EX_MEM_i(2),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(2),
      O => ForwardedDataA_o(2)
    );
\ForwardedDataA_o[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(30),
      I1 => EX_MEM_i(30),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(30),
      O => ForwardedDataA_o(30)
    );
\ForwardedDataA_o[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(31),
      I1 => EX_MEM_i(31),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(31),
      O => ForwardedDataA_o(31)
    );
\ForwardedDataA_o[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \inst/p_4_in\,
      I1 => MEM_WB_RD_i(4),
      I2 => ID_EX_RS_i(4),
      I3 => \ForwardedDataA_o[31]_INST_0_i_4_n_0\,
      I4 => ID_EX_RS_i(3),
      I5 => MEM_WB_RD_i(3),
      O => \inst/ForwardA0__0\
    );
\ForwardedDataA_o[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \inst/p_7_in\,
      I1 => EX_MEM_RD_i(4),
      I2 => ID_EX_RS_i(4),
      I3 => \ForwardedDataA_o[31]_INST_0_i_6_n_0\,
      I4 => ID_EX_RS_i(3),
      I5 => EX_MEM_RD_i(3),
      O => \inst/ForwardA18_out\
    );
\ForwardedDataA_o[31]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \inst/p_4_in\
    );
\ForwardedDataA_o[31]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \ForwardedDataA_o[31]_INST_0_i_4_n_0\
    );
\ForwardedDataA_o[31]_INST_0_i_5\: unisim.vcomponents.LUT6
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
      O => \inst/p_7_in\
    );
\ForwardedDataA_o[31]_INST_0_i_6\: unisim.vcomponents.LUT6
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
      O => \ForwardedDataA_o[31]_INST_0_i_6_n_0\
    );
\ForwardedDataA_o[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(3),
      I1 => EX_MEM_i(3),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(3),
      O => ForwardedDataA_o(3)
    );
\ForwardedDataA_o[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(4),
      I1 => EX_MEM_i(4),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(4),
      O => ForwardedDataA_o(4)
    );
\ForwardedDataA_o[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(5),
      I1 => EX_MEM_i(5),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(5),
      O => ForwardedDataA_o(5)
    );
\ForwardedDataA_o[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(6),
      I1 => EX_MEM_i(6),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(6),
      O => ForwardedDataA_o(6)
    );
\ForwardedDataA_o[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(7),
      I1 => EX_MEM_i(7),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(7),
      O => ForwardedDataA_o(7)
    );
\ForwardedDataA_o[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(8),
      I1 => EX_MEM_i(8),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(8),
      O => ForwardedDataA_o(8)
    );
\ForwardedDataA_o[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs1_data(9),
      I1 => EX_MEM_i(9),
      I2 => \inst/ForwardA0__0\,
      I3 => \inst/ForwardA18_out\,
      I4 => MEM_WB_i(9),
      O => ForwardedDataA_o(9)
    );
\ForwardedDataB_o[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(0),
      I1 => EX_MEM_i(0),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(0),
      O => ForwardedDataB_o(0)
    );
\ForwardedDataB_o[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(10),
      I1 => EX_MEM_i(10),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(10),
      O => ForwardedDataB_o(10)
    );
\ForwardedDataB_o[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(11),
      I1 => EX_MEM_i(11),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(11),
      O => ForwardedDataB_o(11)
    );
\ForwardedDataB_o[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(12),
      I1 => EX_MEM_i(12),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(12),
      O => ForwardedDataB_o(12)
    );
\ForwardedDataB_o[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(13),
      I1 => EX_MEM_i(13),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(13),
      O => ForwardedDataB_o(13)
    );
\ForwardedDataB_o[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(14),
      I1 => EX_MEM_i(14),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(14),
      O => ForwardedDataB_o(14)
    );
\ForwardedDataB_o[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(15),
      I1 => EX_MEM_i(15),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(15),
      O => ForwardedDataB_o(15)
    );
\ForwardedDataB_o[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(16),
      I1 => EX_MEM_i(16),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(16),
      O => ForwardedDataB_o(16)
    );
\ForwardedDataB_o[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(17),
      I1 => EX_MEM_i(17),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(17),
      O => ForwardedDataB_o(17)
    );
\ForwardedDataB_o[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(18),
      I1 => EX_MEM_i(18),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(18),
      O => ForwardedDataB_o(18)
    );
\ForwardedDataB_o[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(19),
      I1 => EX_MEM_i(19),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(19),
      O => ForwardedDataB_o(19)
    );
\ForwardedDataB_o[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(1),
      I1 => EX_MEM_i(1),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(1),
      O => ForwardedDataB_o(1)
    );
\ForwardedDataB_o[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(20),
      I1 => EX_MEM_i(20),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(20),
      O => ForwardedDataB_o(20)
    );
\ForwardedDataB_o[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(21),
      I1 => EX_MEM_i(21),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(21),
      O => ForwardedDataB_o(21)
    );
\ForwardedDataB_o[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(22),
      I1 => EX_MEM_i(22),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(22),
      O => ForwardedDataB_o(22)
    );
\ForwardedDataB_o[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(23),
      I1 => EX_MEM_i(23),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(23),
      O => ForwardedDataB_o(23)
    );
\ForwardedDataB_o[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(24),
      I1 => EX_MEM_i(24),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(24),
      O => ForwardedDataB_o(24)
    );
\ForwardedDataB_o[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(25),
      I1 => EX_MEM_i(25),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(25),
      O => ForwardedDataB_o(25)
    );
\ForwardedDataB_o[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(26),
      I1 => EX_MEM_i(26),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(26),
      O => ForwardedDataB_o(26)
    );
\ForwardedDataB_o[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(27),
      I1 => EX_MEM_i(27),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(27),
      O => ForwardedDataB_o(27)
    );
\ForwardedDataB_o[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(28),
      I1 => EX_MEM_i(28),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(28),
      O => ForwardedDataB_o(28)
    );
\ForwardedDataB_o[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(29),
      I1 => EX_MEM_i(29),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(29),
      O => ForwardedDataB_o(29)
    );
\ForwardedDataB_o[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(2),
      I1 => EX_MEM_i(2),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(2),
      O => ForwardedDataB_o(2)
    );
\ForwardedDataB_o[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(30),
      I1 => EX_MEM_i(30),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(30),
      O => ForwardedDataB_o(30)
    );
\ForwardedDataB_o[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(31),
      I1 => EX_MEM_i(31),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(31),
      O => ForwardedDataB_o(31)
    );
\ForwardedDataB_o[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \inst/p_4_in\,
      I1 => MEM_WB_RD_i(4),
      I2 => ID_EX_RT_i(4),
      I3 => \ForwardedDataB_o[31]_INST_0_i_3_n_0\,
      I4 => ID_EX_RT_i(3),
      I5 => MEM_WB_RD_i(3),
      O => \inst/ForwardB0__0\
    );
\ForwardedDataB_o[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \inst/p_7_in\,
      I1 => EX_MEM_RD_i(4),
      I2 => ID_EX_RT_i(4),
      I3 => \ForwardedDataB_o[31]_INST_0_i_4_n_0\,
      I4 => ID_EX_RT_i(3),
      I5 => EX_MEM_RD_i(3),
      O => \inst/ForwardB12_out\
    );
\ForwardedDataB_o[31]_INST_0_i_3\: unisim.vcomponents.LUT6
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
      O => \ForwardedDataB_o[31]_INST_0_i_3_n_0\
    );
\ForwardedDataB_o[31]_INST_0_i_4\: unisim.vcomponents.LUT6
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
      O => \ForwardedDataB_o[31]_INST_0_i_4_n_0\
    );
\ForwardedDataB_o[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(3),
      I1 => EX_MEM_i(3),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(3),
      O => ForwardedDataB_o(3)
    );
\ForwardedDataB_o[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(4),
      I1 => EX_MEM_i(4),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(4),
      O => ForwardedDataB_o(4)
    );
\ForwardedDataB_o[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(5),
      I1 => EX_MEM_i(5),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(5),
      O => ForwardedDataB_o(5)
    );
\ForwardedDataB_o[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(6),
      I1 => EX_MEM_i(6),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(6),
      O => ForwardedDataB_o(6)
    );
\ForwardedDataB_o[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(7),
      I1 => EX_MEM_i(7),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(7),
      O => ForwardedDataB_o(7)
    );
\ForwardedDataB_o[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(8),
      I1 => EX_MEM_i(8),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(8),
      O => ForwardedDataB_o(8)
    );
\ForwardedDataB_o[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFACC0A"
    )
        port map (
      I0 => rs2_data(9),
      I1 => EX_MEM_i(9),
      I2 => \inst/ForwardB0__0\,
      I3 => \inst/ForwardB12_out\,
      I4 => MEM_WB_i(9),
      O => ForwardedDataB_o(9)
    );
end STRUCTURE;
