-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Oct  1 19:15:01 2024
-- Host        : Key running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_controls_0_0/uproc_top_level_controls_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_controls_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_controls_0_0_controls is
  port (
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    fbRST : out STD_LOGIC;
    fbWr_en : out STD_LOGIC;
    d_wr_en : out STD_LOGIC;
    send : out STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    irWord : in STD_LOGIC_VECTOR ( 30 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uproc_top_level_controls_0_0_controls : entity is "controls";
end uproc_top_level_controls_0_0_controls;

architecture STRUCTURE of uproc_top_level_controls_0_0_controls is
  signal \FSM_onehot_curr[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[14]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[15]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[16]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[16]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[18]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[19]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[20]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[21]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[22]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[23]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[23]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[8]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[14]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[20]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[21]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[22]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[23]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[9]\ : STD_LOGIC;
  signal aluA0 : STD_LOGIC;
  signal \aluA[15]_i_1_n_0\ : STD_LOGIC;
  signal alu_result : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal alu_result0 : STD_LOGIC;
  signal \alu_result[0]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[0]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[0]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[10]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[10]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[10]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[11]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[11]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[11]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[12]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[12]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[12]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[13]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[13]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[13]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[14]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[14]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[14]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[15]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[15]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[15]_i_4_n_0\ : STD_LOGIC;
  signal \alu_result[15]_i_5_n_0\ : STD_LOGIC;
  signal \alu_result[1]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[1]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[1]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[2]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[2]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[2]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[3]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[3]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[3]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[4]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[4]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[4]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[5]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[5]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[5]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[6]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[6]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[6]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[7]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[7]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[7]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[8]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[8]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[8]_i_3_n_0\ : STD_LOGIC;
  signal \alu_result[9]_i_1_n_0\ : STD_LOGIC;
  signal \alu_result[9]_i_2_n_0\ : STD_LOGIC;
  signal \alu_result[9]_i_3_n_0\ : STD_LOGIC;
  signal \charSend[7]_i_1_n_0\ : STD_LOGIC;
  signal dAddr0 : STD_LOGIC;
  signal \dAddr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__0_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__0_n_1\ : STD_LOGIC;
  signal \dAddr0_carry__0_n_2\ : STD_LOGIC;
  signal \dAddr0_carry__0_n_3\ : STD_LOGIC;
  signal \dAddr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__1_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__1_n_1\ : STD_LOGIC;
  signal \dAddr0_carry__1_n_2\ : STD_LOGIC;
  signal \dAddr0_carry__1_n_3\ : STD_LOGIC;
  signal \dAddr0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \dAddr0_carry__2_n_2\ : STD_LOGIC;
  signal \dAddr0_carry__2_n_3\ : STD_LOGIC;
  signal dAddr0_carry_i_1_n_0 : STD_LOGIC;
  signal dAddr0_carry_i_2_n_0 : STD_LOGIC;
  signal dAddr0_carry_i_3_n_0 : STD_LOGIC;
  signal dAddr0_carry_i_4_n_0 : STD_LOGIC;
  signal dAddr0_carry_n_0 : STD_LOGIC;
  signal dAddr0_carry_n_1 : STD_LOGIC;
  signal dAddr0_carry_n_2 : STD_LOGIC;
  signal dAddr0_carry_n_3 : STD_LOGIC;
  signal \dAddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \dOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \^d_wr_en\ : STD_LOGIC;
  signal d_wr_en_i_1_n_0 : STD_LOGIC;
  signal fbAddr10 : STD_LOGIC;
  signal \fbAddr1[0]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[10]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[11]_i_2_n_0\ : STD_LOGIC;
  signal \fbAddr1[11]_i_3_n_0\ : STD_LOGIC;
  signal \fbAddr1[1]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[2]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[3]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[4]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[5]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[6]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[7]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[8]_i_1_n_0\ : STD_LOGIC;
  signal \fbAddr1[9]_i_1_n_0\ : STD_LOGIC;
  signal fbDout10 : STD_LOGIC;
  signal \fbDout1[15]_i_1_n_0\ : STD_LOGIC;
  signal \^fbrst\ : STD_LOGIC;
  signal fbRST_i_1_n_0 : STD_LOGIC;
  signal \^fbwr_en\ : STD_LOGIC;
  signal fbWr_en_i_1_n_0 : STD_LOGIC;
  signal imm_addr0 : STD_LOGIC;
  signal \imm_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[14]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \imm_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[14]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[15]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \imm_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal in11 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal in27 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in28 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal instruction : STD_LOGIC;
  signal instruction0 : STD_LOGIC;
  signal \instruction_reg_n_0_[10]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[12]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[13]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[14]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[15]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[16]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[17]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[18]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[19]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[1]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[20]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[21]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[22]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[23]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[24]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[25]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[26]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[27]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[28]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[29]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[2]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[3]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[4]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[5]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[6]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[7]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[8]\ : STD_LOGIC;
  signal \instruction_reg_n_0_[9]\ : STD_LOGIC;
  signal irAddr0 : STD_LOGIC;
  signal \irAddr[13]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pc : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pc0 : STD_LOGIC;
  signal pc_1 : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal rID10 : STD_LOGIC;
  signal \rID1[0]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[0]_i_2_n_0\ : STD_LOGIC;
  signal \rID1[1]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[2]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[3]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_2_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_3_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_4_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_5_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_6_n_0\ : STD_LOGIC;
  signal \^rid2\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rID20 : STD_LOGIC;
  signal \rID2[1]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[4]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[4]_i_3_n_0\ : STD_LOGIC;
  signal reg1_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reg1_addr0 : STD_LOGIC;
  signal \reg1_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_addr[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_11_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_12_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_13_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_14_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_15_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_16_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_17_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_18_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_19_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_20_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_8_n_0\ : STD_LOGIC;
  signal \reg1_addr[4]_i_9_n_0\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_10_n_1\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_10_n_2\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_10_n_3\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_5_n_2\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_5_n_3\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_7_n_1\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_7_n_2\ : STD_LOGIC;
  signal \reg1_addr_reg[4]_i_7_n_3\ : STD_LOGIC;
  signal \reg1_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg1_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg1_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg1_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg1_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal reg2_value0 : STD_LOGIC;
  signal \reg2_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg2_value_reg_n_0_[9]\ : STD_LOGIC;
  signal reg3_value : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg3_value0 : STD_LOGIC;
  signal reg3_value_0 : STD_LOGIC;
  signal regwD10 : STD_LOGIC;
  signal \regwD1[0]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[10]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[11]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[12]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[13]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[14]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[15]_i_2_n_0\ : STD_LOGIC;
  signal \regwD1[15]_i_3_n_0\ : STD_LOGIC;
  signal \regwD1[1]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[2]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[3]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[4]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[5]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[6]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[7]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[8]_i_1_n_0\ : STD_LOGIC;
  signal \regwD1[9]_i_1_n_0\ : STD_LOGIC;
  signal regwD20 : STD_LOGIC;
  signal \regwD2[15]_i_1_n_0\ : STD_LOGIC;
  signal \^send\ : STD_LOGIC;
  signal send0 : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal \^wr_enr1\ : STD_LOGIC;
  signal wr_enR10 : STD_LOGIC;
  signal wr_enR1_i_1_n_0 : STD_LOGIC;
  signal \^wr_enr2\ : STD_LOGIC;
  signal wr_enR2_i_1_n_0 : STD_LOGIC;
  signal \NLW_dAddr0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dAddr0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg1_addr_reg[4]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reg1_addr_reg[4]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_addr_reg[4]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reg1_addr_reg[4]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg1_addr_reg[4]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reg1_addr_reg[4]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_curr[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[22]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[23]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_curr[8]_i_2\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[10]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[11]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[12]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[13]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[14]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[15]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[16]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[17]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[18]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[19]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[20]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[21]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[22]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[23]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[3]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[4]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[5]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[6]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[7]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[8]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[9]\ : label is "jmp:000100000000000000000000,recv:000000000000000000100000,lw:000000001000000000000000,jr:000000000000000000010000,sw:000001000000000000000000,finish:100000000000000000000000,store2:000000100000000000000000,send_asip:000000000000000100000000,store:000000010000000000000000,decode2:000000000000000000000100,clrscr:010000000000000000000000,decode1:000000000000000000000010,wpix:000000000000000010000000,rpix:000000000000000001000000,ori:000000000100000000000000,calc2:000000000000010000000000,fetch:000000000000000000000001,equals:000000000001000000000000,calc:000000000000001000000000,nequal:000000000010000000000000,iops:000000000000100000000000,jops:000010000000000000000000,rops:000000000000000000001000,jal:001000000000000000000000";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of dAddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dAddr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dAddr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \dAddr0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of fbRST_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \imm_addr[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \imm_addr[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \imm_addr[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \imm_addr[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \imm_addr[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \imm_addr[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \imm_addr[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \imm_addr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \imm_addr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \imm_addr[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \imm_addr[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \imm_addr[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \imm_addr[9]_i_1\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \rID1[4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rID2[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg1_addr[4]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \regwD1[15]_i_3\ : label is "soft_lutpair3";
begin
  d_wr_en <= \^d_wr_en\;
  fbRST <= \^fbrst\;
  fbWr_en <= \^fbwr_en\;
  rID2(4 downto 0) <= \^rid2\(4 downto 0);
  send <= \^send\;
  wr_enR1 <= \^wr_enr1\;
  wr_enR2 <= \^wr_enr2\;
\FSM_onehot_curr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \FSM_onehot_curr[11]_i_1_n_0\
    );
\FSM_onehot_curr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => \instruction_reg_n_0_[28]\,
      O => \FSM_onehot_curr[12]_i_1_n_0\
    );
\FSM_onehot_curr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => \instruction_reg_n_0_[28]\,
      O => \FSM_onehot_curr[13]_i_1_n_0\
    );
\FSM_onehot_curr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      I2 => \instruction_reg_n_0_[28]\,
      I3 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[14]_i_1_n_0\
    );
\FSM_onehot_curr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \instruction_reg_n_0_[29]\,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      I2 => \instruction_reg_n_0_[28]\,
      I3 => \instruction_reg_n_0_[27]\,
      O => \FSM_onehot_curr[15]_i_1_n_0\
    );
\FSM_onehot_curr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_curr[16]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[5]\,
      I2 => newChar,
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \FSM_onehot_curr[16]_i_1_n_0\
    );
\FSM_onehot_curr[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[10]\,
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => \FSM_onehot_curr_reg_n_0_[13]\,
      I3 => \FSM_onehot_curr_reg_n_0_[12]\,
      I4 => \FSM_onehot_curr_reg_n_0_[6]\,
      O => \FSM_onehot_curr[16]_i_2_n_0\
    );
\FSM_onehot_curr[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[18]_i_1_n_0\
    );
\FSM_onehot_curr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      O => \FSM_onehot_curr[19]_i_1_n_0\
    );
\FSM_onehot_curr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \instruction_reg_n_0_[28]\,
      I5 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[20]_i_1_n_0\
    );
\FSM_onehot_curr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \instruction_reg_n_0_[28]\,
      I5 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[21]_i_1_n_0\
    );
\FSM_onehot_curr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[19]\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \instruction_reg_n_0_[28]\,
      I4 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[22]_i_1_n_0\
    );
\FSM_onehot_curr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \FSM_onehot_curr_reg_n_0_[22]\,
      I3 => \FSM_onehot_curr_reg_n_0_[18]\,
      I4 => \FSM_onehot_curr[23]_i_2_n_0\,
      O => \FSM_onehot_curr[23]_i_1_n_0\
    );
\FSM_onehot_curr[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[20]\,
      I1 => \FSM_onehot_curr_reg_n_0_[21]\,
      I2 => ready,
      I3 => \FSM_onehot_curr_reg_n_0_[8]\,
      O => \FSM_onehot_curr[23]_i_2_n_0\
    );
\FSM_onehot_curr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => p_0_in(1),
      O => \FSM_onehot_curr[3]_i_1_n_0\
    );
\FSM_onehot_curr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \instruction_reg_n_0_[28]\,
      I1 => \instruction_reg_n_0_[27]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => reg3_value_0,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \FSM_onehot_curr[4]_i_1_n_0\
    );
\FSM_onehot_curr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0202"
    )
        port map (
      I0 => \FSM_onehot_curr[5]_i_2_n_0\,
      I1 => \instruction_reg_n_0_[27]\,
      I2 => \instruction_reg_n_0_[28]\,
      I3 => newChar,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      O => \FSM_onehot_curr[5]_i_1_n_0\
    );
\FSM_onehot_curr[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => reg3_value_0,
      I3 => \instruction_reg_n_0_[29]\,
      O => \FSM_onehot_curr[5]_i_2_n_0\
    );
\FSM_onehot_curr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \instruction_reg_n_0_[28]\,
      I1 => \instruction_reg_n_0_[27]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => reg3_value_0,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \FSM_onehot_curr[6]_i_1_n_0\
    );
\FSM_onehot_curr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \instruction_reg_n_0_[27]\,
      I1 => \instruction_reg_n_0_[28]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => reg3_value_0,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \FSM_onehot_curr[7]_i_1_n_0\
    );
\FSM_onehot_curr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => \FSM_onehot_curr[8]_i_2_n_0\,
      I1 => \instruction_reg_n_0_[28]\,
      I2 => \instruction_reg_n_0_[27]\,
      I3 => \instruction_reg_n_0_[29]\,
      I4 => ready,
      I5 => \FSM_onehot_curr_reg_n_0_[8]\,
      O => \FSM_onehot_curr[8]_i_1_n_0\
    );
