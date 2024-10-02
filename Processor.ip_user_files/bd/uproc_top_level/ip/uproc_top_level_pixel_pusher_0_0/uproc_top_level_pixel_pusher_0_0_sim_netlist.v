// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Mon Sep 30 21:44:33 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_pixel_pusher_0_0/uproc_top_level_pixel_pusher_0_0_sim_netlist.v
// Design      : uproc_top_level_pixel_pusher_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uproc_top_level_pixel_pusher_0_0,pixel_pusher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pixel_pusher,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module uproc_top_level_pixel_pusher_0_0
   (clk,
    clk_enable,
    vs,
    pixel,
    hcount,
    vid,
    R,
    G,
    B,
    addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0" *) input clk;
  input clk_enable;
  input vs;
  input [15:0]pixel;
  input [9:0]hcount;
  input vid;
  output [7:0]R;
  output [7:0]G;
  output [7:0]B;
  output [11:0]addr;

  wire \<const0> ;
  wire [7:3]\^B ;
  wire [7:2]\^G ;
  wire [7:3]\^R ;
  wire [11:0]addr;
  wire clk;
  wire clk_enable;
  wire [9:0]hcount;
  wire [15:0]pixel;
  wire vid;
  wire vs;

  assign B[7:3] = \^B [7:3];
  assign B[2] = \<const0> ;
  assign B[1] = \<const0> ;
  assign B[0] = \<const0> ;
  assign G[7:2] = \^G [7:2];
  assign G[1] = \<const0> ;
  assign G[0] = \<const0> ;
  assign R[7:3] = \^R [7:3];
  assign R[2] = \<const0> ;
  assign R[1] = \<const0> ;
  assign R[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  uproc_top_level_pixel_pusher_0_0_pixel_pusher U0
       (.B(\^B ),
        .G(\^G ),
        .R(\^R ),
        .addr(addr),
        .clk(clk),
        .clk_enable(clk_enable),
        .hcount(hcount[9:5]),
        .pixel(pixel),
        .vid(vid),
        .vs(vs));
endmodule

(* ORIG_REF_NAME = "pixel_pusher" *) 
module uproc_top_level_pixel_pusher_0_0_pixel_pusher
   (R,
    G,
    B,
    addr,
    clk,
    clk_enable,
    pixel,
    vid,
    hcount,
    vs);
  output [4:0]R;
  output [5:0]G;
  output [4:0]B;
  output [11:0]addr;
  input clk;
  input clk_enable;
  input [15:0]pixel;
  input vid;
  input [4:0]hcount;
  input vs;

  wire [4:0]B;
  wire \B[3]_i_1_n_0 ;
  wire \B[4]_i_1_n_0 ;
  wire \B[5]_i_1_n_0 ;
  wire \B[6]_i_1_n_0 ;
  wire \B[7]_i_1_n_0 ;
  wire [5:0]G;
  wire \G[2]_i_1_n_0 ;
  wire \G[3]_i_1_n_0 ;
  wire \G[4]_i_1_n_0 ;
  wire \G[5]_i_1_n_0 ;
  wire \G[6]_i_1_n_0 ;
  wire \G[7]_i_1_n_0 ;
  wire [4:0]R;
  wire \R[3]_i_1_n_0 ;
  wire \R[4]_i_1_n_0 ;
  wire \R[5]_i_1_n_0 ;
  wire \R[6]_i_1_n_0 ;
  wire \R[7]_i_1_n_0 ;
  wire \R[7]_i_2_n_0 ;
  wire \R[7]_i_3_n_0 ;
  wire [11:0]addr;
  wire clk;
  wire clk_enable;
  wire [4:0]hcount;
  wire internal_addr;
  wire \internal_addr[11]_i_1_n_0 ;
  wire \internal_addr[3]_i_2_n_0 ;
  wire \internal_addr_reg[11]_i_3_n_1 ;
  wire \internal_addr_reg[11]_i_3_n_2 ;
  wire \internal_addr_reg[11]_i_3_n_3 ;
  wire \internal_addr_reg[11]_i_3_n_4 ;
  wire \internal_addr_reg[11]_i_3_n_5 ;
  wire \internal_addr_reg[11]_i_3_n_6 ;
  wire \internal_addr_reg[11]_i_3_n_7 ;
  wire \internal_addr_reg[3]_i_1_n_0 ;
  wire \internal_addr_reg[3]_i_1_n_1 ;
  wire \internal_addr_reg[3]_i_1_n_2 ;
  wire \internal_addr_reg[3]_i_1_n_3 ;
  wire \internal_addr_reg[3]_i_1_n_4 ;
  wire \internal_addr_reg[3]_i_1_n_5 ;
  wire \internal_addr_reg[3]_i_1_n_6 ;
  wire \internal_addr_reg[3]_i_1_n_7 ;
  wire \internal_addr_reg[7]_i_1_n_0 ;
  wire \internal_addr_reg[7]_i_1_n_1 ;
  wire \internal_addr_reg[7]_i_1_n_2 ;
  wire \internal_addr_reg[7]_i_1_n_3 ;
  wire \internal_addr_reg[7]_i_1_n_4 ;
  wire \internal_addr_reg[7]_i_1_n_5 ;
  wire \internal_addr_reg[7]_i_1_n_6 ;
  wire \internal_addr_reg[7]_i_1_n_7 ;
  wire [15:0]pixel;
  wire vid;
  wire vs;
  wire [3:3]\NLW_internal_addr_reg[11]_i_3_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[3]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[0]),
        .O(\B[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[4]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[1]),
        .O(\B[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[5]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[2]),
        .O(\B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[6]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[3]),
        .O(\B[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \B[7]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[4]),
        .O(\B[7]_i_1_n_0 ));
  FDRE \B_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\B[3]_i_1_n_0 ),
        .Q(B[0]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \B_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\B[4]_i_1_n_0 ),
        .Q(B[1]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \B_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\B[5]_i_1_n_0 ),
        .Q(B[2]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \B_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\B[6]_i_1_n_0 ),
        .Q(B[3]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \B_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\B[7]_i_1_n_0 ),
        .Q(B[4]),
        .R(\R[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[2]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[5]),
        .O(\G[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[3]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[6]),
        .O(\G[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[4]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[7]),
        .O(\G[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[5]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[8]),
        .O(\G[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[6]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[9]),
        .O(\G[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \G[7]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[10]),
        .O(\G[7]_i_1_n_0 ));
  FDRE \G_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[2]_i_1_n_0 ),
        .Q(G[0]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \G_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[3]_i_1_n_0 ),
        .Q(G[1]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \G_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[4]_i_1_n_0 ),
        .Q(G[2]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \G_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[5]_i_1_n_0 ),
        .Q(G[3]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \G_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[6]_i_1_n_0 ),
        .Q(G[4]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \G_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\G[7]_i_1_n_0 ),
        .Q(G[5]),
        .R(\R[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[3]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[11]),
        .O(\R[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[4]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[12]),
        .O(\R[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[5]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[13]),
        .O(\R[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[6]_i_1 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[14]),
        .O(\R[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \R[7]_i_1 
       (.I0(clk_enable),
        .O(\R[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \R[7]_i_2 
       (.I0(\R[7]_i_3_n_0 ),
        .I1(pixel[15]),
        .O(\R[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222222222222222)) 
    \R[7]_i_3 
       (.I0(vid),
        .I1(hcount[4]),
        .I2(hcount[0]),
        .I3(hcount[1]),
        .I4(hcount[2]),
        .I5(hcount[3]),
        .O(\R[7]_i_3_n_0 ));
  FDRE \R_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\R[3]_i_1_n_0 ),
        .Q(R[0]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \R_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\R[4]_i_1_n_0 ),
        .Q(R[1]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \R_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\R[5]_i_1_n_0 ),
        .Q(R[2]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \R_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\R[6]_i_1_n_0 ),
        .Q(R[3]),
        .R(\R[7]_i_1_n_0 ));
  FDRE \R_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\R[7]_i_2_n_0 ),
        .Q(R[4]),
        .R(\R[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \internal_addr[11]_i_1 
       (.I0(clk_enable),
        .I1(vs),
        .O(\internal_addr[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \internal_addr[11]_i_2 
       (.I0(clk_enable),
        .I1(\R[7]_i_3_n_0 ),
        .O(internal_addr));
  LUT1 #(
    .INIT(2'h1)) 
    \internal_addr[3]_i_2 
       (.I0(addr[0]),
        .O(\internal_addr[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[0] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[10] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[11]_i_3_n_5 ),
        .Q(addr[10]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[11] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[11]_i_3_n_4 ),
        .Q(addr[11]),
        .R(\internal_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \internal_addr_reg[11]_i_3 
       (.CI(\internal_addr_reg[7]_i_1_n_0 ),
        .CO({\NLW_internal_addr_reg[11]_i_3_CO_UNCONNECTED [3],\internal_addr_reg[11]_i_3_n_1 ,\internal_addr_reg[11]_i_3_n_2 ,\internal_addr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_addr_reg[11]_i_3_n_4 ,\internal_addr_reg[11]_i_3_n_5 ,\internal_addr_reg[11]_i_3_n_6 ,\internal_addr_reg[11]_i_3_n_7 }),
        .S(addr[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[1] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[2] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[3] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(\internal_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \internal_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\internal_addr_reg[3]_i_1_n_0 ,\internal_addr_reg[3]_i_1_n_1 ,\internal_addr_reg[3]_i_1_n_2 ,\internal_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\internal_addr_reg[3]_i_1_n_4 ,\internal_addr_reg[3]_i_1_n_5 ,\internal_addr_reg[3]_i_1_n_6 ,\internal_addr_reg[3]_i_1_n_7 }),
        .S({addr[3:1],\internal_addr[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[4] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[5] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[6] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[7] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(\internal_addr[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \internal_addr_reg[7]_i_1 
       (.CI(\internal_addr_reg[3]_i_1_n_0 ),
        .CO({\internal_addr_reg[7]_i_1_n_0 ,\internal_addr_reg[7]_i_1_n_1 ,\internal_addr_reg[7]_i_1_n_2 ,\internal_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\internal_addr_reg[7]_i_1_n_4 ,\internal_addr_reg[7]_i_1_n_5 ,\internal_addr_reg[7]_i_1_n_6 ,\internal_addr_reg[7]_i_1_n_7 }),
        .S(addr[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[8] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[11]_i_3_n_7 ),
        .Q(addr[8]),
        .R(\internal_addr[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_addr_reg[9] 
       (.C(clk),
        .CE(internal_addr),
        .D(\internal_addr_reg[11]_i_3_n_6 ),
        .Q(addr[9]),
        .R(\internal_addr[11]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
