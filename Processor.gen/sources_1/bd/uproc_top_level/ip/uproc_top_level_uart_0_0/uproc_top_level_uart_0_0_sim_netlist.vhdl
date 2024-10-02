-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Oct  1 20:15:41 2024
-- Host        : Key running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/keyur/Documents/Vivado/Processor/Processor.gen/sources_1/bd/uproc_top_level/ip/uproc_top_level_uart_0_0/uproc_top_level_uart_0_0_sim_netlist.vhdl
-- Design      : uproc_top_level_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_uart_0_0_uart_rx is
  port (
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uproc_top_level_uart_0_0_uart_rx : entity is "uart_rx";
end uproc_top_level_uart_0_0_uart_rx;

architecture STRUCTURE of uproc_top_level_uart_0_0_uart_rx is
  signal \FSM_onehot_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  signal \char[7]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \inshift_reg_n_0_[0]\ : STD_LOGIC;
  signal maj : STD_LOGIC;
  signal \^newchar\ : STD_LOGIC;
  signal newChar_i_1_n_0 : STD_LOGIC;
  signal newChar_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "idle:001,start:010,data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "idle:001,start:010,data:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "idle:001,start:010,data:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of newChar_i_2 : label is "soft_lutpair0";
begin
  newChar <= \^newchar\;
\FSM_onehot_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB88BB88FB00"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => en,
      I2 => maj,
      I3 => \FSM_onehot_curr_reg_n_0_[0]\,
      I4 => newChar_i_2_n_0,
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \FSM_onehot_curr[0]_i_1_n_0\
    );
\FSM_onehot_curr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F5A020"
    )
        port map (
      I0 => en,
      I1 => maj,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => newChar_i_2_n_0,
      I4 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \FSM_onehot_curr[1]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55DFAAAA0000"
    )
        port map (
      I0 => en,
      I1 => maj,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => newChar_i_2_n_0,
      I4 => \FSM_onehot_curr_reg_n_0_[1]\,
      I5 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \FSM_onehot_curr[2]_i_1_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[1]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[2]\,
      R => rst
    );
\char[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      I2 => count(1),
      I3 => count(2),
      I4 => en,
      I5 => rst,
      O => \char[7]_i_1_n_0\
    );
\char_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(0),
      Q => charRec(0),
      R => '0'
    );
\char_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(1),
      Q => charRec(1),
      R => '0'
    );
\char_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(2),
      Q => charRec(2),
      R => '0'
    );
\char_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(3),
      Q => charRec(3),
      R => '0'
    );
\char_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(4),
      Q => charRec(4),
      R => '0'
    );
\char_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(5),
      Q => charRec(5),
      R => '0'
    );
\char_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(6),
      Q => charRec(6),
      R => '0'
    );
\char_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(7),
      Q => charRec(7),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(1),
      I2 => count(0),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA08888888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => count(0),
      I3 => count(1),
      I4 => count(2),
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(2),
      I2 => count(1),
      I3 => count(0),
      O => count_0(2)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => rst
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(1),
      Q => count(1),
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(2),
      Q => count(2),
      R => rst
    );
\d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => p_2_in,
      O => maj
    );
\d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(1),
      Q => d(0),
      R => rst
    );
\d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(2),
      Q => d(1),
      R => rst
    );
\d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(3),
      Q => d(2),
      R => rst
    );
\d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(4),
      Q => d(3),
      R => rst
    );
\d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(5),
      Q => d(4),
      R => rst
    );
\d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(6),
      Q => d(5),
      R => rst
    );
\d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(7),
      Q => d(6),
      R => rst
    );
\d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => maj,
      Q => d(7),
      R => rst
    );
\inshift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => \inshift_reg_n_0_[0]\,
      R => '0'
    );
\inshift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \inshift_reg_n_0_[0]\,
      Q => p_2_in,
      R => '0'
    );
\inshift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_in,
      Q => p_0_in,
      R => '0'
    );
\inshift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => p_1_in,
      R => '0'
    );
newChar_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEAA02AA"
    )
        port map (
      I0 => \^newchar\,
      I1 => \FSM_onehot_curr_reg_n_0_[0]\,
      I2 => newChar_i_2_n_0,
      I3 => en,
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => rst,
      O => newChar_i_1_n_0
    );
newChar_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      I2 => count(1),
      I3 => count(2),
      O => newChar_i_2_n_0
    );
