--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Sep 26 14:11:41 2017
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
    spi_rtl_0_io0_io : inout STD_LOGIC;
    spi_rtl_0_io1_io : inout STD_LOGIC;
    spi_rtl_0_sck_io : inout STD_LOGIC;
    spi_rtl_0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_1_io0_io : inout STD_LOGIC;
    spi_rtl_1_io1_io : inout STD_LOGIC;
    spi_rtl_1_sck_io : inout STD_LOGIC;
    spi_rtl_1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_2_io0_io : inout STD_LOGIC;
    spi_rtl_2_io1_io : inout STD_LOGIC;
    spi_rtl_2_sck_io : inout STD_LOGIC;
    spi_rtl_2_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_3_io0_io : inout STD_LOGIC;
    spi_rtl_3_io1_io : inout STD_LOGIC;
    spi_rtl_3_sck_io : inout STD_LOGIC;
    spi_rtl_3_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC
  );
end DemoInterconnect_wrapper;

architecture STRUCTURE of DemoInterconnect_wrapper is
  component DemoInterconnect is
  port (
    spi_rtl_0_io0_i : in STD_LOGIC;
    spi_rtl_0_io0_o : out STD_LOGIC;
    spi_rtl_0_io0_t : out STD_LOGIC;
    spi_rtl_0_io1_i : in STD_LOGIC;
    spi_rtl_0_io1_o : out STD_LOGIC;
    spi_rtl_0_io1_t : out STD_LOGIC;
    spi_rtl_0_sck_i : in STD_LOGIC;
    spi_rtl_0_sck_o : out STD_LOGIC;
    spi_rtl_0_sck_t : out STD_LOGIC;
    spi_rtl_0_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_0_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_0_ss_t : out STD_LOGIC;
    spi_rtl_1_io0_i : in STD_LOGIC;
    spi_rtl_1_io0_o : out STD_LOGIC;
    spi_rtl_1_io0_t : out STD_LOGIC;
    spi_rtl_1_io1_i : in STD_LOGIC;
    spi_rtl_1_io1_o : out STD_LOGIC;
    spi_rtl_1_io1_t : out STD_LOGIC;
    spi_rtl_1_sck_i : in STD_LOGIC;
    spi_rtl_1_sck_o : out STD_LOGIC;
    spi_rtl_1_sck_t : out STD_LOGIC;
    spi_rtl_1_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_1_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_1_ss_t : out STD_LOGIC;
    spi_rtl_2_io0_i : in STD_LOGIC;
    spi_rtl_2_io0_o : out STD_LOGIC;
    spi_rtl_2_io0_t : out STD_LOGIC;
    spi_rtl_2_io1_i : in STD_LOGIC;
    spi_rtl_2_io1_o : out STD_LOGIC;
    spi_rtl_2_io1_t : out STD_LOGIC;
    spi_rtl_2_sck_i : in STD_LOGIC;
    spi_rtl_2_sck_o : out STD_LOGIC;
    spi_rtl_2_sck_t : out STD_LOGIC;
    spi_rtl_2_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_2_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_2_ss_t : out STD_LOGIC;
    spi_rtl_3_io0_i : in STD_LOGIC;
    spi_rtl_3_io0_o : out STD_LOGIC;
    spi_rtl_3_io0_t : out STD_LOGIC;
    spi_rtl_3_io1_i : in STD_LOGIC;
    spi_rtl_3_io1_o : out STD_LOGIC;
    spi_rtl_3_io1_t : out STD_LOGIC;
    spi_rtl_3_sck_i : in STD_LOGIC;
    spi_rtl_3_sck_o : out STD_LOGIC;
    spi_rtl_3_sck_t : out STD_LOGIC;
    spi_rtl_3_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_3_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_rtl_3_ss_t : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC;
    UART_RX_0 : in STD_LOGIC;
    UART_TX_0 : out STD_LOGIC;
    UART_RX_1 : in STD_LOGIC;
    UART_TX_1 : out STD_LOGIC
  );
  end component DemoInterconnect;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal spi_rtl_0_io0_i : STD_LOGIC;
  signal spi_rtl_0_io0_o : STD_LOGIC;
  signal spi_rtl_0_io0_t : STD_LOGIC;
  signal spi_rtl_0_io1_i : STD_LOGIC;
  signal spi_rtl_0_io1_o : STD_LOGIC;
  signal spi_rtl_0_io1_t : STD_LOGIC;
  signal spi_rtl_0_sck_i : STD_LOGIC;
  signal spi_rtl_0_sck_o : STD_LOGIC;
  signal spi_rtl_0_sck_t : STD_LOGIC;
  signal spi_rtl_0_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_0_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_0_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_0_ss_t : STD_LOGIC;
  signal spi_rtl_1_io0_i : STD_LOGIC;
  signal spi_rtl_1_io0_o : STD_LOGIC;
  signal spi_rtl_1_io0_t : STD_LOGIC;
  signal spi_rtl_1_io1_i : STD_LOGIC;
  signal spi_rtl_1_io1_o : STD_LOGIC;
  signal spi_rtl_1_io1_t : STD_LOGIC;
  signal spi_rtl_1_sck_i : STD_LOGIC;
  signal spi_rtl_1_sck_o : STD_LOGIC;
  signal spi_rtl_1_sck_t : STD_LOGIC;
  signal spi_rtl_1_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_1_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_1_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_1_ss_t : STD_LOGIC;
  signal spi_rtl_2_io0_i : STD_LOGIC;
  signal spi_rtl_2_io0_o : STD_LOGIC;
  signal spi_rtl_2_io0_t : STD_LOGIC;
  signal spi_rtl_2_io1_i : STD_LOGIC;
  signal spi_rtl_2_io1_o : STD_LOGIC;
  signal spi_rtl_2_io1_t : STD_LOGIC;
  signal spi_rtl_2_sck_i : STD_LOGIC;
  signal spi_rtl_2_sck_o : STD_LOGIC;
  signal spi_rtl_2_sck_t : STD_LOGIC;
  signal spi_rtl_2_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_2_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_2_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_2_ss_t : STD_LOGIC;
  signal spi_rtl_3_io0_i : STD_LOGIC;
  signal spi_rtl_3_io0_o : STD_LOGIC;
  signal spi_rtl_3_io0_t : STD_LOGIC;
  signal spi_rtl_3_io1_i : STD_LOGIC;
  signal spi_rtl_3_io1_o : STD_LOGIC;
  signal spi_rtl_3_io1_t : STD_LOGIC;
  signal spi_rtl_3_sck_i : STD_LOGIC;
  signal spi_rtl_3_sck_o : STD_LOGIC;
  signal spi_rtl_3_sck_t : STD_LOGIC;
  signal spi_rtl_3_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_3_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_3_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_rtl_3_ss_t : STD_LOGIC;