\FSM_onehot_curr[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => reg3_value_0,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => \FSM_onehot_curr[8]_i_2_n_0\
    );
\FSM_onehot_curr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFBFBF00000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \instruction_reg_n_0_[29]\,
      I3 => \instruction_reg_n_0_[28]\,
      I4 => \instruction_reg_n_0_[27]\,
      I5 => reg3_value_0,
      O => \FSM_onehot_curr[9]_i_1_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_onehot_curr_reg_n_0_[23]\,
      PRE => rst,
      Q => pc_1
    );
\FSM_onehot_curr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr_reg_n_0_[9]\,
      Q => \FSM_onehot_curr_reg_n_0_[10]\
    );
\FSM_onehot_curr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[11]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[11]\
    );
\FSM_onehot_curr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[12]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[12]\
    );
\FSM_onehot_curr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[13]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[13]\
    );
\FSM_onehot_curr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[14]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[14]\
    );
\FSM_onehot_curr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[15]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[15]\
    );
\FSM_onehot_curr_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[16]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[16]\
    );
\FSM_onehot_curr_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr_reg_n_0_[16]\,
      Q => \FSM_onehot_curr_reg_n_0_[17]\
    );
\FSM_onehot_curr_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[18]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[18]\
    );
\FSM_onehot_curr_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[19]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[19]\
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => pc_1,
      Q => instruction
    );
\FSM_onehot_curr_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[20]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[20]\
    );
\FSM_onehot_curr_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[21]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[21]\
    );
\FSM_onehot_curr_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[22]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[22]\
    );
\FSM_onehot_curr_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[23]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[23]\
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => instruction,
      Q => \FSM_onehot_curr_reg_n_0_[2]\
    );
\FSM_onehot_curr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[3]_i_1_n_0\,
      Q => reg3_value_0
    );
\FSM_onehot_curr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[4]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[4]\
    );
\FSM_onehot_curr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[5]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[5]\
    );
\FSM_onehot_curr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[6]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[6]\
    );
\FSM_onehot_curr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[7]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[7]\
    );
\FSM_onehot_curr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[8]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[8]\
    );
\FSM_onehot_curr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => rst,
      D => \FSM_onehot_curr[9]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[9]\
    );
\aluA[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[9]\,
      O => \aluA[15]_i_1_n_0\
    );
\aluA[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[9]\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => en,
      I3 => rst,
      O => aluA0
    );
\aluA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[0]\,
      Q => aluA(0),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[10]\,
      Q => aluA(10),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[11]\,
      Q => aluA(11),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[12]\,
      Q => aluA(12),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[13]\,
      Q => aluA(13),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[14]\,
      Q => aluA(14),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[15]\,
      Q => aluA(15),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[1]\,
      Q => aluA(1),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[2]\,
      Q => aluA(2),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[3]\,
      Q => aluA(3),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[4]\,
      Q => aluA(4),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[5]\,
      Q => aluA(5),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[6]\,
      Q => aluA(6),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[7]\,
      Q => aluA(7),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[8]\,
      Q => aluA(8),
      R => \aluA[15]_i_1_n_0\
    );
\aluA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \reg2_value_reg_n_0_[9]\,
      Q => aluA(9),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(0),
      Q => aluB(0),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(10),
      Q => aluB(10),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(11),
      Q => aluB(11),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(12),
      Q => aluB(12),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(13),
      Q => aluB(13),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(14),
      Q => aluB(14),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(15),
      Q => aluB(15),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(1),
      Q => aluB(1),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(2),
      Q => aluB(2),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(3),
      Q => aluB(3),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(4),
      Q => aluB(4),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(5),
      Q => aluB(5),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(6),
      Q => aluB(6),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(7),
      Q => aluB(7),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(8),
      Q => aluB(8),
      R => \aluA[15]_i_1_n_0\
    );
\aluB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => reg3_value(9),
      Q => aluB(9),
      R => \aluA[15]_i_1_n_0\
    );
\aluOp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \instruction_reg_n_0_[27]\,
      Q => aluOp(0),
      R => \aluA[15]_i_1_n_0\
    );
\aluOp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \instruction_reg_n_0_[28]\,
      Q => aluOp(1),
      R => \aluA[15]_i_1_n_0\
    );
\aluOp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => \instruction_reg_n_0_[29]\,
      Q => aluOp(2),
      R => \aluA[15]_i_1_n_0\
    );
\aluOp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => aluA0,
      D => p_0_in(0),
      Q => aluOp(3),
      R => \aluA[15]_i_1_n_0\
    );
\alu_result[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[0]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(0),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(0),
      I5 => \alu_result[0]_i_3_n_0\,
      O => \alu_result[0]_i_1_n_0\
    );
\alu_result[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[0]\,
      I1 => \imm_addr_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[0]_i_2_n_0\
    );
\alu_result[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(0),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(0),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(0),
      O => \alu_result[0]_i_3_n_0\
    );
\alu_result[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[10]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(10),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(10),
      I5 => \alu_result[10]_i_3_n_0\,
      O => \alu_result[10]_i_1_n_0\
    );
\alu_result[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[10]\,
      I1 => \imm_addr_reg_n_0_[10]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[10]_i_2_n_0\
    );
\alu_result[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(10),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(10),
      O => \alu_result[10]_i_3_n_0\
    );
\alu_result[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[11]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(11),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(11),
      I5 => \alu_result[11]_i_3_n_0\,
      O => \alu_result[11]_i_1_n_0\
    );
