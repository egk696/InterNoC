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

entity byte2word is
  generic (
    DATA_WIDTH : integer := 32
  );
  port (
    clk_i : in std_logic;
    en_i : in std_logic;
    shift_cnt_i : in std_logic_vector(2 downto 0);
    shift_i : in std_logic_vector(7 downto 0);
    done_o : out std_logic;
    data_o : out std_logic_vector(DATA_WIDTH-1 downto 0)
  ) ;
end byte2word; 

architecture behave of byte2word is
    signal shift_count : integer range 0 to 7 := 7;
    signal rx_done : std_logic := '0';
    signal shift_data : std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
    signal init_rx_ff, init_rx_ff2 : std_logic := '0';
    signal rx_en  : std_logic := '0';
    ----------------------------------
    attribute shreg_extract : string;
    attribute shreg_extract of shift_data : signal is "yes";
begin

init_rx_pulse: process(clk_i, en_i)
begin
    if rising_edge(clk_i) then
        init_rx_ff <= en_i;
        init_rx_ff2 <= init_rx_ff;
        rx_en <= not(init_rx_ff2) and init_rx_ff;
    end if;
end process;

shift_in: process(clk_i, rx_en, shift_i, rx_done, shift_count)
begin
	if rising_edge(clk_i) then
	   if rx_en = '1' and rx_done='0' then
            --shift_data(TX_WIDTH-1 downto 0) <= shift_i; --MSB First
			--shift_data(DATA_WIDTH-1 downto TX_WIDTH) <= shift_data(DATA_WIDTH-TX_WIDTH-1 downto 0);
			shift_data <= shift_data(DATA_WIDTH-8-1 downto 0) & shift_i;
	   end if;
	end if;
end process;

count_shift: process(clk_i, rx_en, shift_i, rx_done, shift_count)
begin
    if rising_edge(clk_i) then
		if rx_en = '1' then
			if shift_count = 0 then
				rx_done <= '1';
			else
				shift_count <= shift_count - 1;  
			end if;
		elsif rx_done='1' then
            rx_done <= '0';
        else
            if (init_rx_ff2='0' and init_rx_ff='1') then
                shift_count <= to_integer(unsigned(shift_cnt_i));
            end if;
		end if;
	end if;
end process;

done_o <= rx_done;
data_o <= shift_data(DATA_WIDTH-1 downto 0); --align data to the requested width

end architecture ;