begin
DemoInterconnect_i: component DemoInterconnect
     port map (
      UART_RX_0 => UART_RX_0,
      UART_RX_1 => UART_RX_1,
      UART_TX_0 => UART_TX_0,
      UART_TX_1 => UART_TX_1,
      spi_rtl_0_io0_i => spi_rtl_0_io0_i,
      spi_rtl_0_io0_o => spi_rtl_0_io0_o,
      spi_rtl_0_io0_t => spi_rtl_0_io0_t,
      spi_rtl_0_io1_i => spi_rtl_0_io1_i,
      spi_rtl_0_io1_o => spi_rtl_0_io1_o,
      spi_rtl_0_io1_t => spi_rtl_0_io1_t,
      spi_rtl_0_sck_i => spi_rtl_0_sck_i,
      spi_rtl_0_sck_o => spi_rtl_0_sck_o,
      spi_rtl_0_sck_t => spi_rtl_0_sck_t,
      spi_rtl_0_ss_i(0) => spi_rtl_0_ss_i_0(0),
      spi_rtl_0_ss_o(0) => spi_rtl_0_ss_o_0(0),
      spi_rtl_0_ss_t => spi_rtl_0_ss_t,
      spi_rtl_1_io0_i => spi_rtl_1_io0_i,
      spi_rtl_1_io0_o => spi_rtl_1_io0_o,
      spi_rtl_1_io0_t => spi_rtl_1_io0_t,
      spi_rtl_1_io1_i => spi_rtl_1_io1_i,
      spi_rtl_1_io1_o => spi_rtl_1_io1_o,
      spi_rtl_1_io1_t => spi_rtl_1_io1_t,
      spi_rtl_1_sck_i => spi_rtl_1_sck_i,
      spi_rtl_1_sck_o => spi_rtl_1_sck_o,
      spi_rtl_1_sck_t => spi_rtl_1_sck_t,
      spi_rtl_1_ss_i(0) => spi_rtl_1_ss_i_0(0),
      spi_rtl_1_ss_o(0) => spi_rtl_1_ss_o_0(0),
      spi_rtl_1_ss_t => spi_rtl_1_ss_t,
      spi_rtl_2_io0_i => spi_rtl_2_io0_i,
      spi_rtl_2_io0_o => spi_rtl_2_io0_o,
      spi_rtl_2_io0_t => spi_rtl_2_io0_t,
      spi_rtl_2_io1_i => spi_rtl_2_io1_i,
      spi_rtl_2_io1_o => spi_rtl_2_io1_o,
      spi_rtl_2_io1_t => spi_rtl_2_io1_t,
      spi_rtl_2_sck_i => spi_rtl_2_sck_i,
      spi_rtl_2_sck_o => spi_rtl_2_sck_o,
      spi_rtl_2_sck_t => spi_rtl_2_sck_t,
      spi_rtl_2_ss_i(0) => spi_rtl_2_ss_i_0(0),
      spi_rtl_2_ss_o(0) => spi_rtl_2_ss_o_0(0),
      spi_rtl_2_ss_t => spi_rtl_2_ss_t,
      spi_rtl_3_io0_i => spi_rtl_3_io0_i,
      spi_rtl_3_io0_o => spi_rtl_3_io0_o,
      spi_rtl_3_io0_t => spi_rtl_3_io0_t,
      spi_rtl_3_io1_i => spi_rtl_3_io1_i,
      spi_rtl_3_io1_o => spi_rtl_3_io1_o,
      spi_rtl_3_io1_t => spi_rtl_3_io1_t,
      spi_rtl_3_sck_i => spi_rtl_3_sck_i,
      spi_rtl_3_sck_o => spi_rtl_3_sck_o,
      spi_rtl_3_sck_t => spi_rtl_3_sck_t,
      spi_rtl_3_ss_i(0) => spi_rtl_3_ss_i_0(0),
      spi_rtl_3_ss_o(0) => spi_rtl_3_ss_o_0(0),
      spi_rtl_3_ss_t => spi_rtl_3_ss_t,
      sys_clk => sys_clk,
      sys_resetn => sys_resetn
    );