\alu_result[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[11]\,
      I1 => \imm_addr_reg_n_0_[11]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[11]_i_2_n_0\
    );
\alu_result[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(11),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(11),
      O => \alu_result[11]_i_3_n_0\
    );
\alu_result[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[12]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(12),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(12),
      I5 => \alu_result[12]_i_3_n_0\,
      O => \alu_result[12]_i_1_n_0\
    );
\alu_result[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[12]\,
      I1 => \imm_addr_reg_n_0_[12]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[12]_i_2_n_0\
    );
\alu_result[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(12),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(12),
      O => \alu_result[12]_i_3_n_0\
    );
\alu_result[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[13]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(13),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(13),
      I5 => \alu_result[13]_i_3_n_0\,
      O => \alu_result[13]_i_1_n_0\
    );
\alu_result[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[13]\,
      I1 => \imm_addr_reg_n_0_[13]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[13]_i_2_n_0\
    );
\alu_result[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(13),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(13),
      O => \alu_result[13]_i_3_n_0\
    );
\alu_result[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[14]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(14),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(14),
      I5 => \alu_result[14]_i_3_n_0\,
      O => \alu_result[14]_i_1_n_0\
    );
\alu_result[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[14]\,
      I1 => \imm_addr_reg_n_0_[14]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[14]_i_2_n_0\
    );
\alu_result[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(14),
      I2 => regrD1(14),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      O => \alu_result[14]_i_3_n_0\
    );
\alu_result[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \rID1[4]_i_3_n_0\,
      I1 => \alu_result[15]_i_3_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[6]\,
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => \FSM_onehot_curr_reg_n_0_[15]\,
      I5 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => alu_result0
    );
\alu_result[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[15]_i_4_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(15),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(15),
      I5 => \alu_result[15]_i_5_n_0\,
      O => \alu_result[15]_i_2_n_0\
    );
\alu_result[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[4]\,
      I1 => \FSM_onehot_curr_reg_n_0_[5]\,
      I2 => \reg1_addr_reg[4]_i_6_n_2\,
      I3 => \FSM_onehot_curr_reg_n_0_[12]\,
      I4 => \reg1_addr_reg[4]_i_5_n_2\,
      I5 => \FSM_onehot_curr_reg_n_0_[13]\,
      O => \alu_result[15]_i_3_n_0\
    );
\alu_result[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[15]\,
      I1 => \imm_addr_reg_n_0_[15]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[15]_i_4_n_0\
    );
\alu_result[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(15),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(15),
      O => \alu_result[15]_i_5_n_0\
    );
\alu_result[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[1]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(1),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(1),
      I5 => \alu_result[1]_i_3_n_0\,
      O => \alu_result[1]_i_1_n_0\
    );
\alu_result[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[1]\,
      I1 => \imm_addr_reg_n_0_[1]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[1]_i_2_n_0\
    );
\alu_result[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(1),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(1),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(1),
      O => \alu_result[1]_i_3_n_0\
    );
\alu_result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[2]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(2),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(2),
      I5 => \alu_result[2]_i_3_n_0\,
      O => \alu_result[2]_i_1_n_0\
    );
\alu_result[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[2]\,
      I1 => \imm_addr_reg_n_0_[2]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[2]_i_2_n_0\
    );
\alu_result[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(2),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(2),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(2),
      O => \alu_result[2]_i_3_n_0\
    );
\alu_result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[3]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(3),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(3),
      I5 => \alu_result[3]_i_3_n_0\,
      O => \alu_result[3]_i_1_n_0\
    );
\alu_result[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[3]\,
      I1 => \imm_addr_reg_n_0_[3]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[3]_i_2_n_0\
    );
\alu_result[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(3),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(3),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(3),
      O => \alu_result[3]_i_3_n_0\
    );
\alu_result[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[4]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(4),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(4),
      I5 => \alu_result[4]_i_3_n_0\,
      O => \alu_result[4]_i_1_n_0\
    );
\alu_result[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[4]\,
      I1 => \imm_addr_reg_n_0_[4]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[4]_i_2_n_0\
    );
\alu_result[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(4),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(4),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(4),
      O => \alu_result[4]_i_3_n_0\
    );
\alu_result[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[5]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(5),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(5),
      I5 => \alu_result[5]_i_3_n_0\,
      O => \alu_result[5]_i_1_n_0\
    );
\alu_result[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[5]\,
      I1 => \imm_addr_reg_n_0_[5]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[5]_i_2_n_0\
    );
\alu_result[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(5),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(5),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(5),
      O => \alu_result[5]_i_3_n_0\
    );
\alu_result[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[6]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(6),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(6),
      I5 => \alu_result[6]_i_3_n_0\,
      O => \alu_result[6]_i_1_n_0\
    );
\alu_result[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[6]\,
      I1 => \imm_addr_reg_n_0_[6]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[6]_i_2_n_0\
    );
\alu_result[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(6),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(6),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(6),
      O => \alu_result[6]_i_3_n_0\
    );
\alu_result[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[7]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[6]\,
      I2 => fbDin1(7),
      I3 => \FSM_onehot_curr_reg_n_0_[10]\,
      I4 => aluResult(7),
      I5 => \alu_result[7]_i_3_n_0\,
      O => \alu_result[7]_i_1_n_0\
    );
\alu_result[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[7]\,
      I1 => \imm_addr_reg_n_0_[7]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[7]_i_2_n_0\
    );
\alu_result[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => dIn(7),
      I1 => \FSM_onehot_curr_reg_n_0_[15]\,
      I2 => regrD1(7),
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_reg_n_0_[5]\,
      I5 => charRec(7),
      O => \alu_result[7]_i_3_n_0\
    );
\alu_result[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[8]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(8),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(8),
      I5 => \alu_result[8]_i_3_n_0\,
      O => \alu_result[8]_i_1_n_0\
    );
\alu_result[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[8]\,
      I1 => \imm_addr_reg_n_0_[8]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[8]_i_2_n_0\
    );
\alu_result[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(8),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(8),
      O => \alu_result[8]_i_3_n_0\
    );
\alu_result[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \alu_result[9]_i_2_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[10]\,
      I2 => aluResult(9),
      I3 => \FSM_onehot_curr_reg_n_0_[15]\,
      I4 => dIn(9),
      I5 => \alu_result[9]_i_3_n_0\,
      O => \alu_result[9]_i_1_n_0\
    );
\alu_result[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEECCC0"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[9]\,
      I1 => \imm_addr_reg_n_0_[9]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => \FSM_onehot_curr_reg_n_0_[14]\,
      O => \alu_result[9]_i_2_n_0\
    );
\alu_result[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[6]\,
      I1 => fbDin1(9),
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => regrD1(9),
      O => \alu_result[9]_i_3_n_0\
    );
\alu_result_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[0]_i_1_n_0\,
      Q => alu_result(0),
      R => '0'
    );
\alu_result_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[10]_i_1_n_0\,
      Q => alu_result(10),
      R => '0'
    );
\alu_result_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[11]_i_1_n_0\,
      Q => alu_result(11),
      R => '0'
    );
\alu_result_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[12]_i_1_n_0\,
      Q => alu_result(12),
      R => '0'
    );
\alu_result_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[13]_i_1_n_0\,
      Q => alu_result(13),
      R => '0'
    );
\alu_result_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[14]_i_1_n_0\,
      Q => alu_result(14),
      R => '0'
    );
\alu_result_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[15]_i_2_n_0\,
      Q => alu_result(15),
      R => '0'
    );
\alu_result_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[1]_i_1_n_0\,
      Q => alu_result(1),
      R => '0'
    );
\alu_result_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[2]_i_1_n_0\,
      Q => alu_result(2),
      R => '0'
    );
\alu_result_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[3]_i_1_n_0\,
      Q => alu_result(3),
      R => '0'
    );
\alu_result_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[4]_i_1_n_0\,
      Q => alu_result(4),
      R => '0'
    );
\alu_result_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[5]_i_1_n_0\,
      Q => alu_result(5),
      R => '0'
    );
\alu_result_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[6]_i_1_n_0\,
      Q => alu_result(6),
      R => '0'
    );
\alu_result_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[7]_i_1_n_0\,
      Q => alu_result(7),
      R => '0'
    );
\alu_result_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[8]_i_1_n_0\,
      Q => alu_result(8),
      R => '0'
    );
\alu_result_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => alu_result0,
      D => \alu_result[9]_i_1_n_0\,
      Q => alu_result(9),
      R => '0'
    );
\charSend[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[23]\,
      I1 => en,
      I2 => rst,
      I3 => \FSM_onehot_curr_reg_n_0_[8]\,
      O => \charSend[7]_i_1_n_0\
    );
\charSend[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[8]\,
      O => send0
    );
\charSend_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(0),
      Q => charSend(0),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(1),
      Q => charSend(1),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(2),
      Q => charSend(2),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(3),
      Q => charSend(3),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(4),
      Q => charSend(4),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(5),
      Q => charSend(5),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(6),
      Q => charSend(6),
      R => \charSend[7]_i_1_n_0\
    );
\charSend_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => send0,
      D => regrD1(7),
      Q => charSend(7),
      R => \charSend[7]_i_1_n_0\
    );
dAddr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dAddr0_carry_n_0,
      CO(2) => dAddr0_carry_n_1,
      CO(1) => dAddr0_carry_n_2,
      CO(0) => dAddr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => regrD1(3 downto 0),
      O(3 downto 0) => in28(3 downto 0),
      S(3) => dAddr0_carry_i_1_n_0,
      S(2) => dAddr0_carry_i_2_n_0,
      S(1) => dAddr0_carry_i_3_n_0,
      S(0) => dAddr0_carry_i_4_n_0
    );
