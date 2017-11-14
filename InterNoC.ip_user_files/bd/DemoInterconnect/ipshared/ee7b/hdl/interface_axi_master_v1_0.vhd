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
		C_M00_AXI_ADDR_WIDTH  : integer	:= 32;
		C_M00_SELF_ADDR		  : integer := 10;
		C_TIMEOUT_PERIOD      : integer := 65535
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
	--Counters
	signal next_body_count, current_body_count : unsigned(2 downto 0) := (others=>'0');
	signal next_timeout_count, current_timeout_count : integer range 0 to C_TIMEOUT_PERIOD := 0;
	--Buffers
	signal next_packet, current_packet : std_logic_vector(C_PACKET_WIDTH-1 downto 0) := (others=>'0');
	signal next_head, current_head : unsigned(C_IF00_DATA_WIDTH-1 downto 0) := (others=>'0');
	signal next_body, current_body : unsigned(C_PACKET_DATA_WIDTH-1 downto 0) := (others=>'0');
	signal next_axi_data, current_axi_data : std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0) := (others=>'0');
	--Control signals
	signal next_if00_load, current_if00_load : std_logic := '0';
	signal next_init_axi_tx, current_init_axi_tx : std_logic := '0';
	signal next_init_axi_rx, current_init_axi_rx : std_logic := '0';
	type protocol_state is 
	(
		ST_IDLE,
		ST_RX_HEAD,
		ST_RX_BODY,
		ST_PACK,
		ST_AXI_INIT,
		ST_AXI_RESP,
		ST_TX_DATA,
		ST_TX_WAIT,
		ST_RESET
	); 
	signal current_state, next_state : protocol_state;
	--AXI
	signal axi_read_done : std_logic := '0';
	signal axi_write_done : std_logic := '0';
	signal axi_data : std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0) := (others=>'0');
	--Aliases
	alias header_access : unsigned(0 downto 0) is current_head(C_PACKET_CTRL_WIDTH+C_PACKET_ADDR_WIDTH-1 downto C_PACKET_CTRL_WIDTH+C_PACKET_ADDR_WIDTH-1);
	alias header_bytes : unsigned(C_PACKET_CTRL_WIDTH-2 downto 0) is current_head(C_PACKET_CTRL_WIDTH+C_PACKET_ADDR_WIDTH-2 downto C_PACKET_ADDR_WIDTH);
	alias packet_access : std_logic is current_packet(C_PACKET_WIDTH-1);
	alias packet_bytes : std_logic_vector(C_PACKET_CTRL_WIDTH-2 downto 0) is current_packet(C_PACKET_WIDTH-2 downto C_PACKET_ADDR_WIDTH+C_PACKET_DATA_WIDTH);
	alias packet_address : std_logic_vector is current_packet(C_PACKET_WIDTH-C_PACKET_CTRL_WIDTH-1 downto C_PACKET_DATA_WIDTH);
	alias packet_data : std_logic_vector(C_PACKET_DATA_WIDTH-1 downto 0) is current_packet(C_PACKET_DATA_WIDTH-1 downto 0);
begin

-- User logic
seq_logic: process(m00_axi_aclk)
	begin
		if rising_edge(m00_axi_aclk) then
			if (m00_axi_aresetn='0') then
				current_state <= ST_RESET;
			else
				-- Register control signals
				current_state <= next_state;
				current_init_axi_rx <= next_init_axi_rx;
				current_init_axi_tx <= next_init_axi_tx;
				current_axi_data <= next_axi_data;
				current_packet <= next_packet;
				current_body_count <= next_body_count;
				current_head <= next_head;
				current_body <= next_body;
				current_timeout_count <= next_timeout_count;
				-- Register interface load pulse
				next_if00_load <= if00_load_in;
				current_if00_load <= next_if00_load;
			end if;
		end if;
	end process;

