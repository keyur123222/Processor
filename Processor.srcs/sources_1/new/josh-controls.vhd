library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity josh_controls is
    Port (
        -- Timing Signals
        clk, en, rst    : in std_logic;

        -- Register File IO
        rID1, rID2          : out std_logic_vector(4 downto 0);
        wr_enR1, wr_enR2    : out std_logic;
        regrD1, regrD2      : in std_logic_vector(15 downto 0);
        regwD1, regwD2      : out std_logic_vector(15 downto 0);

        -- Framebuffer IO
        fbRST       : out std_logic;
        fbAddr1     : out std_logic_vector(11 downto 0);
        fbDin1      : in std_logic_vector(15 downto 0);
        fbDout1     : out std_logic_vector(15 downto 0);
        fbWr_en     : out std_logic;

        -- Instruction Memory IO
        irAddr  : out std_logic_vector(13 downto 0);
        irWord  : in std_logic_vector(31 downto 0);

        -- Data Memory IO
        dAddr   : out std_logic_vector(14 downto 0);
        d_wr_en : out std_logic;
        dOut    : out std_logic_vector(15 downto 0);
        dIn     : in std_logic_vector(15 downto 0);

        -- ALU IO
        aluA, aluB  : out std_logic_vector(15 downto 0);
        aluOp       : out std_logic_vector(3 downto 0);
        aluResult   : in std_logic_vector(15 downto 0);

        -- UART IO
        ready, newChar  : in std_logic;
        send            : out std_logic := '0';
        charRec         : in std_logic_vector(7 downto 0);
        charSend        : out std_logic_vector(7 downto 0) := (others => '0')
    );
end josh_controls;

architecture Behavioral of josh_controls is

    type state is (fetch, fetch1, decode0, decode1, Rops, Iops, Jops, calc, calc1, store, jr, recv, rpix, wpix, sendState, equals, equals1, nequal, ori, ori1, lw, lw2, sw, jmp, jal, clrscr, finish);
    signal presentState: state:=finish;

    signal pc : std_logic_vector(15 downto 0):=(others=>'0');
    signal irMem : std_logic_vector(31 downto 0);
    signal reg1_data : std_logic_vector(4 downto 0);
    signal reg2_data, immOrreg3_data, aluAnswer: std_logic_vector(15 downto 0);


begin


    processor : process(clk)
    begin
        if rst = '1' then
            presentState<= fetch;
        elsif rising_edge(clk) and en = '1' then
            case presentState is
                when fetch =>
                    pc <= regrD1;
                    irAddr <= regrD1(13 downto 0);
                    presentState<= decode0;

                when decode0 =>
                    irMem <= irWord;
                    rID1 <= "00001";
                    wr_enR1 <= '1';
                    regwD1 <= std_logic_vector(unsigned(pc)+1);
                    presentState<= decode1;
                when decode1 =>
                    wr_enR1 <= '0';
                    if(irMem(31 downto 30) = "00" or irMem(31 downto 30) = "01") then
                        rID1 <= irMem(21 downto 17);
                        rID2 <= irMem(16 downto 12);
                        presentState<= Rops;
                    elsif(irMem(31 downto 30) = "10") then
                        rID1 <= irMem(21 downto 17);
                        presentState<= Iops;
                    else
                        presentState<= Jops;
                    end if;

                when Rops=>
                    reg1_data <= irMem(26 downto 22);
                    reg2_data <= regrD1;
                    immOrreg3_data <= regrD2;
                    if(irMem(31 downto 27) = "01101") then
                        presentState<= jr;
                    elsif(irMem(31 downto 27) = "01100") then
                        presentState<= recv;
                    elsif(irMem(31 downto 27) = "01111") then
                        presentState<= rpix;
                    elsif(irMem(31 downto 27) = "01110") then
                        rID1 <= reg1_data;
                        presentState<= wpix;
                    elsif(irMem(31 downto 27) = "01011") then
                        presentState<= sendState;
                        rID1 <= reg1_data;
                    else
                        presentState<= calc;
                    end if;

                when Iops=>
                    reg1_data <= irMem(26 downto 22);
                    reg2_data <= regrD1;
                    immOrreg3_data <= irMem(16 downto 1);
                    if(irMem(29 downto 27) = "000") then
                        rID1 <=reg1_data;
                        presentState<= equals;
                    elsif(irMem(29 downto 27) = "010") then
                        presentState<= ori;
                    elsif(irMem(29 downto 27) = "011") then
                        dAddr <= std_logic_vector(unsigned(regrD1(14 downto 0)) + unsigned(irMem(15 downto 1)));
                        presentState<= lw;
                    else
                        presentState<= sw;
                    end if;

                when Jops=>
                    reg2_data <= irMem(26 downto 11);
                    if(irMem(31 downto 27) = "11000") then
                        presentState<= jmp;
                    elsif(irMem(31 downto 27) = "11001") then
                        presentState<= jal;
                    else
                        presentState<= clrscr;
                    end if;

                when calc =>
                    aluA <= reg2_data;
                    aluB <= immOrreg3_data;
                    aluOp <= irMem(30 downto 27);
                    presentState<= calc1;
                when calc1 =>
                    aluAnswer <= aluResult;
                    presentState<= store;

                when store=>
                    rID1 <= reg1_data;
                    wr_enR1 <= '1';
                    regwD1 <= aluAnswer;
                    presentState<= finish;

                when ori =>
                    aluAnswer<=reg2_data or immOrreg3_data;
                    presentState <= store;

                when lw =>
                    aluAnswer <= dIn;
                    presentState<= store;

                when wpix=>
                    fbAddr1 <= regrD1(11 downto 0);
                    fbWr_en <= '1';
                    fbDout1 <= reg2_data;
                    presentState<= finish;

                when equals =>
                    if(reg2_data=regrD1) then
                        aluAnswer<=immOrreg3_data;
                        reg1_data <= "00001";
                    end if;
                    presentState<= store;

                when recv=>
                    --aluAnswer <= "11111111" & charRec;
                    aluAnswer <= "00000000" & charRec;
                    if(newChar = '0') then
                        presentState<= recv;
                    else
                        presentState<= store;
                    end if;

                when jmp=>
                    rID1 <= "00001";
                    wr_enR1 <= '1';
                    regwD1 <= reg2_data;
                    presentState<= finish;

                when sendState=>
                    send <= '1';
                    charSend <= regrD1(7 downto 0);
                    if(ready = '1') then
                        presentState<= finish;
                    else
                        presentState<= sendState;
                    end if;

                when finish=>
                    fbRST <= '0';
                    fbAddr1 <= (others => '0');
                    fbDout1 <= (others => '0');
                    fbWr_en <= '0';
                    aluA <= (others => '0');
                    aluB <= (others => '0');
                    aluOp <= (others =>'0');
                    rID1 <= "00001";
                    regwD1 <= (others => '0');
                    regwD2 <= (others => '0');
                    wr_enR1 <= '0';
                    wr_enR2 <= '0';
                    dAddr <= (others => '0');
                    d_wr_en <= '0';
                    irAddr <= (others => '0');
                    send <= '0';
                    charSend <= (others => '0');
                    presentState <= fetch;
                when others =>
                    presentState<= fetch;
            end case;
        end if;
    end process;


end Behavioral;