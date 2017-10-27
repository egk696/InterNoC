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
        UARTFREQ : integer := 10000000;
        SYSCLK_PERIOD : time := 10.000 ns; -- 100MHZ
        UARTCLK_PERIOD : time := 100.000 ns; --10MHz
        BAUD_RATE : integer := 115200;
        TRACE_DLY : time := 3 ns
    );
    Port (
        UART_TX_0_wire : out STD_LOGIC;
        UART_TX_1_wire : out STD_LOGIC;
        spi_0_mosi_wire : out STD_LOGIC;
        spi_0_sck_wire : out STD_LOGIC;
        spi_0_ss_wire : out STD_LOGIC;
        spi_1_mosi_wire : out STD_LOGIC;
        spi_1_sck_wire : out STD_LOGIC;
        spi_1_ss_wire : out STD_LOGIC;
        spi_2_mosi_wire : out STD_LOGIC;
        spi_2_sck_wire : out STD_LOGIC;
        spi_2_ss_wire : out STD_LOGIC;
        spi_3_mosi_wire : out STD_LOGIC;
        spi_3_sck_wire : out STD_LOGIC;
        spi_3_ss_wire : out STD_LOGIC
    );
end DemoInterconnect_TestBench;

architecture Behavioral of DemoInterconnect_TestBench is

