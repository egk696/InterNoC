library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
-- The receiver is able to
-- receive 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When receive is complete o_rx_dv will be
-- driven high for one clock cycle.
-- 
-- The transmitter is able to
-- transmit 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When transmit is complete o_TX_Done will be
-- driven high for one clock cycle.
--
entity uart_top is
    generic(
        CLK_FREQ    : integer := 10000000;
        BAUD_RATE   : integer := 115200
    );
    port(
        --GLOBAL
        i_Clk       : in  std_logic;
        --RX
        i_RX_Serial : in  std_logic;
        o_RX_Done     : out std_logic;
        o_RX_Byte   : out std_logic_vector(7 downto 0);
        --TX
        i_TX_Load     : in  std_logic;
        i_TX_Byte   : in  std_logic_vector(7 downto 0);
        o_TX_Active : out std_logic;
        o_TX_Serial : out std_logic;
        o_TX_Done   : out std_logic
    );
end uart_top;

architecture rtl of uart_top is
--
-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (10000000)/(115200) = 87
--
constant c_CLKS_PER_BIT : integer := CLK_FREQ/BAUD_RATE;     -- Needs to be set correctly

--component declaration
component UART_RX is
    generic (
        g_CLKS_PER_BIT : integer := 115     -- Needs to be set correctly
    );
    port (
        i_Clk       : in  std_logic;
        i_RX_Serial : in  std_logic;
        o_RX_DV     : out std_logic;
        o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component;
component UART_TX is
    generic (
        g_CLKS_PER_BIT : integer := 115     -- Needs to be set correctly
    );
    port (
        i_Clk       : in  std_logic;
        i_TX_DV     : in  std_logic;
        i_TX_Byte   : in  std_logic_vector(7 downto 0);
        o_TX_Active : out std_logic;
        o_TX_Serial : out std_logic;
        o_TX_Done   : out std_logic
    );
end component;

begin
    
--component instantiation
uart_rx_inst: UART_RX
generic map(
    g_CLKS_PER_BIT => c_CLKS_PER_BIT
)
port map(
    i_Clk       => i_Clk,
    i_RX_Serial => i_RX_Serial,
    o_RX_DV     => o_RX_Done,
    o_RX_Byte   => o_RX_Byte
);

uart_tx_inst: UART_TX
generic map(
    g_CLKS_PER_BIT => c_CLKS_PER_BIT
)
port map(
    i_Clk       => i_Clk,
    i_TX_DV     => i_TX_Load,
    i_TX_Byte   => i_TX_Byte,
    o_TX_Active => o_TX_Active,
    o_TX_Serial => o_TX_Serial,
    o_TX_Done   => o_TX_Done
);

end rtl;