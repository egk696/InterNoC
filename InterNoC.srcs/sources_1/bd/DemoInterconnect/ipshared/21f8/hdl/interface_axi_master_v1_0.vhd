library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interface_axi_master_v1_0 is
	generic (
		-- Users to add parameters here
		C_IF00_DATA_WIDTH     : integer := 8;
        C_PACKET_WIDTH        : integer := 40;
        C_PACKET_CTRL_WIDTH   : integer := 3;
        C_PACKET_ADDR_WIDTH   : integer := 5;
        C_PACKET_DATA_WIDTH   : integer := 32;
        
        C_AXI_PACKET_ADDR_OFFSET : integer := 16;
        
        C_M00_AXI_ADDR_WIDTH    : integer	:= 32
        
	);
	port (
		-- Users to add ports here
		if00_data_in  : in std_logic_vector(C_IF00_DATA_WIDTH-1 downto 0);
		if00_load_in  : in std_logic;
		if00_data_out  : out std_logic_vector(C_IF00_DATA_WIDTH-1 downto 0);
		if00_load_out : out std_logic;
		if00_send_done : in std_logic;
		if00_send_busy : in std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line
		
		-- Ports of Axi Master Bus Interface M00_AXI;
		m00_axi_aclk	: in std_logic;
		m00_axi_aresetn	: in std_logic;
		m00_axi_awaddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_awprot	: out std_logic_vector(2 downto 0);
		m00_axi_awvalid	: out std_logic;
		m00_axi_awready	: in std_logic;
		m00_axi_wdata	: out std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0);
		m00_axi_wstrb	: out std_logic_vector(C_PACKET_DATA_WIDTH/8-1 downto 0);
		m00_axi_wvalid	: out std_logic;
		m00_axi_wready	: in std_logic;
		m00_axi_bresp	: in std_logic_vector(1 downto 0);
		m00_axi_bvalid	: in std_logic;
		m00_axi_bready	: out std_logic;
		m00_axi_araddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_arprot	: out std_logic_vector(2 downto 0);
		m00_axi_arvalid	: out std_logic;
		m00_axi_arready	: in std_logic;
		m00_axi_rdata	: in std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0);
		m00_axi_rresp	: in std_logic_vector(1 downto 0);
		m00_axi_rvalid	: in std_logic;
		m00_axi_rready	: out std_logic
	);
end interface_axi_master_v1_0;

