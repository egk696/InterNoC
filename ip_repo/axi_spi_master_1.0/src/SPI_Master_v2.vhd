library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity spi_master is
    generic(
        DATA_WIDTH      : integer := 8;
        CLK_DIV         : integer := 100  -- input clock divider to generate output serial clock; o_sclk frequency = i_clk/(2*CLK_DIV)
    ); 
    port(
        --Out port
       o_sclk       : out std_logic := '1';
       o_mosi       : out std_logic := '1';
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

architecture behave_v2 of spi_master is
    
            --control
            signal spi_en : std_logic := '0';
            signal spi_busy : std_logic := '0';
            signal spi_done : std_logic := '0';
            signal load_buffer : std_logic := '0';
            signal buffer_ready : std_logic := '0';
            
            --single buffer SPI
            signal tx_rx_buffer : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'1');
            signal load_buffer_val : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'1');
        
            --counters
            signal spi_bit_counter : integer range 0 to DATA_WIDTH := 0;
            signal spi_clock_counter : integer range 0 to CLK_DIV := 0;
    
            --I/O reg
            signal mosi_reg : std_logic := '1';
            signal ss_reg : std_logic := '1';
            signal sclk_reg : std_logic := '1';
        begin
    
    -- I/O Connections assignments
        o_sclk <= sclk_reg when spi_en='1' else '1';
        o_mosi <= mosi_reg when spi_en='1' else '1';
        o_ss <= ss_reg;
        o_tx_rx_busy <= spi_busy;
        o_tx_rx_end <= spi_done;
        o_data_rx <= tx_rx_buffer;
        
    p_gen_sclk: process(i_clk)
        begin
            if rising_edge(i_clk) then
                if spi_clock_counter=CLK_DIV then
                    spi_clock_counter <= 0;
                    sclk_reg <= not(sclk_reg);
                else
                    spi_clock_counter <= spi_clock_counter + 1;
                end if;
            end if;
        end process;    

    p_spi: process(i_clk)
        begin
            if rising_edge(i_clk) then
                if (i_tx_rx_start='1') then
                    spi_busy <= '1'; --busy starts before 'spi_en' to signal the user request
                    load_buffer <= '1';
                    load_buffer_val <= i_data_tx;
                else
                    if (buffer_ready = '1') then --after buffer is initialized
                        load_buffer <= '0'; --de-assert load buffer
                        spi_en <= '1'; --enable spi Tx-Rx   
                    end if; 
                    if (spi_done='1') then
                        spi_en <= '0';
                    end if;
                    if (load_buffer='0' and spi_done='0' and spi_en='0') then
                        spi_busy <= '0';
                    end if;
                end if;
            end if;
        end process;
        
    p_count: process(sclk_reg)
        begin
            if rising_edge(sclk_reg) then
                if (spi_en='1') then
                    if (spi_bit_counter=DATA_WIDTH-1) then
                        spi_bit_counter <= 0;
                        spi_done <= '1';
                    else
                        spi_bit_counter <= spi_bit_counter + 1;
                    end if;
                end if;
                if (spi_done = '1') then
                    spi_done <= '0';
                end if;
            end if;
        end process;
        
    p_ss: process(sclk_reg)
        begin
            if rising_edge(sclk_reg) then 
                if (spi_en='1') then
                    ss_reg <= '0'; --active LOW 'ss' is asserted on rising edge before data   
                else
                    ss_reg <= '1';
                end if;
            end if;
        end process;
        
    p_tx_rx: process(sclk_reg)
        begin
            if falling_edge(sclk_reg) then
                if (load_buffer='1') then
                    tx_rx_buffer <= load_buffer_val; --load buffer in parallel with user data
                    buffer_ready <= '1';
                elsif (spi_en='1') then
                    mosi_reg <= tx_rx_buffer(DATA_WIDTH-1); --shift out TX MSB
                    tx_rx_buffer <= tx_rx_buffer(DATA_WIDTH-2 downto 0) & i_miso; --shift in RX MSB
                end if;
                if (buffer_ready = '1') then
                    buffer_ready <= '0'; --pulse buffer ready
                end if;   
            end if;
        end process;
        
    end behave_v2;