library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package internoc_pack is
    --constants
	constant INVALID_INTERFACE : std_logic_vector(2 downto 0) := (others=>'1');
	constant UART_INTERFACE : std_logic_vector(2 downto 0) := "001";
	constant SPI_INTERFACE : std_logic_vector(2 downto 0) := "010";
	constant I2C_INTERFACE : std_logic_vector(2 downto 0) := "100";
	
	constant MASTER_MODE : std_logic := '0';
	constant SLAVE_MODE : std_logic := '1';
	
	--types
	type INTERFACE_T is record
		addr : std_logic_vector(4 downto 0);
		mode : std_logic;
		interface : std_logic_vector(2 downto 0);
	end record;

	type INTERFACE_MAP_T is array(natural range <>) of INTERFACE_T;

	--functions
	 
end package internoc_pack;