architecture arch_imp of interface_axi_master_v1_0 is

	-- component declaration
	component interface_axi_master_v1_0_M00_AXI is
		generic (
		C_IF00_DATA_WIDTH	: integer;
        C_PACKET_WIDTH      : integer;
        C_PACKET_ADDR_WIDTH : integer;
        C_PACKET_DATA_WIDTH : integer;
        C_AXI_PACKET_ADDR_OFFSET : integer;
        C_M_AXI_DATA_WIDTH  : integer;
        C_M_AXI_ADDR_WIDTH  : integer
		);
		port (
		PACKET_TX          : in std_logic_vector(C_PACKET_WIDTH-1 downto 0);
		RXN_DATA   		   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		INIT_AXI_TXN	: in std_logic;
		INIT_AXI_RXN	: in std_logic;
		ERROR	: out std_logic;
		TXN_DONE	: out std_logic;
		RXN_DONE	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component interface_axi_master_v1_0_M00_AXI;
	
	component serial2parallel is
      generic (
        DATA_WIDTH : integer;
        TX_WIDTH : integer
      );
      port (
        clk_i : in std_logic;
        en_i : in std_logic;
        shift_i : in std_logic_vector(TX_WIDTH-1 downto 0);
        done_o : out std_logic;
        data_o : out std_logic_vector(DATA_WIDTH-1 downto 0)
      );
    end component;
    
    component parallel2serial is
      generic (
        DATA_WIDTH : integer;
        TX_WIDTH : integer
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
    end component;
	
	--manage interface communication
	signal ss_to_ifload_out : std_logic := '0';
	signal ifbusy_to_en_send : std_logic := '0';
	
	signal interface_packet_received : std_logic := '0';
	signal interface_packet_sent : std_logic := '0';
	signal interface_packet : std_logic_vector(C_PACKET_WIDTH-1 downto 0) := (others=>'0');
	signal init_packet_tx : std_logic := '0';
	signal init_packet_rx : std_logic := '0';
	
	signal axi_data_received : std_logic := '0';
	signal axi_data : std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0) := (others=>'0');
	
	type state is (IDLE,-- This state waits until interface has received something
		 				   -- then transitions to COLLECT
		 		   IF_COLLECT,-- This state collects the received data from interface,
		 						 -- if all bits of size C_M00_AXI_DATA_WIDTH have been received 
		 						 -- it transitions to INIT_TRANS
		 		   AXI_COLLECT,-- This state collects the received data from interface,
                               -- if all bits of size C_M00_AXI_DATA_WIDTH have been received 
                               -- it transitions to INIT_TRANS
                   INIT_IF_SEND,-- Initializes an AXI-MM Master transaction 
                                -- depending on the received packet and returns to IDLE
                   ERROR, 
		 		   INIT_AXI_TRANS);-- Initializes an AXI-MM Master transaction 
		 						   -- depending on the received packet and returns to IDLE 
	
	signal ifcomm_state  : state;
	
begin

-- Instantiation of Axi Bus Interface M00_AXI
interface_axi_master_v1_0_M00_AXI_inst : interface_axi_master_v1_0_M00_AXI
	generic map (
	   C_IF00_DATA_WIDTH    => C_IF00_DATA_WIDTH,
       C_PACKET_WIDTH       => C_PACKET_WIDTH,
       C_PACKET_ADDR_WIDTH  => C_PACKET_ADDR_WIDTH,
       C_PACKET_DATA_WIDTH  => C_PACKET_DATA_WIDTH,
       C_AXI_PACKET_ADDR_OFFSET => C_AXI_PACKET_ADDR_OFFSET,
	   C_M_AXI_ADDR_WIDTH	=> C_M00_AXI_ADDR_WIDTH,
	   C_M_AXI_DATA_WIDTH	=> C_PACKET_DATA_WIDTH
	)
	port map (
		PACKET_TX => interface_packet,
		RXN_DATA => axi_data,
	    INIT_AXI_RXN    => init_packet_rx,
		INIT_AXI_TXN	=> init_packet_tx,
		TXN_DONE	=> interface_packet_sent,
		RXN_DONE    => axi_data_received,
		M_AXI_ACLK	=> m00_axi_aclk,
		M_AXI_ARESETN	=> m00_axi_aresetn,
		M_AXI_AWADDR	=> m00_axi_awaddr,
		M_AXI_AWPROT	=> m00_axi_awprot,
		M_AXI_AWVALID	=> m00_axi_awvalid,
		M_AXI_AWREADY	=> m00_axi_awready,
		M_AXI_WDATA	=> m00_axi_wdata,
		M_AXI_WSTRB	=> m00_axi_wstrb,
		M_AXI_WVALID	=> m00_axi_wvalid,
		M_AXI_WREADY	=> m00_axi_wready,
		M_AXI_BRESP	=> m00_axi_bresp,
		M_AXI_BVALID	=> m00_axi_bvalid,
		M_AXI_BREADY	=> m00_axi_bready,
		M_AXI_ARADDR	=> m00_axi_araddr,
		M_AXI_ARPROT	=> m00_axi_arprot,
		M_AXI_ARVALID	=> m00_axi_arvalid,
		M_AXI_ARREADY	=> m00_axi_arready,
		M_AXI_RDATA	=> m00_axi_rdata,
		M_AXI_RRESP	=> m00_axi_rresp,
		M_AXI_RVALID	=> m00_axi_rvalid,
		M_AXI_RREADY	=> m00_axi_rready
	);

	-- Add user logic here
interface2packet_inst: serial2parallel
generic map(
    DATA_WIDTH => C_PACKET_WIDTH,
    TX_WIDTH => C_IF00_DATA_WIDTH
)
port map(
    clk_i => m00_axi_aclk,
    en_i => if00_load_in,
    shift_i => if00_data_in,
    done_o => interface_packet_received,
    data_o => interface_packet
);

packet2interface_inst: parallel2serial
generic map(
    DATA_WIDTH => C_PACKET_DATA_WIDTH,
    TX_WIDTH => C_IF00_DATA_WIDTH
)
port map(
    clk_i => m00_axi_aclk,
    en_i => axi_data_received,
    send_i => if00_send_done,
    data_i => axi_data,
    shift_o => if00_data_out,
    ss_o => ss_to_ifload_out
);    
if00_load_out <= not(ss_to_ifload_out);    

ctrl_tx_transaction: process(m00_axi_aclk)
    begin
        if rising_edge(m00_axi_aclk) then
            if (m00_axi_aresetn = '0') then
                ifcomm_state <= IDLE;
            else
                init_packet_tx <= '0';
                init_packet_rx <= '0';
                case ifcomm_state is
                    when IDLE=>
                        if (if00_load_in = '1') then
                            ifcomm_state <= IF_COLLECT;
                        end if;
                    when IF_COLLECT=>
                        if (interface_packet_received = '1') then
                            ifcomm_state <= INIT_AXI_TRANS;
                        end if;
                    when INIT_AXI_TRANS=>
                        if init_packet_tx='0' and init_packet_rx='0' then
                            if (interface_packet(C_PACKET_WIDTH-1 downto C_PACKET_WIDTH-C_PACKET_CTRL_WIDTH) = "000") then
                                init_packet_tx <= '1';
                            elsif (interface_packet(C_PACKET_WIDTH-1 downto C_PACKET_WIDTH-C_PACKET_CTRL_WIDTH) = "001") then
                                init_packet_rx <= '1';
                            else
                                ifcomm_state <= ERROR;
                            end if;
                        else
                            init_packet_tx <= '0';  --pulse any initialized transactions
                            init_packet_rx <= '0';
                            ifcomm_state <= IDLE;   --return to IDLE
                        end if;
                    when AXI_COLLECT=>
                        if (axi_data_received = '1') then
                            ifcomm_state <= INIT_IF_SEND;    
                        end if;
                    when INIT_IF_SEND=>
                        ifcomm_state <= IDLE;
                    when ERROR=>
                        ifcomm_state <= IDLE;
                    when others=>
                        ifcomm_state <= IDLE;
                end case;
            end if;
        end if;
    end process;
	-- User logic ends

end arch_imp;
