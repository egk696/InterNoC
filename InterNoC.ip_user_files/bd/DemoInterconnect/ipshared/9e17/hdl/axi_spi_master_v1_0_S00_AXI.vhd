library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_spi_master_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here
        SPI_DATA_WIDTH : integer := 8;
        SPI_CLK_DIV : integer := 100;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 1
	);
	port (
		-- Users to add ports here
        spi_mosi    : out std_logic;
        spi_miso    : in std_logic;
        spi_ss      : out std_logic;
        spi_sclk    : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end axi_spi_master_v1_0_S00_AXI;

architecture arch_imp of axi_spi_master_v1_0_S00_AXI is
    
    --component instantation
    component spi_master is
        generic(
            DATA_WIDTH      : integer := 8;
            CLK_DIV         : integer := 100  -- input clock divider to generate output serial clock; o_sclk frequency = i_clk/(2*CLK_DIV)
        ); 
        port(
           --Out port
           o_sclk       : out std_logic := '1';
           o_mosi       : out std_logic := '0';
           o_ss         : out std_logic := '1';
           o_tx_rx_busy : out std_logic := '0'; 
           o_tx_rx_end  : out std_logic := '0';
           o_data_rx    : out std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0');
            --In port
           i_miso       : in std_logic := '0';
           i_data_tx    : in std_logic_vector(DATA_WIDTH-1 downto 0) := (others=>'0'); -- data to send
           --Control
           i_clk        : in std_logic := '0';
           i_reset      : in std_logic := '0';
           i_tx_rx_start: in std_logic := '0' -- Start TX
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
      );
    end component;
    
    component serial2parallel is
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
      );
    end component;
    
	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;
	-- SPI interface signals
	signal spi_tx_rx_start : std_logic := '0';
	signal spi_tx_rx_busy  : std_logic := '0';
    signal spi_tx_rx_done  : std_logic := '0';
	signal spi_tx_byte     : std_logic_vector(SPI_DATA_WIDTH-1 downto 0);
	signal spi_rx_byte     : std_logic_vector(SPI_DATA_WIDTH-1 downto 0);
    -- PISO SIPO converters interface signals
	signal p2s_load        : std_logic := '0';
	signal p2s_send        : std_logic := '0';
	signal p2s_busy				 : std_logic := '0';
	signal p2s_ss          : std_logic := '0';
	signal p2s_done        : std_logic := '0';
	signal s2p_en          : std_logic := '0';
	signal s2p_done        : std_logic := '0';
	-- Registers
	signal axi_reg_rdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

begin
	-- I/O Connections assignments
	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.
wr_addr_valid:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	        axi_awready <= '1';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 
wr_addr_latch:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 
wr_data_valid:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	p2s_load <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;
	p2s_send <= not(spi_tx_rx_busy) and not(spi_tx_rx_start);
    spi_tx_rx_start <= not(p2s_ss);
    
	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.
wr_response:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.
rd_addr_valid:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
rd_response:    process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0' and s2p_done='1') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	        axi_rdata <= axi_reg_rdata;
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;


	-- Add user logic here
word2byte:  parallel2serial
	generic map(
        DATA_WIDTH => C_S_AXI_DATA_WIDTH,
        TX_WIDTH => SPI_DATA_WIDTH
    )
    port map(
        clk_i   => S_AXI_ACLK,
        en_i    => p2s_load,
				send_i  => p2s_send,
				busy_o => p2s_busy,
        data_i  => S_AXI_WDATA,
        shift_o => spi_tx_byte,
        ss_o    => p2s_ss
    );
    
byte2word:  serial2parallel
    generic map(
        DATA_WIDTH => C_S_AXI_DATA_WIDTH,
        TX_WIDTH => SPI_DATA_WIDTH
    )
    port map(
        clk_i   => S_AXI_ACLK,
        en_i    => s2p_en,
        shift_i => spi_rx_byte,
        done_o  => s2p_done,
        data_o  => axi_reg_rdata
    );
	
spi_master_inst:    spi_master
generic map(
    DATA_WIDTH => SPI_DATA_WIDTH,
    CLK_DIV => SPI_CLK_DIV
)
port map(
    --Out port
    o_sclk          => spi_sclk,
    o_mosi          => spi_mosi,
    o_ss            => spi_ss, 
    o_tx_rx_busy    => spi_tx_rx_busy,
    o_tx_rx_end     => spi_tx_rx_done,
    o_data_rx       => spi_rx_byte,
     --In port
    i_miso          => spi_miso,
    i_data_tx       => spi_tx_byte,
    --Control
    i_clk           => S_AXI_ACLK,
    i_reset         => S_AXI_ARESETN,
    i_tx_rx_start   => spi_tx_rx_start
);
	-- User logic ends

end arch_imp;
