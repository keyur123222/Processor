-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Sep 26 12:03:55 2024
-- Host        : Key running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_blk_mem_gen_0_1/uproc_top_level_blk_mem_gen_0_1_stub.vhdl
-- Design      : uproc_top_level_blk_mem_gen_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uproc_top_level_blk_mem_gen_0_1 is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end uproc_top_level_blk_mem_gen_0_1;

architecture stub of uproc_top_level_blk_mem_gen_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[13:0],douta[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2021.1";
begin
end;
