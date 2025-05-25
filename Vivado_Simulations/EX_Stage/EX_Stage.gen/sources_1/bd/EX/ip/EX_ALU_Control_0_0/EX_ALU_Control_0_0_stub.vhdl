-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:31 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ALU_Control_0_0/EX_ALU_Control_0_0_stub.vhdl
-- Design      : EX_ALU_Control_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EX_ALU_Control_0_0 is
  Port ( 
    alu_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    is_lui : in STD_LOGIC;
    funct3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    funct7 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    alu_ctrl : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ALU_Control_0_0 : entity is "EX_ALU_Control_0_0,ALU_Control,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of EX_ALU_Control_0_0 : entity is "EX_ALU_Control_0_0,ALU_Control,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ALU_Control,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ALU_Control_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ALU_Control_0_0 : entity is "module_ref";
end EX_ALU_Control_0_0;

architecture stub of EX_ALU_Control_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "alu_op[1:0],is_lui,funct3[2:0],funct7[6:0],alu_ctrl[3:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ALU_Control,Vivado 2024.2";
begin
end;
