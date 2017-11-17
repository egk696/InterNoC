----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2017 07:50:07 PM
-- Design Name: 
-- Module Name: internoc_ni_type_map - behave
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
use work.internoc_pack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity internoc_interface_type_map is
    Port (
        clk_i : in STD_LOGIC; 
        addr_i : in STD_LOGIC_VECTOR (4 downto 0);
        type_o : out STD_LOGIC_VECTOR (2 downto 0);
        mode_o : out STD_LOGIC
    );
end internoc_interface_type_map;

architecture behave of internoc_interface_type_map is

constant INTERFACE_MAP_ROM : INTERFACE_MAP_T := (
			("00000", SLAVE_MODE, I2C_INTERFACE),        --1
			("00001", SLAVE_MODE, SPI_INTERFACE),        --2
			("00010", SLAVE_MODE, INVALID_INTERFACE),    --3
			("00011", SLAVE_MODE, INVALID_INTERFACE),    --4
			("00100", SLAVE_MODE, INVALID_INTERFACE),    --5
			("00101", SLAVE_MODE, INVALID_INTERFACE),    --6
			("00110", SLAVE_MODE, INVALID_INTERFACE),    --7
			("00111", SLAVE_MODE, INVALID_INTERFACE),    --8
			("01000", SLAVE_MODE, INVALID_INTERFACE),    --9
            ("01001", SLAVE_MODE, INVALID_INTERFACE),   --10
            ("01010", SLAVE_MODE, INVALID_INTERFACE),   --11
            ("01011", SLAVE_MODE, INVALID_INTERFACE),   --12
            ("01100", SLAVE_MODE, INVALID_INTERFACE),   --13
            ("01101", SLAVE_MODE, INVALID_INTERFACE),   --14
            ("01110", SLAVE_MODE, INVALID_INTERFACE),   --15
            ("01111", SLAVE_MODE, INVALID_INTERFACE),   --16
			("10000", MASTER_MODE, UART_INTERFACE),     --17
            ("10001", MASTER_MODE, UART_INTERFACE),     --18
            ("10010", MASTER_MODE, INVALID_INTERFACE),  --19
            ("10011", MASTER_MODE, INVALID_INTERFACE),  --20
            ("10100", MASTER_MODE, INVALID_INTERFACE),  --21
            ("10101", MASTER_MODE, INVALID_INTERFACE),  --22
            ("10110", MASTER_MODE, INVALID_INTERFACE),  --23
            ("10111", MASTER_MODE, INVALID_INTERFACE),  --24
            ("11000", MASTER_MODE, INVALID_INTERFACE),  --25
            ("11001", MASTER_MODE, INVALID_INTERFACE),  --26
            ("11010", MASTER_MODE, INVALID_INTERFACE),  --27
            ("11011", MASTER_MODE, INVALID_INTERFACE),  --28
            ("11100", MASTER_MODE, INVALID_INTERFACE),  --29
            ("11101", MASTER_MODE, INVALID_INTERFACE),  --30
            ("11110", MASTER_MODE, INVALID_INTERFACE),  --31
            ("11111", MASTER_MODE, INVALID_INTERFACE)  --32
);

signal interface_type : std_logic_vector(2 downto 0) := (others=>'1');
signal interface_mode : std_logic := '0';
    
begin

type_o <= interface_type;
mode_o <= interface_mode;

rom_p: process(clk_i)
begin
    if rising_edge(clk_i) then
        interface_type <= INTERFACE_MAP_ROM(to_integer(unsigned(addr_i))).interface;
        interface_mode <= INTERFACE_MAP_ROM(to_integer(unsigned(addr_i))).mode;
    end if;
end process;

end behave;
