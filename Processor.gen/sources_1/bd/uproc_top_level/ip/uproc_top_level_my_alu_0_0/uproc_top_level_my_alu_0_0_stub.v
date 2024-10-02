// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Oct  1 20:13:09 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_my_alu_0_0/uproc_top_level_my_alu_0_0_stub.v
// Design      : uproc_top_level_my_alu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "my_alu,Vivado 2021.1" *)
module uproc_top_level_my_alu_0_0(A, B, OPCODE, clk, aluOut)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],OPCODE[3:0],clk,aluOut[15:0]" */;
  input [15:0]A;
  input [15:0]B;
  input [3:0]OPCODE;
  input clk;
  output [15:0]aluOut;
endmodule
