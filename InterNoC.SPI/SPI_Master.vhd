library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

entity spi_master is
    generic(
        DATA_WIDTH      : integer := 8;
        CLK_DIV         : integer := 100  -- input clock divider to generate output serial clock; o_sclk frequency = i_clk/(2*CLK_DIV)
    ); 
    port(
        --Out port
       o_sclk       : out std_logic := '1';
       o_mosi       : out std_logic := '0';
       o_ss         : out std_logic := '1'; 
       o_tx_end     : out std_logic := '0'; 
        --In port
       i_data_tx    : in std_logic_vector(DATA_WIDTH-1 downto 0); -- data to send
       --Control
       i_clk        : in std_logic;
       i_reset      : in std_logic;
       i_tx_start   : in std_logic -- Start TX
    );
end spi_master;

architecture behave of spi_master is

    signal clock_counter : integer range 0 to CLK_DIV*2;
    signal sclk_enable  : std_logic := '0';
    signal sclk_rise    : std_logic := '0';
    signal sclk_fall    : std_logic := '0';

    signal w_tc_counter_data      : std_logic;
    signal Tx_Data      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal Bit_Index    : integer := DATA_WIDTH-1;
    signal Tx_start     : std_logic := '0';
    signal Tx_Done      : std_logic := '0';

    type spi_controller_state is 
    (
        ST_RESET,
        ST_TX_RX,
        ST_END
    );

    signal st_current   : spi_controller_state;
    signal st_next      : spi_controller_state;

begin
    w_tc_counter_data  <= '0' when(Bit_Index > 0) else '1';
    o_tx_end <= Tx_Done;
    
    p_state : process(i_clk, i_reset)
    begin
        if(i_reset='0') then
            st_current <= ST_RESET;
        elsif(rising_edge(i_clk)) then
            st_current <= st_next;
        end if;
    end process p_state;
    
    p_sclk : process(i_clk,i_reset)
    begin
        if(i_reset = '0') then
            clock_counter <= 0;
            sclk_rise <= '0';
            sclk_fall <= '0';
        elsif(rising_edge(i_clk)) then
            if(sclk_enable = '1') then
                if(clock_counter = CLK_DIV-1) then
                    clock_counter <= clock_counter + 1;
                    sclk_rise <= '0';
                    sclk_fall <= '1';
                elsif(clock_counter = (CLK_DIV*2)-1) then
                    clock_counter <= 0;
                    sclk_rise <= '1';
                    sclk_fall <= '0';
                else
                    clock_counter <= clock_counter + 1;
                    sclk_rise <= '0';
                    sclk_fall <= '0';
                end if;
            else
                clock_counter <= 0;
                sclk_rise <= '0';
                sclk_fall <= '0';
            end if;
        end if;
    end process p_sclk;

    p_comb : process(st_current, w_tc_counter_data, Tx_start, sclk_rise, sclk_fall)
    begin
        case st_current is
            when ST_TX_RX =>
                if(w_tc_counter_data = '1' and sclk_rise = '1') then
                    st_next <= ST_END;
                else
                    st_next <= ST_TX_RX;
                end if;      
            when ST_END =>
                if(sclk_fall = '1') then
                    st_next <= ST_RESET;
                else
                    st_next <= ST_END;
                end if;
            when others =>
                if(Tx_start = '1') then
                    st_next <= ST_TX_RX;
                else
                    st_next <= ST_RESET;
                end if;
            end case;
    end process p_comb;

    p_spi : process(i_clk,i_reset)
    begin
        if(i_reset = '0') then
            Tx_start <= '0';
            Tx_Data <= (others => '0');
            Tx_Done <= '0';
            Bit_Index <= DATA_WIDTH-1;
            sclk_enable <= '0';
            o_sclk <= '1';
            o_ss <= '1';
            o_mosi <= '1';
        elsif(rising_edge(i_clk)) then
            Tx_start <= i_tx_start;
            case st_current is
                when ST_TX_RX =>
                    Tx_Done <= '0';
                    sclk_enable <= '1';
                    if(sclk_rise = '1') then
                        o_sclk <= '1';
                        --RX MISO
                        if(Bit_Index>0) then
                            Bit_Index <= Bit_Index - 1;
                        end if;
                    elsif(sclk_fall = '1') then
                        o_sclk <= '0';
                        o_mosi <= Tx_Data(DATA_WIDTH-1);
                        Tx_Data <= Tx_Data(DATA_WIDTH-2 downto 0)&'1';
                    end if;
                    o_ss <= '0';

                when ST_END =>
                    Bit_Index <= DATA_WIDTH-1;
                    Tx_Done <= sclk_fall;
                    o_ss <= '0';
                
                when others =>
                    Tx_Data <= i_data_tx;
                    Bit_Index <= DATA_WIDTH-1;
                    Tx_Done <= '0';
                    o_sclk <= '1';
                    o_ss <= '1';
                    o_mosi <= '1';
                end case;
            end if;
    end process p_spi;
end behave; 