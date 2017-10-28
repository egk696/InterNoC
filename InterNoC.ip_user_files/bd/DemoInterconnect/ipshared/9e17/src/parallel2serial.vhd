-- Engineer: Lefteris Kyriakakis
-- 
-- Create Date: 06/28/2017
-- Design Name: Serial-In-Parallel-Out Shift Register
-- Module Name: P2S Serializer - behave
-- Target Devices: Any
----------------------------------------------------------------------------------
library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity parallel2serial is
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
end parallel2serial;

architecture behave of parallel2serial is
    ----------------------------------
    constant SHIFT_STAGES : integer := integer(ceil(real(DATA_WIDTH)/real(TX_WIDTH)));
    ----------------------------------
    signal shift_count : integer range 0 to SHIFT_STAGES := SHIFT_STAGES-1;
    signal send_data : std_logic_vector(SHIFT_STAGES*TX_WIDTH-1 downto 0) := (others=>'0');
    signal sending : std_logic := '0';
    signal tx_done : std_logic := '0';
    ----------------------------------
begin

send_ctrl: process(clk_i, en_i, data_i, sending, tx_done)
begin
  if rising_edge(clk_i) then
    if en_i = '1' and sending='0' then
      send_data <= (others=>'0');
      send_data(DATA_WIDTH-1 downto 0) <= data_i; --register new data to send when not sending
      sending <= '1'; 
    elsif sending='1' and tx_done='1' then
      sending <= '0';
    end if;
  end if;
end process;

shift_out: process(clk_i, shift_count, send_data, sending, tx_done)
begin
	if rising_edge(clk_i) then
        if sending = '1' and tx_done='0' and send_i='1' then
            shift_o <= send_data((shift_count)*(TX_WIDTH)+(TX_WIDTH)-1 downto (shift_count)*(TX_WIDTH)); --MSB first
        elsif sending = '0' or tx_done='1' then
            shift_o <= (others=>'1'); 
        end if;
	end if;
end process;

count_shift: process(clk_i, shift_count, send_data, sending, tx_done)
begin
    if rising_edge(clk_i) then
        if sending = '1' and tx_done='0' and send_i='1' then
            if shift_count = 0 then
                shift_count <= SHIFT_STAGES-1;
                tx_done <= '1';
            else
                shift_count <= shift_count - 1;
            end if;
            ss_o <= '0';
        else
          tx_done <= '0';
          ss_o <= '1';
        end if;
	end if;
end process;

busy_o <= sending;
done_o <= tx_done;

end behave;