\dAddr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dAddr0_carry_n_0,
      CO(3) => \dAddr0_carry__0_n_0\,
      CO(2) => \dAddr0_carry__0_n_1\,
      CO(1) => \dAddr0_carry__0_n_2\,
      CO(0) => \dAddr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => regrD1(7 downto 4),
      O(3 downto 0) => in28(7 downto 4),
      S(3) => \dAddr0_carry__0_i_1_n_0\,
      S(2) => \dAddr0_carry__0_i_2_n_0\,
      S(1) => \dAddr0_carry__0_i_3_n_0\,
      S(0) => \dAddr0_carry__0_i_4_n_0\
    );
\dAddr0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(7),
      I1 => \instruction_reg_n_0_[8]\,
      O => \dAddr0_carry__0_i_1_n_0\
    );
\dAddr0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(6),
      I1 => \instruction_reg_n_0_[7]\,
      O => \dAddr0_carry__0_i_2_n_0\
    );
\dAddr0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(5),
      I1 => \instruction_reg_n_0_[6]\,
      O => \dAddr0_carry__0_i_3_n_0\
    );
\dAddr0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(4),
      I1 => \instruction_reg_n_0_[5]\,
      O => \dAddr0_carry__0_i_4_n_0\
    );
\dAddr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dAddr0_carry__0_n_0\,
      CO(3) => \dAddr0_carry__1_n_0\,
      CO(2) => \dAddr0_carry__1_n_1\,
      CO(1) => \dAddr0_carry__1_n_2\,
      CO(0) => \dAddr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => regrD1(11 downto 8),
      O(3 downto 0) => in28(11 downto 8),
      S(3) => \dAddr0_carry__1_i_1_n_0\,
      S(2) => \dAddr0_carry__1_i_2_n_0\,
      S(1) => \dAddr0_carry__1_i_3_n_0\,
      S(0) => \dAddr0_carry__1_i_4_n_0\
    );
\dAddr0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(11),
      I1 => \instruction_reg_n_0_[12]\,
      O => \dAddr0_carry__1_i_1_n_0\
    );
\dAddr0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(10),
      I1 => in27(0),
      O => \dAddr0_carry__1_i_2_n_0\
    );
\dAddr0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(9),
      I1 => \instruction_reg_n_0_[10]\,
      O => \dAddr0_carry__1_i_3_n_0\
    );
\dAddr0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(8),
      I1 => \instruction_reg_n_0_[9]\,
      O => \dAddr0_carry__1_i_4_n_0\
    );
\dAddr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \dAddr0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_dAddr0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \dAddr0_carry__2_n_2\,
      CO(0) => \dAddr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => regrD1(13 downto 12),
      O(3) => \NLW_dAddr0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in28(14 downto 12),
      S(3) => '0',
      S(2) => \dAddr0_carry__2_i_1_n_0\,
      S(1) => \dAddr0_carry__2_i_2_n_0\,
      S(0) => \dAddr0_carry__2_i_3_n_0\
    );
\dAddr0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(14),
      I1 => \instruction_reg_n_0_[15]\,
      O => \dAddr0_carry__2_i_1_n_0\
    );
\dAddr0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(13),
      I1 => \instruction_reg_n_0_[14]\,
      O => \dAddr0_carry__2_i_2_n_0\
    );
\dAddr0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(12),
      I1 => \instruction_reg_n_0_[13]\,
      O => \dAddr0_carry__2_i_3_n_0\
    );
dAddr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(3),
      I1 => \instruction_reg_n_0_[4]\,
      O => dAddr0_carry_i_1_n_0
    );
dAddr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(2),
      I1 => \instruction_reg_n_0_[3]\,
      O => dAddr0_carry_i_2_n_0
    );
dAddr0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(1),
      I1 => \instruction_reg_n_0_[2]\,
      O => dAddr0_carry_i_3_n_0
    );
dAddr0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => regrD1(0),
      I1 => \instruction_reg_n_0_[1]\,
      O => dAddr0_carry_i_4_n_0
    );
\dAddr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rID1[4]_i_3_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \dAddr[14]_i_1_n_0\
    );
\dAddr[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA0000000000"
    )
        port map (
      I0 => \instruction_reg_n_0_[29]\,
      I1 => \instruction_reg_n_0_[28]\,
      I2 => \instruction_reg_n_0_[27]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      I4 => \FSM_onehot_curr_reg_n_0_[23]\,
      I5 => \rID1[4]_i_3_n_0\,
      O => dAddr0
    );
\dAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(0),
      Q => dAddr(0),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(10),
      Q => dAddr(10),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(11),
      Q => dAddr(11),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(12),
      Q => dAddr(12),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(13),
      Q => dAddr(13),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(14),
      Q => dAddr(14),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(1),
      Q => dAddr(1),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(2),
      Q => dAddr(2),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(3),
      Q => dAddr(3),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(4),
      Q => dAddr(4),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(5),
      Q => dAddr(5),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(6),
      Q => dAddr(6),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(7),
      Q => dAddr(7),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(8),
      Q => dAddr(8),
      R => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dAddr0,
      D => in28(9),
      Q => dAddr(9),
      R => \dAddr[14]_i_1_n_0\
    );
\dOut[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[18]\,
      O => \dOut[15]_i_1_n_0\
    );
\dOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(0),
      Q => dOut(0),
      R => '0'
    );
\dOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(10),
      Q => dOut(10),
      R => '0'
    );
\dOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(11),
      Q => dOut(11),
      R => '0'
    );
\dOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(12),
      Q => dOut(12),
      R => '0'
    );
\dOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(13),
      Q => dOut(13),
      R => '0'
    );
\dOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(14),
      Q => dOut(14),
      R => '0'
    );
\dOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(15),
      Q => dOut(15),
      R => '0'
    );
\dOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(1),
      Q => dOut(1),
      R => '0'
    );
\dOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(2),
      Q => dOut(2),
      R => '0'
    );
\dOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(3),
      Q => dOut(3),
      R => '0'
    );
\dOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(4),
      Q => dOut(4),
      R => '0'
    );
\dOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(5),
      Q => dOut(5),
      R => '0'
    );
\dOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(6),
      Q => dOut(6),
      R => '0'
    );
\dOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(7),
      Q => dOut(7),
      R => '0'
    );
\dOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(8),
      Q => dOut(8),
      R => '0'
    );
\dOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(9),
      Q => dOut(9),
      R => '0'
    );
d_wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF00A0"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[18]\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => en,
      I3 => rst,
      I4 => \^d_wr_en\,
      O => d_wr_en_i_1_n_0
    );
d_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_wr_en_i_1_n_0,
      Q => \^d_wr_en\,
      R => '0'
    );
\fbAddr1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(0),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[0]\,
      I3 => reg3_value_0,
      O => \fbAddr1[0]_i_1_n_0\
    );
\fbAddr1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(10),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[10]\,
      I3 => reg3_value_0,
      O => \fbAddr1[10]_i_1_n_0\
    );
\fbAddr1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \fbAddr1[11]_i_3_n_0\,
      I3 => \FSM_onehot_curr_reg_n_0_[23]\,
      I4 => \FSM_onehot_curr_reg_n_0_[7]\,
      O => fbAddr10
    );
\fbAddr1[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(11),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[11]\,
      I3 => reg3_value_0,
      O => \fbAddr1[11]_i_2_n_0\
    );
\fbAddr1[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => reg3_value_0,
      I3 => \instruction_reg_n_0_[29]\,
      I4 => \instruction_reg_n_0_[28]\,
      I5 => \instruction_reg_n_0_[27]\,
      O => \fbAddr1[11]_i_3_n_0\
    );
\fbAddr1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(1),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[1]\,
      I3 => reg3_value_0,
      O => \fbAddr1[1]_i_1_n_0\
    );
\fbAddr1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(2),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[2]\,
      I3 => reg3_value_0,
      O => \fbAddr1[2]_i_1_n_0\
    );
\fbAddr1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(3),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[3]\,
      I3 => reg3_value_0,
      O => \fbAddr1[3]_i_1_n_0\
    );
\fbAddr1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(4),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[4]\,
      I3 => reg3_value_0,
      O => \fbAddr1[4]_i_1_n_0\
    );
\fbAddr1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(5),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[5]\,
      I3 => reg3_value_0,
      O => \fbAddr1[5]_i_1_n_0\
    );
\fbAddr1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(6),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[6]\,
      I3 => reg3_value_0,
      O => \fbAddr1[6]_i_1_n_0\
    );
\fbAddr1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(7),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[7]\,
      I3 => reg3_value_0,
      O => \fbAddr1[7]_i_1_n_0\
    );
\fbAddr1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(8),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[8]\,
      I3 => reg3_value_0,
      O => \fbAddr1[8]_i_1_n_0\
    );
\fbAddr1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => regrD1(9),
      I1 => \FSM_onehot_curr_reg_n_0_[7]\,
      I2 => \reg2_value_reg_n_0_[9]\,
      I3 => reg3_value_0,
      O => \fbAddr1[9]_i_1_n_0\
    );
\fbAddr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[0]_i_1_n_0\,
      Q => fbAddr1(0),
      R => '0'
    );
\fbAddr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[10]_i_1_n_0\,
      Q => fbAddr1(10),
      R => '0'
    );
