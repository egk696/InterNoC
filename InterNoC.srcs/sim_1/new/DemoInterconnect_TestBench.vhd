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
        SYSCLK_PERIOD : time := 10.000 ns; -- 100MHZ
        SS_PERIOD : integer := 23;
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
