library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;


entity spi_slave is
    generic(
        DATA_WIDTH      : integer := 8
    ); 
    port(
        --In port
        i_clk           : in std_logic;
        i_sclk          : in std_logic;
        i_mosi          : in std_logic := '0';
        i_ss            : in std_logic := '1';
        i_tx_send       : in std_logic := '0';
        i_in_data       : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
        --Out port
        o_miso          : out std_logic;
        o_done          : out std_logic := '0';
        o_out_data      : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0')
    );
    end spi_slave;

architecture behave of spi_slave is

    function reverse_any_vector (a: in std_logic_vector)  return std_logic_vector is
        variable result: std_logic_vector(a'RANGE);
        alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
        begin
        for i in aa'RANGE loop
            result(i) := aa(i);
        end loop;
        return result;
    end; -- function reverse_any_vector

    type t_SM_RX is (s_Idle, s_RX, s_RX_Stop);
    --type t_SM_TX is (s_Idle, s_TX, s_TX_Stop);

    signal SM_RX : t_SM_RX := s_Idle;
    --signal SM_TX : t_SM_TX := s_Idle;

    signal r_RX_Data        : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal to_TX_Data       : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    signal r_SS_in          : std_logic := '1';
    signal r_SS             : std_logic := '1';

    signal bit_counter      : integer range 0 to DATA_WIDTH := 0;

    signal rx_complete      : std_logic := '0';
    signal rx_complete_in   : std_logic := '0';
    signal rx_sync_complete : std_logic := '0';
    signal tx_sending : std_logic := '0';

    signal r_RX_Received    : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

    

begin

    --Double buffer the sclk signals
    p_mosi_register : process (i_sclk)
    begin
        if rising_edge(i_sclk) then
            if i_ss = '0' then
                r_RX_Received <= r_RX_Received(DATA_WIDTH-2 downto 0) & i_mosi;
            end if;
        end if;
    end process p_mosi_register;
    

    p_rx_bit_counter : process(i_sclk)
    begin
        if rising_edge(i_sclk) then
            rx_complete <= '0';
            if i_ss = '0' then   
                if bit_counter = DATA_WIDTH then
                    bit_counter <= 0;
                    rx_complete <= '1';
                else
                    bit_counter <= bit_counter + 1;    
                end if;
            end if;
        end if;
    end process p_rx_bit_counter;

    p_sync : process(i_clk)
    begin
        if rising_edge(i_clk) then 
            r_SS_in <= i_ss;
            r_SS <= r_SS_in;

            rx_complete_in <= rx_complete;
            rx_sync_complete <= rx_complete_in;
        end if;
    end process p_sync;

    --Main running clk
    p_SPI : process(i_clk)
    begin
        if rising_edge(i_clk) then

            case SM_RX is
                --Idle reset everything
                when s_Idle =>
                    --If SS is pulled go to RX state
                    o_done <= '0';
                    if r_SS = '0' then
                        SM_RX <= s_RX;
                    else
                        SM_RX <= s_Idle;
                    end if;
                
                --RX State
                when s_RX =>      
                    if rx_sync_complete = '1' then
                        r_RX_Data <= r_RX_Received;
                        SM_RX <= s_RX_Stop;
                    else 
                        SM_RX <= s_RX;
                    end if;

                -- Stop receiving send the received data and send ACK ?
                when s_RX_Stop =>
                    o_done <= '1';
                    o_out_data <= reverse_any_vector(r_RX_Data);
                     SM_RX <= s_Idle;

                when others =>
                    SM_RX <= s_Idle;

            end case;    
        
        end if;
    end process p_SPI;

    o_miso <= to_TX_Data(DATA_WIDTH-1) when i_ss = '0' else 'Z';
    p_miso_register : process (i_sclk)
    begin
        if rising_edge(i_sclk) then
            if i_ss = '0' and i_tx_send = '1' then
                to_TX_Data <= std_logic_vector(shift_left(unsigned(to_TX_Data), 1));
            else
                to_TX_Data <= i_in_data;        
            end if;
        end if;
    end process p_miso_register;


end behave;