\fbAddr1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[11]_i_2_n_0\,
      Q => fbAddr1(11),
      R => '0'
    );
\fbAddr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[1]_i_1_n_0\,
      Q => fbAddr1(1),
      R => '0'
    );
\fbAddr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[2]_i_1_n_0\,
      Q => fbAddr1(2),
      R => '0'
    );
\fbAddr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[3]_i_1_n_0\,
      Q => fbAddr1(3),
      R => '0'
    );
\fbAddr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[4]_i_1_n_0\,
      Q => fbAddr1(4),
      R => '0'
    );
\fbAddr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[5]_i_1_n_0\,
      Q => fbAddr1(5),
      R => '0'
    );
\fbAddr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[6]_i_1_n_0\,
      Q => fbAddr1(6),
      R => '0'
    );
\fbAddr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[7]_i_1_n_0\,
      Q => fbAddr1(7),
      R => '0'
    );
\fbAddr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[8]_i_1_n_0\,
      Q => fbAddr1(8),
      R => '0'
    );
\fbAddr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbAddr10,
      D => \fbAddr1[9]_i_1_n_0\,
      Q => fbAddr1(9),
      R => '0'
    );
\fbDout1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[23]\,
      I1 => en,
      I2 => rst,
      I3 => \FSM_onehot_curr_reg_n_0_[7]\,
      O => \fbDout1[15]_i_1_n_0\
    );
\fbDout1[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[7]\,
      O => fbDout10
    );
\fbDout1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[0]\,
      Q => fbDout1(0),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[10]\,
      Q => fbDout1(10),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[11]\,
      Q => fbDout1(11),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[12]\,
      Q => fbDout1(12),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[13]\,
      Q => fbDout1(13),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[14]\,
      Q => fbDout1(14),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[15]\,
      Q => fbDout1(15),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[1]\,
      Q => fbDout1(1),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[2]\,
      Q => fbDout1(2),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[3]\,
      Q => fbDout1(3),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[4]\,
      Q => fbDout1(4),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[5]\,
      Q => fbDout1(5),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[6]\,
      Q => fbDout1(6),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[7]\,
      Q => fbDout1(7),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[8]\,
      Q => fbDout1(8),
      R => \fbDout1[15]_i_1_n_0\
    );
\fbDout1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => fbDout10,
      D => \reg2_value_reg_n_0_[9]\,
      Q => fbDout1(9),
      R => \fbDout1[15]_i_1_n_0\
    );
fbRST_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF00A0"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[22]\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => en,
      I3 => rst,
      I4 => \^fbrst\,
      O => fbRST_i_1_n_0
    );
fbRST_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fbRST_i_1_n_0,
      Q => \^fbrst\,
      R => '0'
    );
fbWr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF4400"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[7]\,
      I4 => \^fbwr_en\,
      O => fbWr_en_i_1_n_0
    );
fbWr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fbWr_en_i_1_n_0,
      Q => \^fbwr_en\,
      R => '0'
    );
\imm_addr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => in27(0),
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[1]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[0]_i_1_n_0\
    );
\imm_addr[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[21]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => in27(0),
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[10]_i_1_n_0\
    );
\imm_addr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[22]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[11]_i_1_n_0\
    );
\imm_addr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[23]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[13]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[12]_i_1_n_0\
    );
\imm_addr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[24]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[14]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[13]_i_1_n_0\
    );
\imm_addr[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[25]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[15]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[14]_i_1_n_0\
    );
\imm_addr[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => en,
      I3 => rst,
      O => imm_addr0
    );
\imm_addr[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[26]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[16]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[15]_i_2_n_0\
    );
\imm_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[12]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[2]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[1]_i_1_n_0\
    );
\imm_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[13]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[3]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[2]_i_1_n_0\
    );
\imm_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[14]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[4]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[3]_i_1_n_0\
    );
\imm_addr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[15]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[5]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[4]_i_1_n_0\
    );
\imm_addr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[16]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[6]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[5]_i_1_n_0\
    );
\imm_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[17]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[7]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[6]_i_1_n_0\
    );
\imm_addr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[18]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[8]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[7]_i_1_n_0\
    );
\imm_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[19]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[9]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[8]_i_1_n_0\
    );
\imm_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \instruction_reg_n_0_[20]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[10]\,
      I3 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \imm_addr[9]_i_1_n_0\
    );
\imm_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[0]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[0]\,
      R => '0'
    );
\imm_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[10]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[10]\,
      R => '0'
    );
\imm_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[11]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[11]\,
      R => '0'
    );
\imm_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[12]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[12]\,
      R => '0'
    );
\imm_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[13]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[13]\,
      R => '0'
    );
\imm_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[14]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[14]\,
      R => '0'
    );
\imm_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[15]_i_2_n_0\,
      Q => \imm_addr_reg_n_0_[15]\,
      R => '0'
    );
\imm_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[1]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[1]\,
      R => '0'
    );
\imm_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[2]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[2]\,
      R => '0'
    );
\imm_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[3]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[3]\,
      R => '0'
    );
\imm_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[4]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[4]\,
      R => '0'
    );
\imm_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[5]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[5]\,
      R => '0'
    );
\imm_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[6]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[6]\,
      R => '0'
    );
\imm_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[7]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[7]\,
      R => '0'
    );
\imm_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[8]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[8]\,
      R => '0'
    );
\imm_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => imm_addr0,
      D => \imm_addr[9]_i_1_n_0\,
      Q => \imm_addr_reg_n_0_[9]\,
      R => '0'
    );
\instruction[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => instruction,
      O => instruction0
    );
\instruction_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(9),
      Q => \instruction_reg_n_0_[10]\,
      R => '0'
    );
\instruction_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(10),
      Q => in27(0),
      R => '0'
    );
\instruction_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(11),
      Q => \instruction_reg_n_0_[12]\,
      R => '0'
    );
\instruction_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(12),
      Q => \instruction_reg_n_0_[13]\,
      R => '0'
    );
\instruction_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(13),
      Q => \instruction_reg_n_0_[14]\,
      R => '0'
    );
\instruction_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(14),
      Q => \instruction_reg_n_0_[15]\,
      R => '0'
    );
\instruction_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(15),
      Q => \instruction_reg_n_0_[16]\,
      R => '0'
    );
\instruction_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(16),
      Q => \instruction_reg_n_0_[17]\,
      R => '0'
    );
\instruction_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(17),
      Q => \instruction_reg_n_0_[18]\,
      R => '0'
    );
\instruction_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(18),
      Q => \instruction_reg_n_0_[19]\,
      R => '0'
    );
\instruction_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(0),
      Q => \instruction_reg_n_0_[1]\,
      R => '0'
    );
\instruction_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(19),
      Q => \instruction_reg_n_0_[20]\,
      R => '0'
    );
\instruction_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(20),
      Q => \instruction_reg_n_0_[21]\,
      R => '0'
    );
\instruction_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(21),
      Q => \instruction_reg_n_0_[22]\,
      R => '0'
    );
\instruction_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(22),
      Q => \instruction_reg_n_0_[23]\,
      R => '0'
    );
\instruction_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(23),
      Q => \instruction_reg_n_0_[24]\,
      R => '0'
    );
\instruction_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(24),
      Q => \instruction_reg_n_0_[25]\,
      R => '0'
    );
\instruction_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(25),
      Q => \instruction_reg_n_0_[26]\,
      R => '0'
    );
\instruction_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(26),
      Q => \instruction_reg_n_0_[27]\,
      R => '0'
    );
\instruction_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(27),
      Q => \instruction_reg_n_0_[28]\,
      R => '0'
    );
\instruction_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(28),
      Q => \instruction_reg_n_0_[29]\,
      R => '0'
    );
\instruction_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(1),
      Q => \instruction_reg_n_0_[2]\,
      R => '0'
    );
\instruction_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(29),
      Q => p_0_in(0),
      R => '0'
    );
\instruction_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(30),
      Q => p_0_in(1),
      R => '0'
    );
\instruction_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(2),
      Q => \instruction_reg_n_0_[3]\,
      R => '0'
    );
\instruction_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(3),
      Q => \instruction_reg_n_0_[4]\,
      R => '0'
    );
\instruction_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(4),
      Q => \instruction_reg_n_0_[5]\,
      R => '0'
    );
\instruction_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(5),
      Q => \instruction_reg_n_0_[6]\,
      R => '0'
    );
\instruction_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(6),
      Q => \instruction_reg_n_0_[7]\,
      R => '0'
    );
\instruction_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(7),
      Q => \instruction_reg_n_0_[8]\,
      R => '0'
    );
\instruction_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => instruction0,
      D => irWord(8),
      Q => \instruction_reg_n_0_[9]\,
      R => '0'
    );
\irAddr[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => pc_1,
      O => \irAddr[13]_i_1_n_0\
    );
\irAddr[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => pc_1,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => en,
      I3 => rst,
      O => irAddr0
    );
\irAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(0),
      Q => irAddr(0),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(10),
      Q => irAddr(10),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(11),
      Q => irAddr(11),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(12),
      Q => irAddr(12),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(13),
      Q => irAddr(13),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(1),
      Q => irAddr(1),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(2),
      Q => irAddr(2),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(3),
      Q => irAddr(3),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(4),
      Q => irAddr(4),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(5),
      Q => irAddr(5),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(6),
      Q => irAddr(6),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(7),
      Q => irAddr(7),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(8),
      Q => irAddr(8),
      R => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => irAddr0,
      D => regrD1(9),
      Q => irAddr(9),
      R => \irAddr[13]_i_1_n_0\
    );
