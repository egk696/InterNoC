----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/02/2017 04:43:17 PM
-- Design Name: 
-- Module Name: I2C_Master - behave
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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity I2C_Master is
    Generic ( CLK_DIV : integer := 720);
    Port ( io_sda : inout std_logic;
           io_scl : inout std_logic;
           i_clk : in std_logic;
           i_tx_init : in std_logic;
           i_rx_init : in std_logic;
           i_tx_data : in std_logic_VECTOR (7 downto 0);
           i_slv_addr : in std_logic_VECTOR (6 downto 0);
           i_reg_addr : in std_logic_VECTOR (7 downto 0);
           o_rx_data : out std_logic_VECTOR (7 downto 0);
           o_i2c_busy : out std_logic;
           o_i2c_done : out std_logic);
end I2C_Master;

architecture behave of I2C_Master is
--Constants
    constant BIT_COUNT : integer := 7;
--Bus
    signal sda_release : std_logic := '1';
    signal sda_in      : std_logic := '0';
    signal scl_release : std_logic := '1';
    signal scl_in      : std_logic := '0';
--Buffers
    signal slv_addr_rw : std_logic_VECTOR(7 downto 0);
    signal reg_addr : std_logic_VECTOR(7 downto 0);
    signal tx_data  : std_logic_VECTOR(7 downto 0);
    signal rx_data  : std_logic_VECTOR(7 downto 0);
--Counters
    signal scl_div_count  : integer range 0 to CLK_DIV+1 := CLK_DIV;
    signal scl_bit_count : integer range 0 to 7 := BIT_COUNT;
--FSM
    type i2c_fsm_type is
    (
        ST_IDLE,
        ST_START,
        ST_TX_DEV_ADDR,
        ST_RX_ACK_1,
        ST_TX_REG_ADDR,
        ST_RX_ACK_2,
        ST_TX_DATA,
        ST_RX_ACK_3,
        ST_RX_DATA,
        ST_TX_NACK,
        ST_STOP
    );
    signal state : i2c_fsm_type := ST_IDLE;
--Control
    signal i2c_tx_grnt : std_logic := '0';
    signal i2c_rx_grnt : std_logic := '0';
    signal i2c_rx_done : std_logic := '0';

begin

o_i2c_busy <= i2c_tx_grnt or i2c_rx_grnt;
o_i2c_done <= i2c_rx_done;

--single master support only...
sclbuf_inst: IOBUF
    port map(
        I=>'0',
        O=>scl_in,
        IO=>io_scl,
        T=>scl_release
    );

--single master support only...
sdabuf_inst: IOBUF
    port map(
        I=>'0',
        O=>sda_in,
        IO=>io_sda,
        T=>sda_release
    );

p_gen_scl: process(i_clk)
    begin
        if rising_edge(i_clk) then
            if (i2c_tx_grnt or i2c_rx_grnt) then
                if (scl_div_count=0) then
                    scl_div_count <= CLK_DIV;
                    scl_release <= not(scl_release);
                else
                    scl_div_count <= scl_div_count - 1;
                end if;
            else
                scl_release <= '1'; --if not i2c-ing release to float 'Z'
            end if;
        end if;
    end process;

p_i2c_fsm: process(i_clk)
    variable old_scl_release : std_logic := '1';
    begin
        if rising_edge(i_clk) then
            case state is
                when ST_IDLE=>
                    sda_release <= '1'; --if IDLE then release to float 'Z'
                    i2c_rx_grnt <= '0';
                    i2c_tx_grnt <= '0';
                    if (i_tx_init='1') then
                        slv_addr_rw <= i_slv_addr & '0'; --pack together with r/w for easier shift
                        reg_addr <= i_reg_addr;
                        tx_data <= i_tx_data;
                        i2c_tx_grnt <= '1'; --grant TX
                        state <= ST_START;
                    elsif (i_rx_init='1') then
                        slv_addr_rw <= i_slv_addr & '0'; --pack together with r/w for easier shift
                        reg_addr <= i_reg_addr;
                        i2c_rx_grnt <= '1'; --grant RX
                        state <= ST_START;
                    end if;
                
                when ST_START=>
                    if (old_scl_release='0' and scl_release='1') then --rising edge SCL
                        sda_release <= '0'; --transition from high-to-low while SCL high
                        state <= ST_TX_DEV_ADDR;
                    end if;

                when ST_TX_DEV_ADDR=>
                    if (old_scl_release='0' and scl_release='1') then --rising edge SCL
                        if (scl_bit_count=0) then
                            scl_bit_count <= BIT_COUNT;
                            state <= ST_RX_ACK_1;
                            sda_release <= '1';
                        else
                            scl_bit_count <= scl_bit_count - 1;
                        end if;
                    elsif (old_scl_release='1' and scl_release='0') then --falling edge SCL
                        sda_release <= slv_addr_rw(scl_bit_count); --shift out TX MSB
                    end if;
                
                when ST_RX_ACK_1=>
                    if (old_scl_release='0' and scl_release='1') then --rising edge SCL
                        if (sda_in='0') then
                            
                        end if;
                    end if;
                
                when ST_TX_REG_ADDR=>
                    if (old_scl_release='0' and scl_release='1') then --rising edge SCL
                        if (scl_bit_count=0) then
                            scl_bit_count <= BIT_COUNT;
                            state <= ST_RX_ACK_2;
                        else
                            scl_bit_count <= scl_bit_count - 1;
                        end if;
                    elsif (old_scl_release='1' and scl_release='0') then --falling edge SCL
                        sda_release <= reg_addr(scl_bit_count); --shift out TX MSB
                    end if;
                
                when ST_RX_ACK_2=>
                
                when ST_TX_DATA=>
                
                when ST_RX_ACK_3=>
                
                when ST_RX_DATA=>
                
                when ST_TX_NACK=>
                
                when ST_STOP=>
            end case;
            old_scl_release := scl_release; --register after the case because it is a variable
        end if;
    end process;


end behave;