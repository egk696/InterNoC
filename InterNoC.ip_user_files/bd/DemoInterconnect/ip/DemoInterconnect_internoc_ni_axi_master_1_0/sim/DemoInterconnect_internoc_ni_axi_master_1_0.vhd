-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: e.kyriakakis:user:internoc_ni_axi_master:1.0
-- IP Revision: 18

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DemoInterconnect_internoc_ni_axi_master_1_0 IS
  PORT (
    if00_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    if00_load_in : IN STD_LOGIC;
    if00_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    if00_load_out : OUT STD_LOGIC;
    if00_send_done : IN STD_LOGIC;
    if00_send_busy : IN STD_LOGIC;
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC
  );
END DemoInterconnect_internoc_ni_axi_master_1_0;

ARCHITECTURE DemoInterconnect_internoc_ni_axi_master_1_0_arch OF DemoInterconnect_internoc_ni_axi_master_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF DemoInterconnect_internoc_ni_axi_master_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT internoc_ni_axi_master_v1_0 IS
    GENERIC (
      C_IF00_DATA_WIDTH : INTEGER;
      C_PACKET_WIDTH : INTEGER;
      C_PACKET_DATA_WIDTH : INTEGER;
      C_PACKET_CTRL_WIDTH : INTEGER;
      C_PACKET_ADDR_WIDTH : INTEGER;
      C_AXI_PACKET_ADDR_OFFSET : INTEGER;
      C_M00_AXI_ADDR_WIDTH : INTEGER;
      C_M00_SELF_ADDR : INTEGER;
      C_TIMEOUT_PERIOD : INTEGER
    );
    PORT (
      if00_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      if00_load_in : IN STD_LOGIC;
      if00_data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      if00_load_out : OUT STD_LOGIC;
      if00_send_done : IN STD_LOGIC;
      if00_send_busy : IN STD_LOGIC;
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT internoc_ni_axi_master_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 72000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF M00_AXI";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m00_axi_awaddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 72000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
BEGIN
  U0 : internoc_ni_axi_master_v1_0
    GENERIC MAP (
      C_IF00_DATA_WIDTH => 8,
      C_PACKET_WIDTH => 40,
      C_PACKET_DATA_WIDTH => 32,
      C_PACKET_CTRL_WIDTH => 3,
      C_PACKET_ADDR_WIDTH => 5,
      C_AXI_PACKET_ADDR_OFFSET => 16,
      C_M00_AXI_ADDR_WIDTH => 32,
      C_M00_SELF_ADDR => 16,
      C_TIMEOUT_PERIOD => 16383
    )
    PORT MAP (
      if00_data_in => if00_data_in,
      if00_load_in => if00_load_in,
      if00_data_out => if00_data_out,
      if00_load_out => if00_load_out,
      if00_send_done => if00_send_done,
      if00_send_busy => if00_send_busy,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn
    );
END DemoInterconnect_internoc_ni_axi_master_1_0_arch;