\pc[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => pc_1,
      O => pc0
    );
\pc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(0),
      Q => pc(0),
      R => '0'
    );
\pc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(10),
      Q => pc(10),
      R => '0'
    );
\pc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(11),
      Q => pc(11),
      R => '0'
    );
\pc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(12),
      Q => pc(12),
      R => '0'
    );
\pc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(13),
      Q => pc(13),
      R => '0'
    );
\pc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(14),
      Q => pc(14),
      R => '0'
    );
\pc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(15),
      Q => pc(15),
      R => '0'
    );
\pc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(1),
      Q => pc(1),
      R => '0'
    );
\pc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(2),
      Q => pc(2),
      R => '0'
    );
\pc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(3),
      Q => pc(3),
      R => '0'
    );
\pc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(4),
      Q => pc(4),
      R => '0'
    );
\pc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(5),
      Q => pc(5),
      R => '0'
    );
\pc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(6),
      Q => pc(6),
      R => '0'
    );
\pc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(7),
      Q => pc(7),
      R => '0'
    );
\pc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(8),
      Q => pc(8),
      R => '0'
    );
\pc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pc0,
      D => regrD1(9),
      Q => pc(9),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => pc(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(4 downto 1),
      S(3 downto 0) => pc(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(8 downto 5),
      S(3 downto 0) => pc(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in11(12 downto 9),
      S(3 downto 0) => pc(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in11(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => pc(15 downto 13)
    );
\rID1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \rID1[0]_i_2_n_0\,
      I1 => \instruction_reg_n_0_[17]\,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID1[0]_i_1_n_0\
    );
\rID1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFAF8"
    )
        port map (
      I0 => \reg1_addr_reg_n_0_[0]\,
      I1 => \reg1_addr[4]_i_4_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[19]\,
      I3 => \FSM_onehot_curr_reg_n_0_[16]\,
      I4 => \FSM_onehot_curr_reg_n_0_[23]\,
      I5 => \FSM_onehot_curr_reg_n_0_[20]\,
      O => \rID1[0]_i_2_n_0\
    );
\rID1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => reg3_value_0,
      I2 => \FSM_onehot_curr_reg_n_0_[16]\,
      I3 => \reg1_addr_reg_n_0_[1]\,
      I4 => \instruction_reg_n_0_[18]\,
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID1[1]_i_1_n_0\
    );
\rID1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => reg3_value_0,
      I2 => \FSM_onehot_curr_reg_n_0_[16]\,
      I3 => \reg1_addr_reg_n_0_[2]\,
      I4 => \instruction_reg_n_0_[19]\,
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID1[2]_i_1_n_0\
    );
\rID1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => reg3_value_0,
      I2 => \FSM_onehot_curr_reg_n_0_[16]\,
      I3 => \reg1_addr_reg_n_0_[3]\,
      I4 => \instruction_reg_n_0_[20]\,
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID1[3]_i_1_n_0\
    );
\rID1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA0888"
    )
        port map (
      I0 => \rID1[4]_i_3_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \rID1[4]_i_4_n_0\,
      I5 => \rID1[4]_i_5_n_0\,
      O => rID10
    );
\rID1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => reg3_value_0,
      I2 => \FSM_onehot_curr_reg_n_0_[16]\,
      I3 => \reg1_addr_reg_n_0_[4]\,
      I4 => \instruction_reg_n_0_[21]\,
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID1[4]_i_2_n_0\
    );
\rID1[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => rst,
      O => \rID1[4]_i_3_n_0\
    );
\rID1[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[19]\,
      I1 => \instruction_reg_n_0_[27]\,
      I2 => \instruction_reg_n_0_[29]\,
      I3 => \instruction_reg_n_0_[28]\,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \rID1[4]_i_4_n_0\
    );
\rID1[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFAEEEEEEAAEE"
    )
        port map (
      I0 => \rID1[4]_i_6_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      I2 => \instruction_reg_n_0_[27]\,
      I3 => \instruction_reg_n_0_[28]\,
      I4 => \instruction_reg_n_0_[29]\,
      I5 => \FSM_onehot_curr[8]_i_2_n_0\,
      O => \rID1[4]_i_5_n_0\
    );
\rID1[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[20]\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => \FSM_onehot_curr_reg_n_0_[16]\,
      O => \rID1[4]_i_6_n_0\
    );
\rID1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID10,
      D => \rID1[0]_i_1_n_0\,
      Q => rID1(0),
      R => '0'
    );
\rID1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID10,
      D => \rID1[1]_i_1_n_0\,
      Q => rID1(1),
      R => '0'
    );
\rID1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID10,
      D => \rID1[2]_i_1_n_0\,
      Q => rID1(2),
      R => '0'
    );
\rID1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID10,
      D => \rID1[3]_i_1_n_0\,
      Q => rID1(3),
      R => '0'
    );
\rID1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID10,
      D => \rID1[4]_i_2_n_0\,
      Q => rID1(4),
      R => '0'
    );
\rID2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \instruction_reg_n_0_[13]\,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => \FSM_onehot_curr_reg_n_0_[19]\,
      I3 => rID20,
      I4 => \^rid2\(1),
      O => \rID2[1]_i_1_n_0\
    );
\rID2[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rID20,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \rID2[4]_i_1_n_0\
    );
\rID2[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F22200000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => p_0_in(1),
      I2 => \FSM_onehot_curr_reg_n_0_[19]\,
      I3 => \instruction_reg_n_0_[27]\,
      I4 => \rID2[4]_i_3_n_0\,
      I5 => \rID1[4]_i_3_n_0\,
      O => rID20
    );
\rID2[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \instruction_reg_n_0_[29]\,
      I1 => \instruction_reg_n_0_[28]\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \rID2[4]_i_3_n_0\
    );
\rID2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID20,
      D => \instruction_reg_n_0_[12]\,
      Q => \^rid2\(0),
      R => \rID2[4]_i_1_n_0\
    );
\rID2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rID2[1]_i_1_n_0\,
      Q => \^rid2\(1),
      R => '0'
    );
\rID2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID20,
      D => \instruction_reg_n_0_[14]\,
      Q => \^rid2\(2),
      R => \rID2[4]_i_1_n_0\
    );
\rID2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID20,
      D => \instruction_reg_n_0_[15]\,
      Q => \^rid2\(3),
      R => \rID2[4]_i_1_n_0\
    );
\rID2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rID20,
      D => \instruction_reg_n_0_[16]\,
      Q => \^rid2\(4),
      R => \rID2[4]_i_1_n_0\
    );
\reg1_addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBF88888880"
    )
        port map (
      I0 => reg1_addr(0),
      I1 => \rID1[4]_i_3_n_0\,
      I2 => \reg1_addr[4]_i_4_n_0\,
      I3 => \FSM_onehot_curr_reg_n_0_[4]\,
      I4 => \reg1_addr[0]_i_3_n_0\,
      I5 => \reg1_addr_reg_n_0_[0]\,
      O => \reg1_addr[0]_i_1_n_0\
    );
\reg1_addr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFEFFFFFEFC"
    )
        port map (
      I0 => \instruction_reg_n_0_[22]\,
      I1 => \FSM_onehot_curr_reg_n_0_[13]\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \FSM_onehot_curr_reg_n_0_[2]\,
      I4 => \FSM_onehot_curr_reg_n_0_[4]\,
      I5 => \reg1_addr[4]_i_4_n_0\,
      O => reg1_addr(0)
    );
\reg1_addr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888FFFFF888F888"
    )
        port map (
      I0 => \reg1_addr_reg[4]_i_6_n_2\,
      I1 => \FSM_onehot_curr_reg_n_0_[12]\,
      I2 => \reg1_addr_reg[4]_i_5_n_2\,
      I3 => \FSM_onehot_curr_reg_n_0_[13]\,
      I4 => p_0_in(1),
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \reg1_addr[0]_i_3_n_0\
    );
\reg1_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => \reg1_addr[4]_i_3_n_0\,
      I1 => \FSM_onehot_curr_reg_n_0_[4]\,
      I2 => \rID1[4]_i_3_n_0\,
      I3 => \FSM_onehot_curr_reg_n_0_[2]\,
      I4 => \reg1_addr[4]_i_4_n_0\,
      O => \reg1_addr[4]_i_1_n_0\
    );
\reg1_addr[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => regrD1(15),
      I1 => \reg2_value_reg_n_0_[15]\,
      O => \reg1_addr[4]_i_11_n_0\
    );
\reg1_addr[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[13]\,
      I1 => regrD1(13),
      I2 => \reg2_value_reg_n_0_[12]\,
      I3 => regrD1(12),
      I4 => regrD1(14),
      I5 => \reg2_value_reg_n_0_[14]\,
      O => \reg1_addr[4]_i_12_n_0\
    );
\reg1_addr[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[10]\,
      I1 => regrD1(10),
      I2 => \reg2_value_reg_n_0_[9]\,
      I3 => regrD1(9),
      I4 => regrD1(11),
      I5 => \reg2_value_reg_n_0_[11]\,
      O => \reg1_addr[4]_i_13_n_0\
    );
\reg1_addr[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[7]\,
      I1 => regrD1(7),
      I2 => \reg2_value_reg_n_0_[6]\,
      I3 => regrD1(6),
      I4 => regrD1(8),
      I5 => \reg2_value_reg_n_0_[8]\,
      O => \reg1_addr[4]_i_14_n_0\
    );