spi_rtl_0_io0_iobuf: component IOBUF
     port map (
      I => spi_rtl_0_io0_o,
      IO => spi_rtl_0_io0_io,
      O => spi_rtl_0_io0_i,
      T => spi_rtl_0_io0_t
    );
spi_rtl_0_io1_iobuf: component IOBUF
     port map (
      I => spi_rtl_0_io1_o,
      IO => spi_rtl_0_io1_io,
      O => spi_rtl_0_io1_i,
      T => spi_rtl_0_io1_t
    );
spi_rtl_0_sck_iobuf: component IOBUF
     port map (
      I => spi_rtl_0_sck_o,
      IO => spi_rtl_0_sck_io,
      O => spi_rtl_0_sck_i,
      T => spi_rtl_0_sck_t
    );
spi_rtl_0_ss_iobuf_0: component IOBUF
     port map (
      I => spi_rtl_0_ss_o_0(0),
      IO => spi_rtl_0_ss_io(0),
      O => spi_rtl_0_ss_i_0(0),
      T => spi_rtl_0_ss_t
    );
spi_rtl_1_io0_iobuf: component IOBUF
     port map (
      I => spi_rtl_1_io0_o,
      IO => spi_rtl_1_io0_io,
      O => spi_rtl_1_io0_i,
      T => spi_rtl_1_io0_t
    );
spi_rtl_1_io1_iobuf: component IOBUF
     port map (
      I => spi_rtl_1_io1_o,
      IO => spi_rtl_1_io1_io,
      O => spi_rtl_1_io1_i,
      T => spi_rtl_1_io1_t
    );
spi_rtl_1_sck_iobuf: component IOBUF
     port map (
      I => spi_rtl_1_sck_o,
      IO => spi_rtl_1_sck_io,
      O => spi_rtl_1_sck_i,
      T => spi_rtl_1_sck_t
    );
spi_rtl_1_ss_iobuf_0: component IOBUF
     port map (
      I => spi_rtl_1_ss_o_0(0),
      IO => spi_rtl_1_ss_io(0),
      O => spi_rtl_1_ss_i_0(0),
      T => spi_rtl_1_ss_t
    );
spi_rtl_2_io0_iobuf: component IOBUF
     port map (
      I => spi_rtl_2_io0_o,
      IO => spi_rtl_2_io0_io,
      O => spi_rtl_2_io0_i,
      T => spi_rtl_2_io0_t
    );
spi_rtl_2_io1_iobuf: component IOBUF
     port map (
      I => spi_rtl_2_io1_o,
      IO => spi_rtl_2_io1_io,
      O => spi_rtl_2_io1_i,
      T => spi_rtl_2_io1_t
    );
spi_rtl_2_sck_iobuf: component IOBUF
     port map (
      I => spi_rtl_2_sck_o,
      IO => spi_rtl_2_sck_io,
      O => spi_rtl_2_sck_i,
      T => spi_rtl_2_sck_t
    );
spi_rtl_2_ss_iobuf_0: component IOBUF
     port map (
      I => spi_rtl_2_ss_o_0(0),
      IO => spi_rtl_2_ss_io(0),
      O => spi_rtl_2_ss_i_0(0),
      T => spi_rtl_2_ss_t
    );
spi_rtl_3_io0_iobuf: component IOBUF
     port map (
      I => spi_rtl_3_io0_o,
      IO => spi_rtl_3_io0_io,
      O => spi_rtl_3_io0_i,
      T => spi_rtl_3_io0_t
    );
spi_rtl_3_io1_iobuf: component IOBUF
     port map (
      I => spi_rtl_3_io1_o,
      IO => spi_rtl_3_io1_io,
      O => spi_rtl_3_io1_i,
      T => spi_rtl_3_io1_t
    );
spi_rtl_3_sck_iobuf: component IOBUF
     port map (
      I => spi_rtl_3_sck_o,
      IO => spi_rtl_3_sck_io,
      O => spi_rtl_3_sck_i,
      T => spi_rtl_3_sck_t
    );
spi_rtl_3_ss_iobuf_0: component IOBUF
     port map (
      I => spi_rtl_3_ss_o_0(0),
      IO => spi_rtl_3_ss_io(0),
      O => spi_rtl_3_ss_i_0(0),
      T => spi_rtl_3_ss_t
    );
end STRUCTURE;
