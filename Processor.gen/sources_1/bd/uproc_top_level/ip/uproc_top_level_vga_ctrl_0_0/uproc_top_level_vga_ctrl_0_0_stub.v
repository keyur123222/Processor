// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Oct  1 21:02:14 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_vga_ctrl_0_0/uproc_top_level_vga_ctrl_0_0_stub.v
// Design      : uproc_top_level_vga_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vga_ctrl,Vivado 2021.1" *)
module uproc_top_level_vga_ctrl_0_0(clk, clk_enable, hcount, vcount, vid, hs, vs)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_enable,hcount[9:0],vcount[9:0],vid,hs,vs" */;
  input clk;
  input clk_enable;
  output [9:0]hcount;
  output [9:0]vcount;
  output vid;
  output hs;
  output vs;
endmodule
