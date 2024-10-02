// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Oct  1 19:15:01 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_controls_0_0/uproc_top_level_controls_0_0_stub.v
// Design      : uproc_top_level_controls_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "controls,Vivado 2021.1" *)
module uproc_top_level_controls_0_0(clk, en, rst, rID1, rID2, wr_enR1, wr_enR2, regrD1, 
  regrD2, regwD1, regwD2, fbRST, fbAddr1, fbDin1, fbDout1, fbWr_en, irAddr, irWord, dAddr, d_wr_en, dOut, 
  dIn, aluA, aluB, aluOp, aluResult, ready, newChar, send, charRec, charSend)
/* synthesis syn_black_box black_box_pad_pin="clk,en,rst,rID1[4:0],rID2[4:0],wr_enR1,wr_enR2,regrD1[15:0],regrD2[15:0],regwD1[15:0],regwD2[15:0],fbRST,fbAddr1[11:0],fbDin1[15:0],fbDout1[15:0],fbWr_en,irAddr[13:0],irWord[31:0],dAddr[14:0],d_wr_en,dOut[15:0],dIn[15:0],aluA[15:0],aluB[15:0],aluOp[3:0],aluResult[15:0],ready,newChar,send,charRec[7:0],charSend[7:0]" */;
  input clk;
  input en;
  input rst;
  output [4:0]rID1;
  output [4:0]rID2;
  output wr_enR1;
  output wr_enR2;
  input [15:0]regrD1;
  input [15:0]regrD2;
  output [15:0]regwD1;
  output [15:0]regwD2;
  output fbRST;
  output [11:0]fbAddr1;
  input [15:0]fbDin1;
  output [15:0]fbDout1;
  output fbWr_en;
  output [13:0]irAddr;
  input [31:0]irWord;
  output [14:0]dAddr;
  output d_wr_en;
  output [15:0]dOut;
  input [15:0]dIn;
  output [15:0]aluA;
  output [15:0]aluB;
  output [3:0]aluOp;
  input [15:0]aluResult;
  input ready;
  input newChar;
  output send;
  input [7:0]charRec;
  output [7:0]charSend;
endmodule
