----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2017 06:40:21 PM
-- Design Name: 
-- Module Name: DemoInterconnect_TestBench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DemoInterconnect_TestBench is
    Generic(
        CLKFREQ : integer := 100000000;
        SYSCLK_PERIOD : time := 10.000 ns; -- 100MHZ
        BAUD_RATE : integer := 115200;
        TRACE_DLY : time := 3 ns
    );
    Port (
        UART_TX_0 : out STD_LOGIC;
        UART_TX_1 : out STD_LOGIC;
        spi_rtl_0_io0_io : inout STD_LOGIC;
        spi_rtl_0_io1_io : inout STD_LOGIC;
        spi_rtl_0_sck_io : inout STD_LOGIC;
        spi_rtl_0_spisel : in STD_LOGIC;
        spi_rtl_0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
        spi_rtl_1_io0_io : inout STD_LOGIC;
        spi_rtl_1_io1_io : inout STD_LOGIC;
        spi_rtl_1_sck_io : inout STD_LOGIC;
        spi_rtl_1_spisel : in STD_LOGIC;
        spi_rtl_1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
        spi_rtl_2_io0_io : inout STD_LOGIC;
        spi_rtl_2_io1_io : inout STD_LOGIC;
        spi_rtl_2_sck_io : inout STD_LOGIC;
        spi_rtl_2_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
        spi_rtl_3_io0_io : inout STD_LOGIC;
        spi_rtl_3_io1_io : inout STD_LOGIC;
        spi_rtl_3_sck_io : inout STD_LOGIC;
        spi_rtl_3_spisel : in STD_LOGIC;
        spi_rtl_3_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 )
    );
end DemoInterconnect_TestBench;

architecture Behavioral of DemoInterconnect_TestBench is

--comopennt declaration
component DemoInterconnect_wrapper is
  port (
    UART_RX_0 : in STD_LOGIC;
    UART_RX_1 : in STD_LOGIC;
    UART_TX_0 : out STD_LOGIC;
    UART_TX_1 : out STD_LOGIC;
    spi_rtl_0_io0_io : inout STD_LOGIC;
    spi_rtl_0_io1_io : inout STD_LOGIC;
    spi_rtl_0_sck_io : inout STD_LOGIC;
    spi_rtl_0_spisel : in STD_LOGIC;
    spi_rtl_0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_1_io0_io : inout STD_LOGIC;
    spi_rtl_1_io1_io : inout STD_LOGIC;
    spi_rtl_1_sck_io : inout STD_LOGIC;
    spi_rtl_1_spisel : in STD_LOGIC;
    spi_rtl_1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_2_io0_io : inout STD_LOGIC;
    spi_rtl_2_io1_io : inout STD_LOGIC;
    spi_rtl_2_sck_io : inout STD_LOGIC;
    spi_rtl_2_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_3_io0_io : inout STD_LOGIC;
    spi_rtl_3_io1_io : inout STD_LOGIC;
    spi_rtl_3_sck_io : inout STD_LOGIC;
    spi_rtl_3_spisel : in STD_LOGIC;
    spi_rtl_3_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC
  );
end component;

component parallel2serial is
  generic (
    DATA_WIDTH : integer := 8;
    TX_WIDTH : integer := 1
  );
  port (
    clk_i : in std_logic;
    en_i : in std_logic;
    send_i : in std_logic;
    data_i : in std_logic_vector(DATA_WIDTH-1 downto 0);
    busy_o : out std_logic;
    done_o : out std_logic;
    shift_o : out std_logic_vector(TX_WIDTH-1 downto 0);
    ss_o : out std_logic
  ) ;
end component;

entity UART_TX is
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
end UART_TX;

--constant declaration
constant c_CLKS_PER_BIT : integer := CLKFREQ/BAUD_RATE;     -- Needs to be set correctly

--signal declaration
signal SYSCLK : std_logic := '0';
signal NSYSRESET : std_logic := '0';
signal UART_RX_0_wire, UART_RX_1_wire : std_logic := '0';

signal dest_address : unsigned(4 downto 0) := (others=>'0'); --5bits
signal dest_data : unsigned(31 downto 0) := (others=>'0'); --32bits
signal dest_ctrl : std_logic_vector(2 downto 0) := (others=>'0'); --3bits

signal master_packet : std_logic_vector(39 downto 0) := (others=>'0'); --40bits

constant slave_0_addr : unsigned(4 downto 0) := X"00000";
constant slave_1_addr : unsigned(4 downto 0) := X"00001";
constant slave_2_addr : unsigned(4 downto 0) := X"00002";
constant slave_3_addr : unsigned(4 downto 0) := X"00003";

begin

process
    variable vhdl_initial : BOOLEAN := TRUE;
begin
    if ( vhdl_initial ) then
        -- Assert Reset
        NSYSRESET <= '0';
        wait for ( SYSCLK_PERIOD * 10 );
        
        NSYSRESET <= '1';
        wait;
    end if;
end process;

-- Clock Driver
SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

--Address Generator
addr_gen: process(SYSCLK)
begin
    if rising_edge(SYSCLK) then
        if (NSYSRESET = '0') then
            dest_address <= (others=>'0');
        else
            dest_address <= dest_address + 1;
        end if;
    end if;
end process;

--Data Generator
data_gen: process(SYSCLK)
begin
    if rising_edge(SYSCLK) then
        if (NSYSRESET = '0') then
            dest_data <= (others=>'0');
        else
            dest_data <= dest_data + 1;
        end if;
    end if;
end process;

--Packet generate
packet_gen: process(SYSCLK)
begin
    if rising_edge(SYSCLK) then
        if (NSYSRESET = '0') then
            master_packet <= (others=>'0');
        else
            master_packet <= dest_ctrl & dest_address & dest_data;
        end if;
    end if;
end process;

--component instances



DemoInterconnect_Inst: DemoInterconnect_wrapper
port map(
    UART_RX_0 => UART_RX_0_wire,
    UART_RX_1 => UART_RX_1_wire,
    UART_TX_0 => UART_TX_0,
    UART_TX_1 => UART_TX_1,
    spi_rtl_0_io0_io => spi_rtl_0_io0_io,
    spi_rtl_0_io1_io => spi_rtl_0_io1_io,
    spi_rtl_0_sck_io => spi_rtl_0_sck_io,
    spi_rtl_0_spisel => spi_rtl_0_spisel,
    spi_rtl_0_ss_io => spi_rtl_0_ss_io,
    spi_rtl_1_io0_io => spi_rtl_1_io0_io,
    spi_rtl_1_io1_io => spi_rtl_1_io1_io,
    spi_rtl_1_sck_io => spi_rtl_1_sck_io,
    spi_rtl_1_spisel => spi_rtl_1_spisel,
    spi_rtl_1_ss_io => spi_rtl_1_ss_io,
    spi_rtl_2_io0_io > spi_rtl_2_io0_io,
    spi_rtl_2_io1_io => spi_rtl_2_io1_io,
    spi_rtl_2_sck_io => spi_rtl_2_sck_io,
    spi_rtl_2_ss_io => spi_rtl_2_ss_io,
    spi_rtl_3_io0_io => spi_rtl_3_io0_io,
    spi_rtl_3_io1_io => spi_rtl_3_io1_io, 
    spi_rtl_3_sck_io => spi_rtl_3_sck_io,
    spi_rtl_3_spisel => spi_rtl_3_spisel,
    spi_rtl_3_ss_io => spi_rtl_3_ss_io,
    sys_clk => SYSCLK,
    sys_resetn => NSYSRESET
);

end Behavioral;
