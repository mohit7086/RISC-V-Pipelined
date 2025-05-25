-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Mar 20 13:42:36 2025
-- Host        : Mohit running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               m:/College/BTP/Vivado_Simulations/EX_Stage/EX_Stage.gen/sources_1/bd/EX/ip/EX_ForwardingUnitWithMUX_0_0/EX_ForwardingUnitWithMUX_0_0_stub.vhdl
-- Design      : EX_ForwardingUnitWithMUX_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EX_ForwardingUnitWithMUX_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of EX_ForwardingUnitWithMUX_0_0 : entity is "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of EX_ForwardingUnitWithMUX_0_0 : entity is "EX_ForwardingUnitWithMUX_0_0,ForwardingUnitWithMUX,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ForwardingUnitWithMUX,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of EX_ForwardingUnitWithMUX_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of EX_ForwardingUnitWithMUX_0_0 : entity is "module_ref";
end EX_ForwardingUnitWithMUX_0_0;

architecture stub of EX_ForwardingUnitWithMUX_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "EX_MEM_RegWrite_i,MEM_WB_RegWrite_i,ID_EX_RS_i[4:0],ID_EX_RT_i[4:0],EX_MEM_RD_i[4:0],MEM_WB_RD_i[4:0],rs1_data[31:0],rs2_data[31:0],EX_MEM_i[31:0],MEM_WB_i[31:0],ForwardedDataA_o[31:0],ForwardedDataB_o[31:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ForwardingUnitWithMUX,Vivado 2024.2";
begin
end;
