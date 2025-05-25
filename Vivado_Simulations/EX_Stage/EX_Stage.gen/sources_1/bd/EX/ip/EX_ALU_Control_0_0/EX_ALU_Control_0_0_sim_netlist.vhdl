-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:31 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_Control_0_0/EX_ALU_Control_0_0_sim_netlist.vhdl
-- Design      : EX_ALU_Control_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ALU_Control_0_0_ALU_Control is
  port (
    alu_ctrl : out STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_lui : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of EX_ALU_Control_0_0_ALU_Control : entity is "ALU_Control";
end EX_ALU_Control_0_0_ALU_Control;

architecture STRUCTURE of EX_ALU_Control_0_0_ALU_Control is
begin
\alu_ctrl[0]_INST_0\: unisim.vcomponents.LUT6
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
\alu_ctrl[1]_INST_0\: unisim.vcomponents.LUT6
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
\alu_ctrl[2]_INST_0\: unisim.vcomponents.LUT4
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
\alu_ctrl[3]_INST_0\: unisim.vcomponents.LUT5
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity EX_ALU_Control_0_0 is
  port (
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    is_lui : in STD_LOGIC;
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    alu_ctrl : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of EX_ALU_Control_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ALU_Control_0_0 : entity is "EX_ALU_Control_0_0,ALU_Control,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ALU_Control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ALU_Control_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of EX_ALU_Control_0_0 : entity is "ALU_Control,Vivado 2024.2";
end EX_ALU_Control_0_0;

architecture STRUCTURE of EX_ALU_Control_0_0 is
begin
inst: entity work.EX_ALU_Control_0_0_ALU_Control
     port map (
      alu_ctrl(3 downto 0) => alu_ctrl(3 downto 0),
      alu_op(1 downto 0) => alu_op(1 downto 0),
      funct3(2 downto 0) => funct3(2 downto 0),
      funct7(0) => funct7(5),
      is_lui => is_lui
    );
end STRUCTURE;