\reg1_addr[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[4]\,
      I1 => regrD1(4),
      I2 => \reg2_value_reg_n_0_[3]\,
      I3 => regrD1(3),
      I4 => regrD1(5),
      I5 => \reg2_value_reg_n_0_[5]\,
      O => \reg1_addr[4]_i_15_n_0\
    );
\reg1_addr[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[1]\,
      I1 => regrD1(1),
      I2 => \reg2_value_reg_n_0_[0]\,
      I3 => regrD1(0),
      I4 => regrD1(2),
      I5 => \reg2_value_reg_n_0_[2]\,
      O => \reg1_addr[4]_i_16_n_0\
    );
\reg1_addr[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[10]\,
      I1 => regrD1(10),
      I2 => \reg2_value_reg_n_0_[9]\,
      I3 => regrD1(9),
      I4 => regrD1(11),
      I5 => \reg2_value_reg_n_0_[11]\,
      O => \reg1_addr[4]_i_17_n_0\
    );
\reg1_addr[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[7]\,
      I1 => regrD1(7),
      I2 => \reg2_value_reg_n_0_[6]\,
      I3 => regrD1(6),
      I4 => regrD1(8),
      I5 => \reg2_value_reg_n_0_[8]\,
      O => \reg1_addr[4]_i_18_n_0\
    );
\reg1_addr[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[4]\,
      I1 => regrD1(4),
      I2 => \reg2_value_reg_n_0_[3]\,
      I3 => regrD1(3),
      I4 => regrD1(5),
      I5 => \reg2_value_reg_n_0_[5]\,
      O => \reg1_addr[4]_i_19_n_0\
    );
\reg1_addr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAA8AAA8"
    )
        port map (
      I0 => \rID1[4]_i_3_n_0\,
      I1 => \reg1_addr[4]_i_4_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[4]\,
      I3 => \reg1_addr[4]_i_3_n_0\,
      I4 => p_0_in(1),
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => reg1_addr0
    );
\reg1_addr[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[1]\,
      I1 => regrD1(1),
      I2 => \reg2_value_reg_n_0_[0]\,
      I3 => regrD1(0),
      I4 => regrD1(2),
      I5 => \reg2_value_reg_n_0_[2]\,
      O => \reg1_addr[4]_i_20_n_0\
    );
\reg1_addr[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[13]\,
      I1 => \reg1_addr_reg[4]_i_5_n_2\,
      I2 => \FSM_onehot_curr_reg_n_0_[12]\,
      I3 => \reg1_addr_reg[4]_i_6_n_2\,
      O => \reg1_addr[4]_i_3_n_0\
    );
\reg1_addr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reg3_value_0,
      I1 => \FSM_onehot_curr_reg_n_0_[11]\,
      O => \reg1_addr[4]_i_4_n_0\
    );
\reg1_addr[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => regrD1(15),
      I1 => \reg2_value_reg_n_0_[15]\,
      O => \reg1_addr[4]_i_8_n_0\
    );
\reg1_addr[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \reg2_value_reg_n_0_[13]\,
      I1 => regrD1(13),
      I2 => \reg2_value_reg_n_0_[12]\,
      I3 => regrD1(12),
      I4 => regrD1(14),
      I5 => \reg2_value_reg_n_0_[14]\,
      O => \reg1_addr[4]_i_9_n_0\
    );
\reg1_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg1_addr[0]_i_1_n_0\,
      Q => \reg1_addr_reg_n_0_[0]\,
      R => '0'
    );
\reg1_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg1_addr0,
      D => \instruction_reg_n_0_[23]\,
      Q => \reg1_addr_reg_n_0_[1]\,
      R => \reg1_addr[4]_i_1_n_0\
    );
\reg1_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg1_addr0,
      D => \instruction_reg_n_0_[24]\,
      Q => \reg1_addr_reg_n_0_[2]\,
      R => \reg1_addr[4]_i_1_n_0\
    );
\reg1_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg1_addr0,
      D => \instruction_reg_n_0_[25]\,
      Q => \reg1_addr_reg_n_0_[3]\,
      R => \reg1_addr[4]_i_1_n_0\
    );
\reg1_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg1_addr0,
      D => \instruction_reg_n_0_[26]\,
      Q => \reg1_addr_reg_n_0_[4]\,
      R => \reg1_addr[4]_i_1_n_0\
    );
\reg1_addr_reg[4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_addr_reg[4]_i_10_n_0\,
      CO(2) => \reg1_addr_reg[4]_i_10_n_1\,
      CO(1) => \reg1_addr_reg[4]_i_10_n_2\,
      CO(0) => \reg1_addr_reg[4]_i_10_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_reg1_addr_reg[4]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \reg1_addr[4]_i_17_n_0\,
      S(2) => \reg1_addr[4]_i_18_n_0\,
      S(1) => \reg1_addr[4]_i_19_n_0\,
      S(0) => \reg1_addr[4]_i_20_n_0\
    );
\reg1_addr_reg[4]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_addr_reg[4]_i_7_n_0\,
      CO(3 downto 2) => \NLW_reg1_addr_reg[4]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_addr_reg[4]_i_5_n_2\,
      CO(0) => \reg1_addr_reg[4]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_reg1_addr_reg[4]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \reg1_addr[4]_i_8_n_0\,
      S(0) => \reg1_addr[4]_i_9_n_0\
    );
\reg1_addr_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg1_addr_reg[4]_i_10_n_0\,
      CO(3 downto 2) => \NLW_reg1_addr_reg[4]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg1_addr_reg[4]_i_6_n_2\,
      CO(0) => \reg1_addr_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_reg1_addr_reg[4]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \reg1_addr[4]_i_11_n_0\,
      S(0) => \reg1_addr[4]_i_12_n_0\
    );
\reg1_addr_reg[4]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg1_addr_reg[4]_i_7_n_0\,
      CO(2) => \reg1_addr_reg[4]_i_7_n_1\,
      CO(1) => \reg1_addr_reg[4]_i_7_n_2\,
      CO(0) => \reg1_addr_reg[4]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_reg1_addr_reg[4]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \reg1_addr[4]_i_13_n_0\,
      S(2) => \reg1_addr[4]_i_14_n_0\,
      S(1) => \reg1_addr[4]_i_15_n_0\,
      S(0) => \reg1_addr[4]_i_16_n_0\
    );
\reg2_value[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[11]\,
      I1 => reg3_value_0,
      I2 => rst,
      I3 => en,
      O => reg2_value0
    );
\reg2_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(0),
      Q => \reg2_value_reg_n_0_[0]\,
      R => '0'
    );
\reg2_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(10),
      Q => \reg2_value_reg_n_0_[10]\,
      R => '0'
    );
\reg2_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(11),
      Q => \reg2_value_reg_n_0_[11]\,
      R => '0'
    );
\reg2_value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(12),
      Q => \reg2_value_reg_n_0_[12]\,
      R => '0'
    );
\reg2_value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(13),
      Q => \reg2_value_reg_n_0_[13]\,
      R => '0'
    );
\reg2_value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(14),
      Q => \reg2_value_reg_n_0_[14]\,
      R => '0'
    );
\reg2_value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(15),
      Q => \reg2_value_reg_n_0_[15]\,
      R => '0'
    );
\reg2_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(1),
      Q => \reg2_value_reg_n_0_[1]\,
      R => '0'
    );
\reg2_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(2),
      Q => \reg2_value_reg_n_0_[2]\,
      R => '0'
    );
\reg2_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(3),
      Q => \reg2_value_reg_n_0_[3]\,
      R => '0'
    );
\reg2_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(4),
      Q => \reg2_value_reg_n_0_[4]\,
      R => '0'
    );
\reg2_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(5),
      Q => \reg2_value_reg_n_0_[5]\,
      R => '0'
    );
\reg2_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(6),
      Q => \reg2_value_reg_n_0_[6]\,
      R => '0'
    );
\reg2_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(7),
      Q => \reg2_value_reg_n_0_[7]\,
      R => '0'
    );
\reg2_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(8),
      Q => \reg2_value_reg_n_0_[8]\,
      R => '0'
    );
\reg2_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg2_value0,
      D => regrD1(9),
      Q => \reg2_value_reg_n_0_[9]\,
      R => '0'
    );
\reg3_value[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => reg3_value_0,
      O => reg3_value0
    );
\reg3_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(0),
      Q => reg3_value(0),
      R => '0'
    );
\reg3_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(10),
      Q => reg3_value(10),
      R => '0'
    );
\reg3_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(11),
      Q => reg3_value(11),
      R => '0'
    );
\reg3_value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(12),
      Q => reg3_value(12),
      R => '0'
    );
\reg3_value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(13),
      Q => reg3_value(13),
      R => '0'
    );
\reg3_value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(14),
      Q => reg3_value(14),
      R => '0'
    );
\reg3_value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(15),
      Q => reg3_value(15),
      R => '0'
    );
\reg3_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(1),
      Q => reg3_value(1),
      R => '0'
    );
\reg3_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(2),
      Q => reg3_value(2),
      R => '0'
    );
\reg3_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(3),
      Q => reg3_value(3),
      R => '0'
    );
\reg3_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(4),
      Q => reg3_value(4),
      R => '0'
    );
\reg3_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(5),
      Q => reg3_value(5),
      R => '0'
    );
\reg3_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(6),
      Q => reg3_value(6),
      R => '0'
    );
\reg3_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(7),
      Q => reg3_value(7),
      R => '0'
    );
\reg3_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(8),
      Q => reg3_value(8),
      R => '0'
    );
\reg3_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reg3_value0,
      D => regrD2(9),
      Q => reg3_value(9),
      R => '0'
    );
