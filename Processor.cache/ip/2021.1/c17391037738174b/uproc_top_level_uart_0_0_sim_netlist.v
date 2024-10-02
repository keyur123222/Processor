// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Sep 26 12:03:36 2024
// Host        : Key running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uproc_top_level_uart_0_0_sim_netlist.v
// Design      : uproc_top_level_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart
   (charRec,
    newChar,
    tx,
    ready,
    en,
    rst,
    clk,
    send,
    rx,
    charSend);
  output [7:0]charRec;
  output newChar;
  output tx;
  output ready;
  input en;
  input rst;
  input clk;
  input send;
  input rx;
  input [7:0]charSend;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx r_x
       (.charRec(charRec),
        .clk(clk),
        .en(en),
        .newChar(newChar),
        .rst(rst),
        .rx(rx));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx t_x
       (.charSend(charSend),
        .clk(clk),
        .en(en),
        .ready(ready),
        .rst(rst),
        .send(send),
        .tx(tx));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (newChar,
    charRec,
    clk,
    en,
    rst,
    rx);
  output newChar;
  output [7:0]charRec;
  input clk;
  input en;
  input rst;
  input rx;

  wire \FSM_onehot_curr[0]_i_1__0_n_0 ;
  wire \FSM_onehot_curr[1]_i_1__0_n_0 ;
  wire \FSM_onehot_curr[2]_i_1__0_n_0 ;
  wire \FSM_onehot_curr_reg_n_0_[0] ;
  wire \FSM_onehot_curr_reg_n_0_[1] ;
  wire \FSM_onehot_curr_reg_n_0_[2] ;
  wire [7:0]charRec;
  wire \char[7]_i_1_n_0 ;
  wire clk;
  wire [2:0]count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire [2:1]count_0;
  wire [7:0]d;
  wire en;
  wire \inshift_reg_n_0_[0] ;
  wire maj;
  wire newChar;
  wire newChar_i_1_n_0;
  wire newChar_i_2_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire rst;
  wire rx;

  LUT6 #(
    .INIT(64'hFAFAFAF0505050D0)) 
    \FSM_onehot_curr[0]_i_1__0 
       (.I0(en),
        .I1(maj),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(newChar_i_2_n_0),
        .I4(\FSM_onehot_curr_reg_n_0_[1] ),
        .I5(\FSM_onehot_curr_reg_n_0_[2] ),
        .O(\FSM_onehot_curr[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF5F5A020)) 
    \FSM_onehot_curr[1]_i_1__0 
       (.I0(en),
        .I1(maj),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(newChar_i_2_n_0),
        .I4(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF55DFAAAA0000)) 
    \FSM_onehot_curr[2]_i_1__0 
       (.I0(en),
        .I1(maj),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(newChar_i_2_n_0),
        .I4(\FSM_onehot_curr_reg_n_0_[1] ),
        .I5(\FSM_onehot_curr_reg_n_0_[2] ),
        .O(\FSM_onehot_curr[2]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[2] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \char[7]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[2]),
        .I4(en),
        .I5(rst),
        .O(\char[7]_i_1_n_0 ));
  FDRE \char_reg[0] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[0]),
        .Q(charRec[0]),
        .R(1'b0));
  FDRE \char_reg[1] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[1]),
        .Q(charRec[1]),
        .R(1'b0));
  FDRE \char_reg[2] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[2]),
        .Q(charRec[2]),
        .R(1'b0));
  FDRE \char_reg[3] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[3]),
        .Q(charRec[3]),
        .R(1'b0));
  FDRE \char_reg[4] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[4]),
        .Q(charRec[4]),
        .R(1'b0));
  FDRE \char_reg[5] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[5]),
        .Q(charRec[5]),
        .R(1'b0));
  FDRE \char_reg[6] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[6]),
        .Q(charRec[6]),
        .R(1'b0));
  FDRE \char_reg[7] 
       (.C(clk),
        .CE(\char[7]_i_1_n_0 ),
        .D(d[7]),
        .Q(charRec[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1__0 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \count[1]_i_1 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[1]),
        .I2(count[0]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA08888888)) 
    \count[2]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_curr_reg_n_0_[2] ),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .I5(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \count[2]_i_2 
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[0]),
        .O(count_0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(count[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[1]),
        .Q(count[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(count_0[2]),
        .Q(count[2]),
        .R(rst));
  LUT3 #(
    .INIT(8'hE8)) 
    \d[7]_i_1__0 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(p_2_in),
        .O(maj));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[1]),
        .Q(d[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[2]),
        .Q(d[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[3]),
        .Q(d[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[4]),
        .Q(d[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[5]),
        .Q(d[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[6]),
        .Q(d[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(d[7]),
        .Q(d[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(clk),
        .CE(\count[2]_i_1_n_0 ),
        .D(maj),
        .Q(d[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx),
        .Q(\inshift_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\inshift_reg_n_0_[0] ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \inshift_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_1_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FEAA02AA)) 
    newChar_i_1
       (.I0(newChar),
        .I1(\FSM_onehot_curr_reg_n_0_[0] ),
        .I2(newChar_i_2_n_0),
        .I3(en),
        .I4(\FSM_onehot_curr_reg_n_0_[2] ),
        .I5(rst),
        .O(newChar_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    newChar_i_2
       (.I0(\FSM_onehot_curr_reg_n_0_[2] ),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[2]),
        .O(newChar_i_2_n_0));
  FDRE newChar_reg
       (.C(clk),
        .CE(1'b1),
        .D(newChar_i_1_n_0),
        .Q(newChar),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (ready,
    tx,
    clk,
    en,
    send,
    rst,
    charSend);
  output ready;
  output tx;
  input clk;
  input en;
  input send;
  input rst;
  input [7:0]charSend;

  wire \FSM_onehot_curr[0]_i_1_n_0 ;
  wire \FSM_onehot_curr[1]_i_1_n_0 ;
  wire \FSM_onehot_curr[2]_i_1_n_0 ;
  wire \FSM_onehot_curr_reg_n_0_[0] ;
  wire \FSM_onehot_curr_reg_n_0_[1] ;
  wire [7:0]charSend;
  wire clk;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire [3:0]count_reg;
  wire \d[7]_i_1_n_0 ;
  wire \d_reg_n_0_[0] ;
  wire \d_reg_n_0_[1] ;
  wire \d_reg_n_0_[2] ;
  wire \d_reg_n_0_[3] ;
  wire \d_reg_n_0_[4] ;
  wire \d_reg_n_0_[5] ;
  wire \d_reg_n_0_[6] ;
  wire \d_reg_n_0_[7] ;
  wire en;
  wire ready;
  wire ready_i_1_n_0;
  wire rst;
  wire send;
  wire tx;
  wire tx_temp;
  wire tx_temp_i_1_n_0;
  wire tx_temp_i_2_n_0;
  wire tx_temp_i_4_n_0;
  wire tx_temp_i_5_n_0;

  LUT6 #(
    .INIT(64'hFAFA5050FAF07070)) 
    \FSM_onehot_curr[0]_i_1 
       (.I0(en),
        .I1(send),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(count_reg[3]),
        .I4(count),
        .I5(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F5F5A0808080)) 
    \FSM_onehot_curr[1]_i_1 
       (.I0(en),
        .I1(send),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(count_reg[3]),
        .I4(count),
        .I5(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAA557F0000)) 
    \FSM_onehot_curr[2]_i_1 
       (.I0(en),
        .I1(send),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(count_reg[3]),
        .I4(count),
        .I5(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(\FSM_onehot_curr[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "idle:001,start:010,data:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_curr[2]_i_1_n_0 ),
        .Q(count),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[3]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \count[1]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \count[2]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .O(\count[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(en),
        .I1(count),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \count[3]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(\count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[3]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[3]_i_1_n_0 ),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(count_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[3]_i_1_n_0 ),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[3]_i_1_n_0 ),
        .D(\count[3]_i_2_n_0 ),
        .Q(count_reg[3]),
        .R(rst));
  LUT3 #(
    .INIT(8'h80)) 
    \d[7]_i_1 
       (.I0(en),
        .I1(send),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .O(\d[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[0] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[0]),
        .Q(\d_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[1] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[1]),
        .Q(\d_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[2] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[2]),
        .Q(\d_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[3] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[3]),
        .Q(\d_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[4] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[4]),
        .Q(\d_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[5] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[5]),
        .Q(\d_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[6] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[6]),
        .Q(\d_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \d_reg[7] 
       (.C(clk),
        .CE(\d[7]_i_1_n_0 ),
        .D(charSend[7]),
        .Q(\d_reg_n_0_[7] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F2AAAA)) 
    ready_i_1
       (.I0(ready),
        .I1(\FSM_onehot_curr_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(count),
        .I4(en),
        .I5(rst),
        .O(ready_i_1_n_0));
  FDRE ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    tx_temp_i_1
       (.I0(tx),
        .I1(tx_temp_i_2_n_0),
        .I2(tx_temp),
        .I3(rst),
        .O(tx_temp_i_1_n_0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    tx_temp_i_2
       (.I0(en),
        .I1(count),
        .I2(\FSM_onehot_curr_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_reg_n_0_[1] ),
        .O(tx_temp_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEFEAAAAAAAA)) 
    tx_temp_i_3
       (.I0(\FSM_onehot_curr_reg_n_0_[0] ),
        .I1(count_reg[3]),
        .I2(tx_temp_i_4_n_0),
        .I3(count_reg[2]),
        .I4(tx_temp_i_5_n_0),
        .I5(count),
        .O(tx_temp));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_temp_i_4
       (.I0(\d_reg_n_0_[3] ),
        .I1(\d_reg_n_0_[2] ),
        .I2(count_reg[1]),
        .I3(\d_reg_n_0_[1] ),
        .I4(count_reg[0]),
        .I5(\d_reg_n_0_[0] ),
        .O(tx_temp_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_temp_i_5
       (.I0(\d_reg_n_0_[7] ),
        .I1(\d_reg_n_0_[6] ),
        .I2(count_reg[1]),
        .I3(\d_reg_n_0_[5] ),
        .I4(count_reg[0]),
        .I5(\d_reg_n_0_[4] ),
        .O(tx_temp_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    tx_temp_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_temp_i_1_n_0),
        .Q(tx),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "uproc_top_level_uart_0_0,uart,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    en,
    send,
    rx,
    rst,
    charSend,
    ready,
    tx,
    newChar,
    charRec);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0" *) input clk;
  input en;
  input send;
  input rx;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]charSend;
  output ready;
  output tx;
  output newChar;
  output [7:0]charRec;

  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire en;
  wire newChar;
  wire ready;
  wire rst;
  wire rx;
  wire send;
  wire tx;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart U0
       (.charRec(charRec),
        .charSend(charSend),
        .clk(clk),
        .en(en),
        .newChar(newChar),
        .ready(ready),
        .rst(rst),
        .rx(rx),
        .send(send),
        .tx(tx));
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
