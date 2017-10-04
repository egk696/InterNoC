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
       o_tx_rx_busy : out std_logic := '0'; 
       o_tx_rx_end  : out std_logic := '0';
       o_data_rx    : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
        --In port
       i_miso       : in std_logic := '0';
       i_data_tx    : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0'); -- data to send
       --Control
       i_clk        : in std_logic := '0';
       i_reset      : in std_logic := '0';
       i_tx_rx_start   : in std_logic := '0' -- Start TX
    );
end spi_master;

architecture behave of spi_master is

    signal clock_counter : integer range 0 to CLK_DIV*2;
    signal sclk_enable  : std_logic := '0';
    signal sclk_rise    : std_logic := '0';
    signal sclk_fall    : std_logic := '0';
    
    signal tx_rx_pulse_ff2, tx_rx_pulse_ff : std_logic := '0';
    
    signal w_tc_counter_data      : std_logic;
    signal Tx_Data      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal Rx_Data      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal Bit_Index    : integer := DATA_WIDTH-1;
    signal Tx_start     : std_logic := '0';
    signal Tx_Rx_Done   : std_logic := '0';
    signal Tx_Rx_Busy   : std_logic := '0';

    type spi_controller_state is 
    (
        ST_RESET,
        ST_IDLE,
        ST_TX_RX,
        ST_END
    );

    signal st_current   : spi_controller_state;
    signal st_next      : spi_controller_state;

begin
    w_tc_counter_data  <= '0' when(Bit_Index > 0) else '1';
    o_tx_rx_end <= Tx_Rx_Done;
    o_tx_rx_busy <= Tx_Rx_Busy;
    o_data_rx <= Rx_Data;
    
    p_start : process(i_clk, i_tx_rx_start)
    begin
        if rising_edge(i_clk) then
            tx_rx_pulse_ff <= i_tx_rx_start;
            tx_rx_pulse_ff2 <= tx_rx_pulse_ff;
        end if;
    end process;
    
    p_state : process(i_clk, i_reset)
    begin
        if(rising_edge(i_clk)) then
            if(i_reset='0') then
                st_current <= ST_RESET;
            else
                st_current <= st_next;
            end if;
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
            when ST_IDLE =>
                if(Tx_start = '1') then
                    st_next <= ST_TX_RX;
                end if;
                
            when ST_TX_RX =>
                if(w_tc_counter_data = '1' and sclk_rise = '1') then
                    st_next <= ST_END;
                end if;
                      
            when ST_END =>
                if(sclk_fall = '1') then
                    st_next <= ST_IDLE;
                end if;
            
            when ST_RESET =>
                st_next <= ST_IDLE;
            
            when others =>
                st_next <= ST_RESET;
            
            end case;
    end process p_comb;

    p_spi : process(i_clk,i_reset)
    begin
        if(rising_edge(i_clk)) then
            Tx_start <= not(tx_rx_pulse_ff2) and tx_rx_pulse_ff; --only if received a pulse then keep it as a start
            case st_current is
                when ST_IDLE=>
                    Tx_Data <= i_data_tx;
                    Bit_Index <= DATA_WIDTH-1;
                    Tx_Rx_Done <= '0';
                    Tx_Rx_Busy <= '0';
                    o_sclk <= '1';
                    o_ss <= '1';
                    o_mosi <= '1';
                    
                when ST_TX_RX =>
                    Tx_Rx_Busy <= '1';
                    sclk_enable <= '1';
                    if(sclk_rise = '1') then
                        o_sclk <= '1';
                        if(Bit_Index>0) then
                            Bit_Index <= Bit_Index - 1;
                        end if;
                    elsif(sclk_fall = '1') then
                        o_sclk <= '0';
                        Rx_Data <= Rx_Data(DATA_WIDTH-2 downto 0) & i_miso;
                        o_mosi <= Tx_Data(DATA_WIDTH-1);
                        Tx_Data <= Tx_Data(DATA_WIDTH-2 downto 0) & '0';
                    end if;
                    o_ss <= '0';

                when ST_END =>
                    Bit_Index <= DATA_WIDTH-1;
                    Tx_Rx_Done <= sclk_fall;
                    Tx_Rx_Busy <= '1';
                    o_ss <= '0';
                    
                when ST_RESET=>
                    Tx_Data <= (others => '0');
                    Tx_Rx_Done <= '0';
                    Tx_Rx_Busy <= '0';
                    Bit_Index <= DATA_WIDTH-1;
                    sclk_enable <= '0';
                    o_sclk <= '1';
                    o_ss <= '1';
                    o_mosi <= '1';
                
                when others =>
                    Tx_Data <= (others => '0');
                    Tx_Rx_Done <= '0';
                    Tx_Rx_Busy <= '0';
                    Bit_Index <= DATA_WIDTH-1;
                    sclk_enable <= '0';
                    o_sclk <= '1';
                    o_ss <= '1';
                    o_mosi <= '1';
                    
                end case;
            end if;
    end process p_spi;
end behave; 