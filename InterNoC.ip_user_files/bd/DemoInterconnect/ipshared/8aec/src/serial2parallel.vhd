-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 06/28/2017
-- Design Name: Serial-In-Parallel-Out Shift Register
-- Module Name: S2P Parallelizer - behave
-- Target Devices: Any
----------------------------------------------------------------------------------
library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

Library UNISIM;
use UNISIM.vcomponents.all;

entity serial2parallel is
  generic (
    DATA_WIDTH : integer := 8;
    TX_WIDTH : integer := 1
  );
  port (
    clk_i : in std_logic;
    en_i : in std_logic;
    shift_i : in std_logic_vector(TX_WIDTH-1 downto 0);
    done_o : out std_logic;
    data_o : out std_logic_vector(DATA_WIDTH-1 downto 0)
  ) ;
end serial2parallel; 

architecture behave of serial2parallel is
    ----------------------------------
    constant SHIFT_STAGES : integer := integer(ceil(real(DATA_WIDTH)/real(TX_WIDTH)));
    ----------------------------------
    signal shift_count : integer range 0 to SHIFT_STAGES-1 := SHIFT_STAGES-1;
    signal rx_done : std_logic := '0';
    signal rx_data : std_logic_vector(SHIFT_STAGES*TX_WIDTH-1 downto 0) := (others=>'0');
    ----------------------------------
    attribute shreg_extract : string;
    attribute shreg_extract of rx_data : signal is "yes";
begin

shift_in: process(clk_i, en_i, rx_data, shift_i, rx_done, shift_count)
begin
	if rising_edge(clk_i) then
	   if en_i = '1' then
            --rx_data(TX_WIDTH-1 downto 0) <= shift_i; --MSB First
			--rx_data(DATA_WIDTH-1 downto TX_WIDTH) <= rx_data(DATA_WIDTH-TX_WIDTH-1 downto 0);
			rx_data <= rx_data(SHIFT_STAGES*TX_WIDTH-1-TX_WIDTH downto 0) & shift_i;
	   end if;
	end if;
end process;

count_shift: process(clk_i, en_i, rx_data, shift_i, rx_done, shift_count)
begin
    if rising_edge(clk_i) then
		if en_i = '1' then
			if shift_count = 0 then
				shift_count <= SHIFT_STAGES-1;
				rx_done <= '1';
			else
				shift_count <= shift_count - 1;  
			end if;
		elsif rx_done='1' then
			rx_done <= '0';
		end if;
	end if;
end process;

done_o <= rx_done;
data_o <= rx_data(DATA_WIDTH-1 downto 0); --align data to the requested width

end architecture ;