comb_logic: process(m00_axi_aclk)
	begin
		-- Avoid latches
		next_state <= current_state;
		next_init_axi_rx <= current_init_axi_rx;
		next_init_axi_tx <= current_init_axi_tx;
		next_axi_data <= current_axi_data;
		next_packet <= current_packet;
		next_body_count <= current_body_count;
		next_head <= current_head;
		next_body <= current_body;
		next_timeout_count <= current_timeout_count;
		if00_load_out <= '0';
		-- Drive FSM
		case current_state is
			when ST_IDLE=>
				if00_load_out <= '0';
				if00_data_out <= (others=>'0');
				if (current_if00_load='0' and next_if00_load='1') then --TODO:check for valid address
					next_head <= unsigned(if00_data_in);
					next_state <= ST_RX_HEAD;
				end if;

			when ST_RX_HEAD=>
                next_body_count <= resize(header_bytes, 3)+1;
                next_state <= ST_RX_BODY;
			
			when ST_RX_BODY=>
				if (current_body_count=0) then 
					next_state <= ST_PACK;
				else
					if (current_if00_load='0' and next_if00_load='1') then
						next_timeout_count <= 0;
						case current_body_count is
							when "001"=>
								next_body(7 downto 0) <= unsigned(if00_data_in);
							when "010"=>
								next_body(15 downto 8) <= unsigned(if00_data_in);
							when "011"=>
								next_body(23 downto 16) <= unsigned(if00_data_in);
							when "100"=>
								next_body(31 downto 24) <= unsigned(if00_data_in);
							when others=>
								next_state <= ST_RESET;
						end case;
						next_body_count <= current_body_count - 1;
					else
						if (current_timeout_count = C_TIMEOUT_PERIOD-1) then
							next_timeout_count <= 0;
							next_state <= ST_RESET;
						else
							next_timeout_count <= current_timeout_count + 1;
						end if;
					end if;
				end if;

			when ST_PACK=>
				next_packet <= std_logic_vector(current_head) & std_logic_vector(current_body);
				next_state <= ST_AXI_INIT;

			when ST_AXI_INIT=>
				if (packet_access='1') then
					next_init_axi_rx <= '1';
				else
					next_init_axi_tx <= '1';
				end if;
				if (current_init_axi_rx='1') then
					next_init_axi_rx <= '0';
					next_state <= ST_AXI_RESP;
				end if;
				if (current_init_axi_tx='1') then
					next_init_axi_tx <= '0';
					next_state <= ST_AXI_RESP;
				end if;
				
			when ST_AXI_RESP=>
				if (axi_write_done='1') then
					next_state <= ST_IDLE;
				end if;
				if (axi_read_done='1') then
					next_state <= ST_TX_DATA;
					next_body_count <= resize(unsigned(packet_bytes), 3)+1;
					next_axi_data <= axi_data;
				end if;
				
			when ST_TX_DATA=>
				if (current_body_count=0) then 
					next_state <= ST_IDLE;
				else
					if (if00_send_busy='0' and if00_send_done='0') then
						if00_load_out <= '1';
						case current_body_count is
							when "001"=>
								if00_data_out <= current_axi_data(7 downto 0);
							when "010"=>
								if00_data_out <= current_axi_data(15 downto 8);
							when "011"=>
								if00_data_out <= current_axi_data(23 downto 16);
							when "100"=>
								if00_data_out <= current_axi_data(31 downto 24);
							when others=>
								if00_data_out <= (others=>'0');
						end case;
						next_body_count <= current_body_count - 1;
						next_state <= ST_TX_WAIT;
					end if;
				end if;
			
			when ST_TX_WAIT=>
				if (if00_send_busy='0') then
					if00_load_out <= '1';
				end if;
				if (if00_send_done='1') then
					next_state <= ST_TX_DATA;
				end if;
				
			when ST_RESET=>
				if00_data_out <= (others=>'0');
				next_init_axi_rx <= '0';
				next_init_axi_tx <= '0';
				next_axi_data <= (others=>'0');
				next_packet <= (others=>'0');
				next_body_count <= (others=>'0');
				next_head <= (others=>'0');
				next_body <= (others=>'0');
				next_timeout_count <= 0;
				next_state <= ST_IDLE;
		end case;
	end process;
	
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
	PACKET_TX => current_packet,
	RXN_DATA => axi_data,
	INIT_AXI_RXN    => current_init_axi_rx,
	INIT_AXI_TXN	=> current_init_axi_tx,
	TXN_DONE	=> axi_write_done,
	RXN_DONE    => axi_read_done,
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

end arch_imp;