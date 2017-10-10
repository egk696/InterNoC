--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Oct 06 17:33:09 2017
--Host        : egk-pc running 64-bit major release  (build 9200)
--Command     : generate_target DemoInterconnect_wrapper.bd
--Design      : DemoInterconnect_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DemoInterconnect_wrapper is
  port (
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
    pll_aclk : out STD_LOGIC;
    pll_lock : out STD_LOGIC;
    pll_uart : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC
  );
end DemoInterconnect_wrapper;

architecture STRUCTURE of DemoInterconnect_wrapper is
  component DemoInterconnect is
  port (
    pll_aclk : out STD_LOGIC;
    pll_lock : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC;
    pll_uart : out STD_LOGIC;
    UART_RX_0 : in STD_LOGIC;
    UART_TX_0 : out STD_LOGIC;
    UART_RX_1 : in STD_LOGIC;
    UART_TX_1 : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_mosi : out STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    m_spi_miso_1 : in STD_LOGIC;
    m_spi_mosi_1 : out STD_LOGIC;
    m_spi_ss_1 : out STD_LOGIC;
    m_spi_sclk_1 : out STD_LOGIC;
    m_spi_miso_2 : in STD_LOGIC;
    m_spi_mosi_2 : out STD_LOGIC;
    m_spi_ss_2 : out STD_LOGIC;
    m_spi_sclk_2 : out STD_LOGIC;
    m_spi_miso_3 : in STD_LOGIC;
    m_spi_mosi_3 : out STD_LOGIC;
    m_spi_ss_3 : out STD_LOGIC;
    m_spi_sclk_3 : out STD_LOGIC
  );
  end component DemoInterconnect;
begin
DemoInterconnect_i: component DemoInterconnect
     port map (
      UART_RX_0 => UART_RX_0,
      UART_RX_1 => UART_RX_1,
      UART_TX_0 => UART_TX_0,
      UART_TX_1 => UART_TX_1,
      m_spi_miso => m_spi_miso,
      m_spi_miso_1 => m_spi_miso_1,
      m_spi_miso_2 => m_spi_miso_2,
      m_spi_miso_3 => m_spi_miso_3,
      m_spi_mosi => m_spi_mosi,
      m_spi_mosi_1 => m_spi_mosi_1,
      m_spi_mosi_2 => m_spi_mosi_2,
      m_spi_mosi_3 => m_spi_mosi_3,
      m_spi_sclk => m_spi_sclk,
      m_spi_sclk_1 => m_spi_sclk_1,
      m_spi_sclk_2 => m_spi_sclk_2,
      m_spi_sclk_3 => m_spi_sclk_3,
      m_spi_ss => m_spi_ss,
      m_spi_ss_1 => m_spi_ss_1,
      m_spi_ss_2 => m_spi_ss_2,
      m_spi_ss_3 => m_spi_ss_3,
      pll_aclk => pll_aclk,
      pll_lock => pll_lock,
      pll_uart => pll_uart,
      sys_clk => sys_clk,
      sys_resetn => sys_resetn
    );
end STRUCTURE;