\regwD1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(0),
      I2 => instruction,
      I3 => pc(0),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[0]\,
      O => \regwD1[0]_i_1_n_0\
    );
\regwD1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(10),
      I2 => instruction,
      I3 => in11(10),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[10]\,
      O => \regwD1[10]_i_1_n_0\
    );
\regwD1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(11),
      I2 => instruction,
      I3 => in11(11),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[11]\,
      O => \regwD1[11]_i_1_n_0\
    );
\regwD1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(12),
      I2 => instruction,
      I3 => in11(12),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[12]\,
      O => \regwD1[12]_i_1_n_0\
    );
\regwD1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(13),
      I2 => instruction,
      I3 => in11(13),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[13]\,
      O => \regwD1[13]_i_1_n_0\
    );
\regwD1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(14),
      I2 => instruction,
      I3 => in11(14),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[14]\,
      O => \regwD1[14]_i_1_n_0\
    );
\regwD1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \rID1[4]_i_3_n_0\,
      I1 => instruction,
      I2 => \FSM_onehot_curr_reg_n_0_[20]\,
      I3 => \FSM_onehot_curr_reg_n_0_[23]\,
      I4 => \FSM_onehot_curr_reg_n_0_[21]\,
      I5 => \FSM_onehot_curr_reg_n_0_[17]\,
      O => regwD10
    );
\regwD1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(15),
      I2 => instruction,
      I3 => in11(15),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[15]\,
      O => \regwD1[15]_i_2_n_0\
    );
\regwD1[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[20]\,
      I1 => \FSM_onehot_curr_reg_n_0_[21]\,
      O => \regwD1[15]_i_3_n_0\
    );
\regwD1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(1),
      I2 => instruction,
      I3 => in11(1),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[1]\,
      O => \regwD1[1]_i_1_n_0\
    );
\regwD1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(2),
      I2 => instruction,
      I3 => in11(2),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[2]\,
      O => \regwD1[2]_i_1_n_0\
    );
\regwD1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(3),
      I2 => instruction,
      I3 => in11(3),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[3]\,
      O => \regwD1[3]_i_1_n_0\
    );
\regwD1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(4),
      I2 => instruction,
      I3 => in11(4),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[4]\,
      O => \regwD1[4]_i_1_n_0\
    );
\regwD1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(5),
      I2 => instruction,
      I3 => in11(5),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[5]\,
      O => \regwD1[5]_i_1_n_0\
    );
\regwD1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(6),
      I2 => instruction,
      I3 => in11(6),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[6]\,
      O => \regwD1[6]_i_1_n_0\
    );
\regwD1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(7),
      I2 => instruction,
      I3 => in11(7),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[7]\,
      O => \regwD1[7]_i_1_n_0\
    );
\regwD1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(8),
      I2 => instruction,
      I3 => in11(8),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[8]\,
      O => \regwD1[8]_i_1_n_0\
    );
\regwD1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[17]\,
      I1 => alu_result(9),
      I2 => instruction,
      I3 => in11(9),
      I4 => \regwD1[15]_i_3_n_0\,
      I5 => \imm_addr_reg_n_0_[9]\,
      O => \regwD1[9]_i_1_n_0\
    );
\regwD1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[0]_i_1_n_0\,
      Q => regwD1(0),
      R => '0'
    );
\regwD1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[10]_i_1_n_0\,
      Q => regwD1(10),
      R => '0'
    );
\regwD1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[11]_i_1_n_0\,
      Q => regwD1(11),
      R => '0'
    );
\regwD1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[12]_i_1_n_0\,
      Q => regwD1(12),
      R => '0'
    );
\regwD1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[13]_i_1_n_0\,
      Q => regwD1(13),
      R => '0'
    );
\regwD1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[14]_i_1_n_0\,
      Q => regwD1(14),
      R => '0'
    );
\regwD1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[15]_i_2_n_0\,
      Q => regwD1(15),
      R => '0'
    );
\regwD1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[1]_i_1_n_0\,
      Q => regwD1(1),
      R => '0'
    );
\regwD1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[2]_i_1_n_0\,
      Q => regwD1(2),
      R => '0'
    );
\regwD1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[3]_i_1_n_0\,
      Q => regwD1(3),
      R => '0'
    );
\regwD1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[4]_i_1_n_0\,
      Q => regwD1(4),
      R => '0'
    );
\regwD1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[5]_i_1_n_0\,
      Q => regwD1(5),
      R => '0'
    );
\regwD1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[6]_i_1_n_0\,
      Q => regwD1(6),
      R => '0'
    );
\regwD1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[7]_i_1_n_0\,
      Q => regwD1(7),
      R => '0'
    );
\regwD1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[8]_i_1_n_0\,
      Q => regwD1(8),
      R => '0'
    );
\regwD1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD10,
      D => \regwD1[9]_i_1_n_0\,
      Q => regwD1(9),
      R => '0'
    );
\regwD2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[21]\,
      O => \regwD2[15]_i_1_n_0\
    );
\regwD2[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[21]\,
      I1 => \FSM_onehot_curr_reg_n_0_[23]\,
      I2 => en,
      I3 => rst,
      O => regwD20
    );
\regwD2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(0),
      Q => regwD2(0),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(10),
      Q => regwD2(10),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(11),
      Q => regwD2(11),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(12),
      Q => regwD2(12),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(13),
      Q => regwD2(13),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(14),
      Q => regwD2(14),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(15),
      Q => regwD2(15),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(1),
      Q => regwD2(1),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(2),
      Q => regwD2(2),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(3),
      Q => regwD2(3),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(4),
      Q => regwD2(4),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(5),
      Q => regwD2(5),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(6),
      Q => regwD2(6),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(7),
      Q => regwD2(7),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(8),
      Q => regwD2(8),
      R => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => regwD20,
      D => pc(9),
      Q => regwD2(9),
      R => \regwD2[15]_i_1_n_0\
    );
send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF4400"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \FSM_onehot_curr_reg_n_0_[23]\,
      I3 => \FSM_onehot_curr_reg_n_0_[8]\,
      I4 => \^send\,
      O => send_i_1_n_0
    );
send_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => send_i_1_n_0,
      Q => \^send\,
      R => '0'
    );
wr_enR1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => instruction,
      I1 => \FSM_onehot_curr_reg_n_0_[16]\,
      I2 => \FSM_onehot_curr_reg_n_0_[20]\,
      I3 => \FSM_onehot_curr_reg_n_0_[19]\,
      I4 => wr_enR10,
      I5 => \^wr_enr1\,
      O => wr_enR1_i_1_n_0
    );
wr_enR1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => rst,
      I1 => en,
      I2 => \rID1[4]_i_4_n_0\,
      I3 => instruction,
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => \rID1[4]_i_6_n_0\,
      O => wr_enR10
    );
wr_enR1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_enR1_i_1_n_0,
      Q => \^wr_enr1\,
      R => '0'
    );
wr_enR2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFF88C80000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[23]\,
      I1 => \FSM_onehot_curr_reg_n_0_[19]\,
      I2 => \instruction_reg_n_0_[27]\,
      I3 => \rID2[4]_i_3_n_0\,
      I4 => \rID1[4]_i_3_n_0\,
      I5 => \^wr_enr2\,
      O => wr_enR2_i_1_n_0
    );
wr_enR2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_enR2_i_1_n_0,
      Q => \^wr_enr2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_controls_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbRST : out STD_LOGIC;
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbWr_en : out STD_LOGIC;
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    irWord : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    d_wr_en : out STD_LOGIC;
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    send : out STD_LOGIC;
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uproc_top_level_controls_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uproc_top_level_controls_0_0 : entity is "uproc_top_level_controls_0_0,controls,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uproc_top_level_controls_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of uproc_top_level_controls_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of uproc_top_level_controls_0_0 : entity is "controls,Vivado 2021.1";
end uproc_top_level_controls_0_0;

architecture STRUCTURE of uproc_top_level_controls_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.uproc_top_level_controls_0_0_controls
     port map (
      aluA(15 downto 0) => aluA(15 downto 0),
      aluB(15 downto 0) => aluB(15 downto 0),
      aluOp(3 downto 0) => aluOp(3 downto 0),
      aluResult(15 downto 0) => aluResult(15 downto 0),
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      dAddr(14 downto 0) => dAddr(14 downto 0),
      dIn(15 downto 0) => dIn(15 downto 0),
      dOut(15 downto 0) => dOut(15 downto 0),
      d_wr_en => d_wr_en,
      en => en,
      fbAddr1(11 downto 0) => fbAddr1(11 downto 0),
      fbDin1(15 downto 0) => fbDin1(15 downto 0),
      fbDout1(15 downto 0) => fbDout1(15 downto 0),
      fbRST => fbRST,
      fbWr_en => fbWr_en,
      irAddr(13 downto 0) => irAddr(13 downto 0),
      irWord(30 downto 0) => irWord(31 downto 1),
      newChar => newChar,
      rID1(4 downto 0) => rID1(4 downto 0),
      rID2(4 downto 0) => rID2(4 downto 0),
      ready => ready,
      regrD1(15 downto 0) => regrD1(15 downto 0),
      regrD2(15 downto 0) => regrD2(15 downto 0),
      regwD1(15 downto 0) => regwD1(15 downto 0),
      regwD2(15 downto 0) => regwD2(15 downto 0),
      rst => rst,
      send => send,
      wr_enR1 => wr_enR1,
      wr_enR2 => wr_enR2
    );
end STRUCTURE;