--comopennt declaration
component DemoInterconnect_wrapper is
  port (
  LED0_pll_aclk : out STD_LOGIC;
  LED1_pll_uart : out STD_LOGIC;
  LED2_pll_lock : out STD_LOGIC;
  UART_RX_0 : in STD_LOGIC;
  UART_RX_1 : in STD_LOGIC;
  UART_TX_0 : out STD_LOGIC;
  UART_TX_1 : out STD_LOGIC;
  m_spi_miso : in STD_LOGIC;
  m_spi_miso_1 : in STD_LOGIC;
  m_spi_miso_2 : in STD_LOGIC;
  m_spi_miso_3 : in STD_LOGIC;
  m_spi_mosi : out STD_LOGIC;
  m_spi_mosi_1 : out STD_LOGIC;
  m_spi_mosi_2 : out STD_LOGIC;
  m_spi_mosi_3 : out STD_LOGIC;
  m_spi_sclk : out STD_LOGIC;
  m_spi_sclk_1 : out STD_LOGIC;
  m_spi_sclk_2 : out STD_LOGIC;
  m_spi_sclk_3 : out STD_LOGIC;
  m_spi_ss : out STD_LOGIC;
  m_spi_ss_1 : out STD_LOGIC;
  m_spi_ss_2 : out STD_LOGIC;
  m_spi_ss_3 : out STD_LOGIC;
  sys_clk : in STD_LOGIC;
  sys_reset : in STD_LOGIC
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

--constant declaration
constant c_CLKS_PER_BIT : integer := CLKFREQ/BAUD_RATE;     -- Needs to be set correctly

--signal declaration
signal SYSCLK : std_logic := '0';
signal AXICLK : std_logic := '0';
signal UARTCLK : std_logic := '0';
signal NSYSRESET : std_logic := '0';
signal UART_RX_0_wire, UART_RX_1_wire : std_logic := 'Z';
signal spi_0_miso_wire, spi_1_miso_wire, spi_2_miso_wire, spi_3_miso_wire : STD_LOGIC := 'Z';

signal dest_address : unsigned(4 downto 0) := (others=>'0'); --5bits
signal dest_data : unsigned(31 downto 0) := (others=>'0'); --32bits
signal dest_ctrl : std_logic_vector(2 downto 0) := (others=>'0'); --3bits

signal master_packet : std_logic_vector(39 downto 0) := (others=>'0'); --40bits
signal master_packet_send_en : std_logic := '0';

signal p2s_en, p2s_send, p2s_busy, p2s_done, p2s_ss : std_logic := '0';

signal uart_tx_en, uart_tx_done, uart_tx_active : std_logic := '0';
signal uart_tx_byte : std_logic_vector(7 downto 0) := (others=>'0');
signal resetn_ext_logic : std_logic := '1';

constant slave_0_addr : unsigned(4 downto 0) := "00000";
constant slave_1_addr : unsigned(4 downto 0) := "00001";
constant slave_2_addr : unsigned(4 downto 0) := "00010";
constant slave_3_addr : unsigned(4 downto 0) := "00011";

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
addr_gen: process(AXICLK)
begin
    if rising_edge(AXICLK) then
        if (resetn_ext_logic = '0') then
            dest_address <= (others=>'0');
        elsif (p2s_done = '1') then
            if (dest_address = slave_0_addr) then
                dest_address <= slave_1_addr;
            elsif (dest_address = slave_1_addr) then
                dest_address <= slave_2_addr;
            elsif (dest_address = slave_2_addr) then
                dest_address <= slave_3_addr;
            else
                dest_ctrl(0) <= not(dest_ctrl(0));
                dest_address <= slave_0_addr;
            end if;
        end if;
    end if;
end process;

--Data Generator
data_gen: process(AXICLK)
begin
    if rising_edge(AXICLK) then
        if (resetn_ext_logic = '0') then
            dest_data <= X"4433_2211";
        else
            dest_data <= X"4433_2211";
        end if;
    end if;
end process;

--Packet generate
packet_gen: process(AXICLK)
begin
    if rising_edge(AXICLK) then
        if (resetn_ext_logic = '0') then
            master_packet <= (others=>'0');
        else
            master_packet <= dest_ctrl & std_logic_vector(dest_address) & std_logic_vector(dest_data);
        end if;
    end if;
end process;

--Send packet
send_packet: process(AXICLK)
    variable send_delay_countdown : integer := 32;
begin
    if rising_edge(AXICLK) then
        if (resetn_ext_logic = '0') then
            master_packet_send_en <= '0';
            p2s_en <= '0';
        else
            if (master_packet_send_en='0' and p2s_en='0' and p2s_busy='0' and uart_tx_active='0' and uart_tx_en='0') then
                if (send_delay_countdown = 0) then
                    master_packet_send_en <= '1';
                    send_delay_countdown := 32;
                else
                    send_delay_countdown := send_delay_countdown - 1;
                end if;
            else
                master_packet_send_en <= '0';
            end if;
            if (master_packet_send_en = '1' and p2s_en='0' and p2s_busy='0' and uart_tx_en='0') then
                p2s_en <= '1';
            else
                p2s_en <= '0';
            end if; 
        end if;
    end if;
end process;

--signal connection
p2s_send <= not(uart_tx_active) and not(uart_tx_en);
uart_tx_en <=  not(p2s_ss);
UART_RX_1_wire <= 'Z';

--component instances
p2s_inst: parallel2serial
generic map(
    DATA_WIDTH => 40,
    TX_WIDTH => 8
)
port map(
    clk_i => AXICLK,
    en_i => p2s_en,
    send_i => p2s_send,
    data_i => master_packet,
    busy_o => p2s_busy,
    done_o => p2s_done,
    shift_o => uart_tx_byte,
    ss_o => p2s_ss
);

uart_tx_inst: uart_tx
generic map(
    g_CLKS_PER_BIT => c_CLKS_PER_BIT
)
port map(
    i_Clk       => AXICLK,
    i_TX_DV     => uart_tx_en,
    i_TX_Byte   => uart_tx_byte,
    o_TX_Active => uart_tx_active,
    o_TX_Serial => UART_RX_0_wire,
    o_TX_Done   => uart_tx_done
);


DemoInterconnect_Inst: DemoInterconnect_wrapper
port map(
    UART_RX_0   => UART_RX_0_wire,
    UART_RX_1   => UART_RX_1_wire,
    UART_TX_0   => UART_TX_0_wire,
    UART_TX_1   => UART_TX_1_wire,
    LED0_pll_aclk    => AXICLK,
    LED2_pll_lock    => resetn_ext_logic,
    LED1_pll_uart    => UARTCLK, 
    m_spi_mosi  => spi_0_mosi_wire,
    m_spi_miso  => spi_0_miso_wire,
    m_spi_sclk   => spi_0_sck_wire,
    m_spi_ss    => spi_0_ss_wire,
    m_spi_mosi_1  => spi_1_mosi_wire,
    m_spi_miso_1  => spi_1_miso_wire,
    m_spi_sclk_1   => spi_1_sck_wire,
    m_spi_ss_1    => spi_1_ss_wire,
    m_spi_mosi_2  => spi_2_mosi_wire,
    m_spi_miso_2  => spi_2_miso_wire,
    m_spi_sclk_2   => spi_2_sck_wire,
    m_spi_ss_2    => spi_2_ss_wire,
    m_spi_mosi_3  => spi_3_mosi_wire,
    m_spi_miso_3  => spi_3_miso_wire,
    m_spi_sclk_3   => spi_3_sck_wire,
    m_spi_ss_3    => spi_3_ss_wire,      
    sys_clk     => SYSCLK,
    sys_reset  => not(NSYSRESET)
);

end Behavioral;
