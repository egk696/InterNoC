--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Tue Oct 24 00:00:16 2017
--Host        : CHRIS-PC running 64-bit major release  (build 9200)
--Command     : generate_target DemoConfigDesign_wrapper.bd
--Design      : DemoConfigDesign_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DemoConfigDesign_wrapper is
  port (
    ULPI_clk : in STD_LOGIC;
    ULPI_data_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ULPI_dir : in STD_LOGIC;
    ULPI_next : in STD_LOGIC;
    ULPI_rst : out STD_LOGIC;
    ULPI_stop : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_resetn : in STD_LOGIC
  );
end DemoConfigDesign_wrapper;

architecture STRUCTURE of DemoConfigDesign_wrapper is
  component DemoConfigDesign is
  port (
    ULPI_clk : in STD_LOGIC;
    ULPI_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ULPI_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULPI_data_t : out STD_LOGIC;
    ULPI_dir : in STD_LOGIC;
    ULPI_next : in STD_LOGIC;
    ULPI_rst : out STD_LOGIC;
    ULPI_stop : out STD_LOGIC;
    sys_resetn : in STD_LOGIC;
    sys_clk : in STD_LOGIC
  );
  end component DemoConfigDesign;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal ULPI_data_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ULPI_data_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ULPI_data_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal ULPI_data_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ULPI_data_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ULPI_data_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal ULPI_data_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal ULPI_data_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal ULPI_data_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ULPI_data_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ULPI_data_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal ULPI_data_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ULPI_data_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ULPI_data_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal ULPI_data_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal ULPI_data_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal ULPI_data_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ULPI_data_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ULPI_data_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal ULPI_data_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ULPI_data_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal ULPI_data_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal ULPI_data_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal ULPI_data_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal ULPI_data_t : STD_LOGIC;
begin
DemoConfigDesign_i: component DemoConfigDesign
     port map (
      ULPI_clk => ULPI_clk,
      ULPI_data_i(7) => ULPI_data_i_7(7),
      ULPI_data_i(6) => ULPI_data_i_6(6),
      ULPI_data_i(5) => ULPI_data_i_5(5),
      ULPI_data_i(4) => ULPI_data_i_4(4),
      ULPI_data_i(3) => ULPI_data_i_3(3),
      ULPI_data_i(2) => ULPI_data_i_2(2),
      ULPI_data_i(1) => ULPI_data_i_1(1),
      ULPI_data_i(0) => ULPI_data_i_0(0),
      ULPI_data_o(7) => ULPI_data_o_7(7),
      ULPI_data_o(6) => ULPI_data_o_6(6),
      ULPI_data_o(5) => ULPI_data_o_5(5),
      ULPI_data_o(4) => ULPI_data_o_4(4),
      ULPI_data_o(3) => ULPI_data_o_3(3),
      ULPI_data_o(2) => ULPI_data_o_2(2),
      ULPI_data_o(1) => ULPI_data_o_1(1),
      ULPI_data_o(0) => ULPI_data_o_0(0),
      ULPI_data_t => ULPI_data_t,
      ULPI_dir => ULPI_dir,
      ULPI_next => ULPI_next,
      ULPI_rst => ULPI_rst,
      ULPI_stop => ULPI_stop,
      sys_clk => sys_clk,
      sys_resetn => sys_resetn
    );
ULPI_data_iobuf_0: component IOBUF
     port map (
      I => ULPI_data_o_0(0),
      IO => ULPI_data_io(0),
      O => ULPI_data_i_0(0),
      T => ULPI_data_t
    );
ULPI_data_iobuf_1: component IOBUF
     port map (
      I => ULPI_data_o_1(1),
      IO => ULPI_data_io(1),
      O => ULPI_data_i_1(1),
      T => ULPI_data_t
    );
ULPI_data_iobuf_2: component IOBUF
     port map (
      I => ULPI_data_o_2(2),
      IO => ULPI_data_io(2),
      O => ULPI_data_i_2(2),
      T => ULPI_data_t
    );
ULPI_data_iobuf_3: component IOBUF
     port map (
      I => ULPI_data_o_3(3),
      IO => ULPI_data_io(3),
      O => ULPI_data_i_3(3),
      T => ULPI_data_t
    );
ULPI_data_iobuf_4: component IOBUF
     port map (
      I => ULPI_data_o_4(4),
      IO => ULPI_data_io(4),
      O => ULPI_data_i_4(4),
      T => ULPI_data_t
    );
ULPI_data_iobuf_5: component IOBUF
     port map (
      I => ULPI_data_o_5(5),
      IO => ULPI_data_io(5),
      O => ULPI_data_i_5(5),
      T => ULPI_data_t
    );
ULPI_data_iobuf_6: component IOBUF
     port map (
      I => ULPI_data_o_6(6),
      IO => ULPI_data_io(6),
      O => ULPI_data_i_6(6),
      T => ULPI_data_t
    );
ULPI_data_iobuf_7: component IOBUF
     port map (
      I => ULPI_data_o_7(7),
      IO => ULPI_data_io(7),
      O => ULPI_data_i_7(7),
      T => ULPI_data_t
    );
end STRUCTURE;