newChar_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => newChar_i_1_n_0,
      Q => \^newchar\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_uart_0_0_uart_tx is
  port (
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uproc_top_level_uart_0_0_uart_tx : entity is "uart_tx";
end uproc_top_level_uart_0_0_uart_tx;

architecture STRUCTURE of uproc_top_level_uart_0_0_uart_tx is
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_3_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal tx_reg_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_3\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair2";
begin
  ready <= \^ready\;
  tx <= \^tx\;
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA80"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_current_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bit_counter_reg_n_0_[1]\,
      I1 => \bit_counter_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[3]_i_2_n_0\
    );
\FSM_onehot_current_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => send,
      O => \FSM_onehot_current_state[3]_i_3_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => rst
    );
\bit_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55558888F7778888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \FSM_onehot_current_state[3]_i_3_n_0\,
      O => \bit_counter[0]_i_1_n_0\
    );
\bit_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5858D0D0F878F0F0"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \FSM_onehot_current_state[3]_i_3_n_0\,
      O => \bit_counter[1]_i_1_n_0\
    );
\bit_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D80DD00FF80FF00"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \bit_counter_reg_n_0_[2]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \FSM_onehot_current_state[3]_i_3_n_0\,
      O => \bit_counter[2]_i_1_n_0\
    );
\bit_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_counter[0]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[0]\,
      R => rst
    );
\bit_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_counter[1]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[1]\,
      R => rst
    );
\bit_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_counter[2]_i_1_n_0\,
      Q => \bit_counter_reg_n_0_[2]\,
      R => rst
    );
ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7A0"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \^ready\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      S => rst
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => en,
      I1 => send,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(0),
      Q => \shift_reg_reg_n_0_[0]\,
      S => rst
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(1),
      Q => \shift_reg_reg_n_0_[1]\,
      S => rst
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(2),
      Q => \shift_reg_reg_n_0_[2]\,
      S => rst
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(3),
      Q => \shift_reg_reg_n_0_[3]\,
      S => rst
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(4),
      Q => \shift_reg_reg_n_0_[4]\,
      S => rst
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(5),
      Q => \shift_reg_reg_n_0_[5]\,
      S => rst
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(6),
      Q => \shift_reg_reg_n_0_[6]\,
      S => rst
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \shift_reg[7]_i_1_n_0\,
      D => charSend(7),
      Q => \shift_reg_reg_n_0_[7]\,
      S => rst
    );
tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => tx_reg_i_2_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => en,
      I5 => \^tx\,
      O => tx_i_1_n_0
    );
tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[3]\,
      I1 => \shift_reg_reg_n_0_[2]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \shift_reg_reg_n_0_[1]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \shift_reg_reg_n_0_[0]\,
      O => tx_i_3_n_0
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[7]\,
      I1 => \shift_reg_reg_n_0_[6]\,
      I2 => \bit_counter_reg_n_0_[1]\,
      I3 => \shift_reg_reg_n_0_[5]\,
      I4 => \bit_counter_reg_n_0_[0]\,
      I5 => \shift_reg_reg_n_0_[4]\,
      O => tx_i_4_n_0
    );
tx_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => tx_i_1_n_0,
      Q => \^tx\,
      S => rst
    );
tx_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => tx_i_3_n_0,
      I1 => tx_i_4_n_0,
      O => tx_reg_i_2_n_0,
      S => \bit_counter_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_uart_0_0_uart is
  port (
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    newChar : out STD_LOGIC;
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uproc_top_level_uart_0_0_uart : entity is "uart";
end uproc_top_level_uart_0_0_uart;

architecture STRUCTURE of uproc_top_level_uart_0_0_uart is
begin
r_x: entity work.uproc_top_level_uart_0_0_uart_rx
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      rst => rst,
      rx => rx
    );
t_x: entity work.uproc_top_level_uart_0_0_uart_tx
     port map (
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      ready => ready,
      rst => rst,
      send => send,
      tx => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uproc_top_level_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uproc_top_level_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uproc_top_level_uart_0_0 : entity is "uproc_top_level_uart_0_0,uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uproc_top_level_uart_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of uproc_top_level_uart_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of uproc_top_level_uart_0_0 : entity is "uart,Vivado 2021.1";
end uproc_top_level_uart_0_0;

architecture STRUCTURE of uproc_top_level_uart_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN uproc_top_level_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.uproc_top_level_uart_0_0_uart
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      ready => ready,
      rst => rst,
      rx => rx,
      send => send,
      tx => tx
    );
end STRUCTURE;
