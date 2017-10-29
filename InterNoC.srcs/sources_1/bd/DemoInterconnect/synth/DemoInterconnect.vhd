--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Sun Oct 29 17:10:39 2017
--Host        : egk-pc running 64-bit major release  (build 9200)
--Command     : generate_target DemoInterconnect.bd
--Design      : DemoInterconnect
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_4EB6IN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_4EB6IN;

architecture STRUCTURE of m00_couplers_imp_4EB6IN is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1SL2GIW is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1SL2GIW;

architecture STRUCTURE of m01_couplers_imp_1SL2GIW is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_7DG2C0 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_7DG2C0;

architecture STRUCTURE of m02_couplers_imp_7DG2C0 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1YCPS1Z is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1YCPS1Z;

architecture STRUCTURE of m03_couplers_imp_1YCPS1Z is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m03_couplers_to_m03_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m03_couplers_to_m03_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_ACM7VL is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_ACM7VL;

architecture STRUCTURE of m04_couplers_imp_ACM7VL is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1HWY5FA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1HWY5FA;

architecture STRUCTURE of m05_couplers_imp_1HWY5FA is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_DBR4EM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_DBR4EM;

architecture STRUCTURE of m06_couplers_imp_DBR4EM is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_7XIH8P is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_7XIH8P;

architecture STRUCTURE of s00_couplers_imp_7XIH8P is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1XSI6OU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1XSI6OU;

architecture STRUCTURE of s01_couplers_imp_1XSI6OU is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= s01_couplers_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s01_couplers_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= s01_couplers_to_s01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s01_couplers_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= s01_couplers_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s01_couplers_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_s01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_s01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_s01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_s01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s01_couplers_to_s01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_2QLUHY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_2QLUHY;

architecture STRUCTURE of s02_couplers_imp_2QLUHY is
  component DemoInterconnect_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component DemoInterconnect_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_pc_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_pc_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s02_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(0) <= s02_couplers_to_auto_pc_BID(0);
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(0) <= s02_couplers_to_auto_pc_RID(0);
  S_AXI_rlast <= s02_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s02_couplers_to_auto_pc_WREADY;
  auto_pc_to_s02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s02_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s02_couplers_to_auto_pc_ARID(0) <= S_AXI_arid(0);
  s02_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s02_couplers_to_auto_pc_ARLOCK <= S_AXI_arlock;
  s02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s02_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_auto_pc_AWID(0) <= S_AXI_awid(0);
  s02_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_auto_pc_AWLOCK <= S_AXI_awlock;
  s02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component DemoInterconnect_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s02_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s02_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s02_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s02_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s02_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s02_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s02_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s02_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(0) => s02_couplers_to_auto_pc_ARID(0),
      s_axi_arlen(7 downto 0) => s02_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => s02_couplers_to_auto_pc_ARLOCK,
      s_axi_arprot(2 downto 0) => s02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s02_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s02_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s02_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(0) => s02_couplers_to_auto_pc_AWID(0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => s02_couplers_to_auto_pc_AWLOCK,
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s02_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s02_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s02_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_auto_pc_AWVALID,
      s_axi_bid(0) => s02_couplers_to_auto_pc_BID(0),
      s_axi_bready => s02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(0) => s02_couplers_to_auto_pc_RID(0),
      s_axi_rlast => s02_couplers_to_auto_pc_RLAST,
      s_axi_rready => s02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_auto_pc_WLAST,
      s_axi_wready => s02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DemoInterconnect_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC;
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC;
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC
  );
end DemoInterconnect_axi_interconnect_0_0;

architecture STRUCTURE of DemoInterconnect_axi_interconnect_0_0 is
  component DemoInterconnect_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component DemoInterconnect_xbar_0;
  signal interconnect_ACLK_net : STD_LOGIC;
  signal interconnect_ARESETN_net : STD_LOGIC;
  signal interconnect_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s00_couplers_ARREADY : STD_LOGIC;
  signal interconnect_to_s00_couplers_ARVALID : STD_LOGIC;
  signal interconnect_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s00_couplers_AWREADY : STD_LOGIC;
  signal interconnect_to_s00_couplers_AWVALID : STD_LOGIC;
  signal interconnect_to_s00_couplers_BREADY : STD_LOGIC;
  signal interconnect_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s00_couplers_BVALID : STD_LOGIC;
  signal interconnect_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s00_couplers_RREADY : STD_LOGIC;
  signal interconnect_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s00_couplers_RVALID : STD_LOGIC;
  signal interconnect_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s00_couplers_WREADY : STD_LOGIC;
  signal interconnect_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s00_couplers_WVALID : STD_LOGIC;
  signal interconnect_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s01_couplers_ARREADY : STD_LOGIC;
  signal interconnect_to_s01_couplers_ARVALID : STD_LOGIC;
  signal interconnect_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s01_couplers_AWREADY : STD_LOGIC;
  signal interconnect_to_s01_couplers_AWVALID : STD_LOGIC;
  signal interconnect_to_s01_couplers_BREADY : STD_LOGIC;
  signal interconnect_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s01_couplers_BVALID : STD_LOGIC;
  signal interconnect_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s01_couplers_RREADY : STD_LOGIC;
  signal interconnect_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s01_couplers_RVALID : STD_LOGIC;
  signal interconnect_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s01_couplers_WREADY : STD_LOGIC;
  signal interconnect_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s01_couplers_WVALID : STD_LOGIC;
  signal interconnect_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s02_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_to_s02_couplers_ARLOCK : STD_LOGIC;
  signal interconnect_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s02_couplers_ARREADY : STD_LOGIC;
  signal interconnect_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s02_couplers_ARVALID : STD_LOGIC;
  signal interconnect_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s02_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interconnect_to_s02_couplers_AWLOCK : STD_LOGIC;
  signal interconnect_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s02_couplers_AWREADY : STD_LOGIC;
  signal interconnect_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interconnect_to_s02_couplers_AWVALID : STD_LOGIC;
  signal interconnect_to_s02_couplers_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_to_s02_couplers_BREADY : STD_LOGIC;
  signal interconnect_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s02_couplers_BVALID : STD_LOGIC;
  signal interconnect_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s02_couplers_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal interconnect_to_s02_couplers_RLAST : STD_LOGIC;
  signal interconnect_to_s02_couplers_RREADY : STD_LOGIC;
  signal interconnect_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_to_s02_couplers_RVALID : STD_LOGIC;
  signal interconnect_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_to_s02_couplers_WLAST : STD_LOGIC;
  signal interconnect_to_s02_couplers_WREADY : STD_LOGIC;
  signal interconnect_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_to_s02_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m00_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m00_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m01_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m01_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m02_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m02_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m02_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m02_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m02_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m02_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m03_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m03_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m03_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m03_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m03_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m03_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m03_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m03_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m03_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m03_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m04_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m04_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m04_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m04_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m04_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m04_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m04_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m04_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m04_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m04_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m05_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m05_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m05_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m05_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m05_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m05_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m05_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m05_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m05_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m05_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_ARREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_ARVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_AWREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_AWVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_BREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_BVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_RREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_interconnect_RVALID : STD_LOGIC;
  signal m06_couplers_to_interconnect_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_interconnect_WREADY : STD_LOGIC;
  signal m06_couplers_to_interconnect_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_interconnect_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 12 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 20 downto 12 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_interconnect_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_interconnect_ARPROT(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_interconnect_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_interconnect_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_interconnect_AWPROT(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_interconnect_AWVALID;
  M00_AXI_bready <= m00_couplers_to_interconnect_BREADY;
  M00_AXI_rready <= m00_couplers_to_interconnect_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_interconnect_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_interconnect_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_interconnect_WVALID;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_interconnect_ARADDR(31 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_interconnect_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_interconnect_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_interconnect_AWADDR(31 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_interconnect_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_interconnect_AWVALID;
  M01_AXI_bready <= m01_couplers_to_interconnect_BREADY;
  M01_AXI_rready <= m01_couplers_to_interconnect_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_interconnect_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_interconnect_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_interconnect_WVALID;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_interconnect_ARADDR(31 downto 0);
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_interconnect_ARPROT(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_interconnect_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_interconnect_AWADDR(31 downto 0);
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_interconnect_AWPROT(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_interconnect_AWVALID;
  M02_AXI_bready <= m02_couplers_to_interconnect_BREADY;
  M02_AXI_rready <= m02_couplers_to_interconnect_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_interconnect_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_interconnect_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_interconnect_WVALID;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_interconnect_ARADDR(31 downto 0);
  M03_AXI_arprot(2 downto 0) <= m03_couplers_to_interconnect_ARPROT(2 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_interconnect_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_interconnect_AWADDR(31 downto 0);
  M03_AXI_awprot(2 downto 0) <= m03_couplers_to_interconnect_AWPROT(2 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_interconnect_AWVALID;
  M03_AXI_bready <= m03_couplers_to_interconnect_BREADY;
  M03_AXI_rready <= m03_couplers_to_interconnect_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_interconnect_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_interconnect_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_interconnect_WVALID;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_interconnect_ARADDR(31 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_interconnect_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_interconnect_AWADDR(31 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_interconnect_AWVALID;
  M04_AXI_bready <= m04_couplers_to_interconnect_BREADY;
  M04_AXI_rready <= m04_couplers_to_interconnect_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_interconnect_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_interconnect_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_interconnect_WVALID;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_interconnect_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_interconnect_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_interconnect_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_interconnect_AWVALID;
  M05_AXI_bready <= m05_couplers_to_interconnect_BREADY;
  M05_AXI_rready <= m05_couplers_to_interconnect_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_interconnect_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_interconnect_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_interconnect_WVALID;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_interconnect_ARADDR(31 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_interconnect_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_interconnect_AWADDR(31 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_interconnect_AWVALID;
  M06_AXI_bready <= m06_couplers_to_interconnect_BREADY;
  M06_AXI_rready <= m06_couplers_to_interconnect_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_interconnect_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_interconnect_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_interconnect_WVALID;
  S00_AXI_arready <= interconnect_to_s00_couplers_ARREADY;
  S00_AXI_awready <= interconnect_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= interconnect_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= interconnect_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= interconnect_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= interconnect_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= interconnect_to_s00_couplers_RVALID;
  S00_AXI_wready <= interconnect_to_s00_couplers_WREADY;
  S01_AXI_arready <= interconnect_to_s01_couplers_ARREADY;
  S01_AXI_awready <= interconnect_to_s01_couplers_AWREADY;
  S01_AXI_bresp(1 downto 0) <= interconnect_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= interconnect_to_s01_couplers_BVALID;
  S01_AXI_rdata(31 downto 0) <= interconnect_to_s01_couplers_RDATA(31 downto 0);
  S01_AXI_rresp(1 downto 0) <= interconnect_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= interconnect_to_s01_couplers_RVALID;
  S01_AXI_wready <= interconnect_to_s01_couplers_WREADY;
  S02_AXI_arready <= interconnect_to_s02_couplers_ARREADY;
  S02_AXI_awready <= interconnect_to_s02_couplers_AWREADY;
  S02_AXI_bid(0) <= interconnect_to_s02_couplers_BID(0);
  S02_AXI_bresp(1 downto 0) <= interconnect_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= interconnect_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= interconnect_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rid(0) <= interconnect_to_s02_couplers_RID(0);
  S02_AXI_rlast <= interconnect_to_s02_couplers_RLAST;
  S02_AXI_rresp(1 downto 0) <= interconnect_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= interconnect_to_s02_couplers_RVALID;
  S02_AXI_wready <= interconnect_to_s02_couplers_WREADY;
  interconnect_ACLK_net <= ACLK;
  interconnect_ARESETN_net <= ARESETN;
  interconnect_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  interconnect_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  interconnect_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  interconnect_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  interconnect_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  interconnect_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  interconnect_to_s00_couplers_BREADY <= S00_AXI_bready;
  interconnect_to_s00_couplers_RREADY <= S00_AXI_rready;
  interconnect_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  interconnect_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  interconnect_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  interconnect_to_s01_couplers_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  interconnect_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  interconnect_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  interconnect_to_s01_couplers_AWADDR(31 downto 0) <= S01_AXI_awaddr(31 downto 0);
  interconnect_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  interconnect_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  interconnect_to_s01_couplers_BREADY <= S01_AXI_bready;
  interconnect_to_s01_couplers_RREADY <= S01_AXI_rready;
  interconnect_to_s01_couplers_WDATA(31 downto 0) <= S01_AXI_wdata(31 downto 0);
  interconnect_to_s01_couplers_WSTRB(3 downto 0) <= S01_AXI_wstrb(3 downto 0);
  interconnect_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  interconnect_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  interconnect_to_s02_couplers_ARBURST(1 downto 0) <= S02_AXI_arburst(1 downto 0);
  interconnect_to_s02_couplers_ARCACHE(3 downto 0) <= S02_AXI_arcache(3 downto 0);
  interconnect_to_s02_couplers_ARID(0) <= S02_AXI_arid(0);
  interconnect_to_s02_couplers_ARLEN(7 downto 0) <= S02_AXI_arlen(7 downto 0);
  interconnect_to_s02_couplers_ARLOCK <= S02_AXI_arlock;
  interconnect_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  interconnect_to_s02_couplers_ARQOS(3 downto 0) <= S02_AXI_arqos(3 downto 0);
  interconnect_to_s02_couplers_ARSIZE(2 downto 0) <= S02_AXI_arsize(2 downto 0);
  interconnect_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  interconnect_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  interconnect_to_s02_couplers_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  interconnect_to_s02_couplers_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  interconnect_to_s02_couplers_AWID(0) <= S02_AXI_awid(0);
  interconnect_to_s02_couplers_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  interconnect_to_s02_couplers_AWLOCK <= S02_AXI_awlock;
  interconnect_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  interconnect_to_s02_couplers_AWQOS(3 downto 0) <= S02_AXI_awqos(3 downto 0);
  interconnect_to_s02_couplers_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  interconnect_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  interconnect_to_s02_couplers_BREADY <= S02_AXI_bready;
  interconnect_to_s02_couplers_RREADY <= S02_AXI_rready;
  interconnect_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  interconnect_to_s02_couplers_WLAST <= S02_AXI_wlast;
  interconnect_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  interconnect_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  m00_couplers_to_interconnect_ARREADY <= M00_AXI_arready;
  m00_couplers_to_interconnect_AWREADY <= M00_AXI_awready;
  m00_couplers_to_interconnect_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_interconnect_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_interconnect_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_interconnect_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_interconnect_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_interconnect_WREADY <= M00_AXI_wready;
  m01_couplers_to_interconnect_ARREADY <= M01_AXI_arready;
  m01_couplers_to_interconnect_AWREADY <= M01_AXI_awready;
  m01_couplers_to_interconnect_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_interconnect_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_interconnect_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_interconnect_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_interconnect_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_interconnect_WREADY <= M01_AXI_wready;
  m02_couplers_to_interconnect_ARREADY <= M02_AXI_arready;
  m02_couplers_to_interconnect_AWREADY <= M02_AXI_awready;
  m02_couplers_to_interconnect_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_interconnect_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_interconnect_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_interconnect_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_interconnect_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_interconnect_WREADY <= M02_AXI_wready;
  m03_couplers_to_interconnect_ARREADY <= M03_AXI_arready;
  m03_couplers_to_interconnect_AWREADY <= M03_AXI_awready;
  m03_couplers_to_interconnect_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_interconnect_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_interconnect_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_interconnect_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_interconnect_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_interconnect_WREADY <= M03_AXI_wready;
  m04_couplers_to_interconnect_ARREADY <= M04_AXI_arready;
  m04_couplers_to_interconnect_AWREADY <= M04_AXI_awready;
  m04_couplers_to_interconnect_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_interconnect_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_interconnect_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_interconnect_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_interconnect_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_interconnect_WREADY <= M04_AXI_wready;
  m05_couplers_to_interconnect_ARREADY <= M05_AXI_arready;
  m05_couplers_to_interconnect_AWREADY <= M05_AXI_awready;
  m05_couplers_to_interconnect_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_interconnect_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_interconnect_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_interconnect_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_interconnect_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_interconnect_WREADY <= M05_AXI_wready;
  m06_couplers_to_interconnect_ARREADY <= M06_AXI_arready;
  m06_couplers_to_interconnect_AWREADY <= M06_AXI_awready;
  m06_couplers_to_interconnect_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_interconnect_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_interconnect_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_interconnect_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_interconnect_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_interconnect_WREADY <= M06_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_4EB6IN
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m00_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m00_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m00_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m00_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m00_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1SL2GIW
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m01_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m01_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m01_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_7DG2C0
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m02_couplers_to_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m02_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m02_couplers_to_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m02_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m02_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1YCPS1Z
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m03_couplers_to_interconnect_ARPROT(2 downto 0),
      M_AXI_arready => m03_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m03_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m03_couplers_to_interconnect_AWPROT(2 downto 0),
      M_AXI_awready => m03_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m03_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m03_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_ACM7VL
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arready => m04_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m04_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awready => m04_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m04_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m04_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1HWY5FA
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m05_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m05_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m05_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_DBR4EM
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_interconnect_ARADDR(31 downto 0),
      M_AXI_arready => m06_couplers_to_interconnect_ARREADY,
      M_AXI_arvalid => m06_couplers_to_interconnect_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_interconnect_AWADDR(31 downto 0),
      M_AXI_awready => m06_couplers_to_interconnect_AWREADY,
      M_AXI_awvalid => m06_couplers_to_interconnect_AWVALID,
      M_AXI_bready => m06_couplers_to_interconnect_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_interconnect_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_interconnect_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_interconnect_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_interconnect_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_interconnect_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_interconnect_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_interconnect_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_interconnect_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_interconnect_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_interconnect_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_7XIH8P
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => interconnect_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => interconnect_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => interconnect_to_s00_couplers_ARREADY,
      S_AXI_arvalid => interconnect_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => interconnect_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => interconnect_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => interconnect_to_s00_couplers_AWREADY,
      S_AXI_awvalid => interconnect_to_s00_couplers_AWVALID,
      S_AXI_bready => interconnect_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => interconnect_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready => interconnect_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => interconnect_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready => interconnect_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => interconnect_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => interconnect_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1XSI6OU
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => interconnect_to_s01_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => interconnect_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arready => interconnect_to_s01_couplers_ARREADY,
      S_AXI_arvalid => interconnect_to_s01_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => interconnect_to_s01_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => interconnect_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awready => interconnect_to_s01_couplers_AWREADY,
      S_AXI_awvalid => interconnect_to_s01_couplers_AWVALID,
      S_AXI_bready => interconnect_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_to_s01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => interconnect_to_s01_couplers_RDATA(31 downto 0),
      S_AXI_rready => interconnect_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_to_s01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => interconnect_to_s01_couplers_WDATA(31 downto 0),
      S_AXI_wready => interconnect_to_s01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => interconnect_to_s01_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => interconnect_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_2QLUHY
     port map (
      M_ACLK => interconnect_ACLK_net,
      M_ARESETN => interconnect_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => interconnect_ACLK_net,
      S_ARESETN => interconnect_ARESETN_net,
      S_AXI_araddr(31 downto 0) => interconnect_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => interconnect_to_s02_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => interconnect_to_s02_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => interconnect_to_s02_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => interconnect_to_s02_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => interconnect_to_s02_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => interconnect_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => interconnect_to_s02_couplers_ARQOS(3 downto 0),
      S_AXI_arready => interconnect_to_s02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => interconnect_to_s02_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => interconnect_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => interconnect_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => interconnect_to_s02_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => interconnect_to_s02_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => interconnect_to_s02_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => interconnect_to_s02_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => interconnect_to_s02_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => interconnect_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => interconnect_to_s02_couplers_AWQOS(3 downto 0),
      S_AXI_awready => interconnect_to_s02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => interconnect_to_s02_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => interconnect_to_s02_couplers_AWVALID,
      S_AXI_bid(0) => interconnect_to_s02_couplers_BID(0),
      S_AXI_bready => interconnect_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => interconnect_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => interconnect_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => interconnect_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rid(0) => interconnect_to_s02_couplers_RID(0),
      S_AXI_rlast => interconnect_to_s02_couplers_RLAST,
      S_AXI_rready => interconnect_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => interconnect_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => interconnect_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => interconnect_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wlast => interconnect_to_s02_couplers_WLAST,
      S_AXI_wready => interconnect_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => interconnect_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => interconnect_to_s02_couplers_WVALID
    );
xbar: component DemoInterconnect_xbar_0
     port map (
      aclk => interconnect_ACLK_net,
      aresetn => interconnect_ARESETN_net,
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(20 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(20 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(20 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(20 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => s01_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DemoInterconnect is
  port (
    LED0_pll_aclk : out STD_LOGIC;
    LED1_pll_uart : out STD_LOGIC;
    LED2_pll_lock : out STD_LOGIC;
    UART_RX_0 : in STD_LOGIC;
    UART_RX_1 : in STD_LOGIC;
    UART_TX_0 : out STD_LOGIC;
    UART_TX_1 : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_miso_1 : in STD_LOGIC;
    m_spi_miso_2 : in STD_LOGIC;
    m_spi_miso_3 : in STD_LOGIC;
    m_spi_mosi : out STD_LOGIC;
    m_spi_mosi_1 : out STD_LOGIC;
    m_spi_mosi_2 : out STD_LOGIC;
    m_spi_mosi_3 : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    m_spi_sclk_1 : out STD_LOGIC;
    m_spi_sclk_2 : out STD_LOGIC;
    m_spi_sclk_3 : out STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_ss_1 : out STD_LOGIC;
    m_spi_ss_2 : out STD_LOGIC;
    m_spi_ss_3 : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DemoInterconnect : entity is "DemoInterconnect,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DemoInterconnect,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=14,numNonXlnxBlks=8,numHierBlks=11,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=6,da_board_cnt=5,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DemoInterconnect : entity is "DemoInterconnect.hwdef";
end DemoInterconnect;

architecture STRUCTURE of DemoInterconnect is
  component DemoInterconnect_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    aclk : out STD_LOGIC;
    uart : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component DemoInterconnect_clk_wiz_0_0;
  component DemoInterconnect_interface_axi_master_0_0 is
  port (
    if00_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    if00_load_in : in STD_LOGIC;
    if00_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    if00_load_out : out STD_LOGIC;
    if00_send_done : in STD_LOGIC;
    if00_send_busy : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_interface_axi_master_0_0;
  component DemoInterconnect_interface_axi_master_0_1 is
  port (
    if00_data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    if00_load_in : in STD_LOGIC;
    if00_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    if00_load_out : out STD_LOGIC;
    if00_send_done : in STD_LOGIC;
    if00_send_busy : in STD_LOGIC;
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_interface_axi_master_0_1;
  component DemoInterconnect_jtag_axi_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component DemoInterconnect_jtag_axi_0_0;
  component DemoInterconnect_mutex_0_0 is
  port (
    S0_AXI_ACLK : in STD_LOGIC;
    S0_AXI_ARESETN : in STD_LOGIC;
    S0_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_AWVALID : in STD_LOGIC;
    S0_AXI_AWREADY : out STD_LOGIC;
    S0_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S0_AXI_WVALID : in STD_LOGIC;
    S0_AXI_WREADY : out STD_LOGIC;
    S0_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_BVALID : out STD_LOGIC;
    S0_AXI_BREADY : in STD_LOGIC;
    S0_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_ARVALID : in STD_LOGIC;
    S0_AXI_ARREADY : out STD_LOGIC;
    S0_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S0_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S0_AXI_RVALID : out STD_LOGIC;
    S0_AXI_RREADY : in STD_LOGIC;
    S1_AXI_ACLK : in STD_LOGIC;
    S1_AXI_ARESETN : in STD_LOGIC;
    S1_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_AWVALID : in STD_LOGIC;
    S1_AXI_AWREADY : out STD_LOGIC;
    S1_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S1_AXI_WVALID : in STD_LOGIC;
    S1_AXI_WREADY : out STD_LOGIC;
    S1_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_BVALID : out STD_LOGIC;
    S1_AXI_BREADY : in STD_LOGIC;
    S1_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_ARVALID : in STD_LOGIC;
    S1_AXI_ARREADY : out STD_LOGIC;
    S1_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S1_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1_AXI_RVALID : out STD_LOGIC;
    S1_AXI_RREADY : in STD_LOGIC;
    S2_AXI_ACLK : in STD_LOGIC;
    S2_AXI_ARESETN : in STD_LOGIC;
    S2_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_AWVALID : in STD_LOGIC;
    S2_AXI_AWREADY : out STD_LOGIC;
    S2_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S2_AXI_WVALID : in STD_LOGIC;
    S2_AXI_WREADY : out STD_LOGIC;
    S2_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S2_AXI_BVALID : out STD_LOGIC;
    S2_AXI_BREADY : in STD_LOGIC;
    S2_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_ARVALID : in STD_LOGIC;
    S2_AXI_ARREADY : out STD_LOGIC;
    S2_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S2_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S2_AXI_RVALID : out STD_LOGIC;
    S2_AXI_RREADY : in STD_LOGIC
  );
  end component DemoInterconnect_mutex_0_0;
  component DemoInterconnect_uart_transceiver_0_0 is
  port (
    i_Clk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_Done : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Load : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component DemoInterconnect_uart_transceiver_0_0;
  component DemoInterconnect_uart_transceiver_0_1 is
  port (
    i_Clk : in STD_LOGIC;
    i_RX_Serial : in STD_LOGIC;
    o_RX_Done : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_TX_Load : in STD_LOGIC;
    i_TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_TX_Active : out STD_LOGIC;
    o_TX_Serial : out STD_LOGIC;
    o_TX_Done : out STD_LOGIC
  );
  end component DemoInterconnect_uart_transceiver_0_1;
  component DemoInterconnect_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component DemoInterconnect_ila_0_0;
  component DemoInterconnect_axi_spi_master_0_0 is
  port (
    m_spi_mosi : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_axi_spi_master_0_0;
  component DemoInterconnect_axi_spi_master_0_1 is
  port (
    m_spi_mosi : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_axi_spi_master_0_1;
  component DemoInterconnect_axi_spi_master_1_0 is
  port (
    m_spi_mosi : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_axi_spi_master_1_0;
  component DemoInterconnect_axi_spi_master_1_1 is
  port (
    m_spi_mosi : out STD_LOGIC;
    m_spi_miso : in STD_LOGIC;
    m_spi_ss : out STD_LOGIC;
    m_spi_sclk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  end component DemoInterconnect_axi_spi_master_1_1;
  signal UART_RX_0_1 : STD_LOGIC;
  signal UART_RX_1_1 : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal axi_spi_master_0_m_spi_mosi : STD_LOGIC;
  signal axi_spi_master_0_m_spi_sclk : STD_LOGIC;
  signal axi_spi_master_0_m_spi_ss : STD_LOGIC;
  signal axi_spi_master_1_m_spi_mosi : STD_LOGIC;
  signal axi_spi_master_1_m_spi_sclk : STD_LOGIC;
  signal axi_spi_master_1_m_spi_ss : STD_LOGIC;
  signal axi_spi_master_2_m_spi_mosi : STD_LOGIC;
  signal axi_spi_master_2_m_spi_sclk : STD_LOGIC;
  signal axi_spi_master_2_m_spi_ss : STD_LOGIC;
  signal axi_spi_master_3_m_spi_mosi : STD_LOGIC;
  signal axi_spi_master_3_m_spi_sclk : STD_LOGIC;
  signal axi_spi_master_3_m_spi_ss : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clk_wiz_0_uart : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interface_axi_master_0_M00_AXI_ARREADY : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_ARVALID : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interface_axi_master_0_M00_AXI_AWREADY : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_AWVALID : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_BREADY : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interface_axi_master_0_M00_AXI_BVALID : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_0_M00_AXI_RREADY : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interface_axi_master_0_M00_AXI_RVALID : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_0_M00_AXI_WREADY : STD_LOGIC;
  signal interface_axi_master_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interface_axi_master_0_M00_AXI_WVALID : STD_LOGIC;
  signal interface_axi_master_0_if00_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interface_axi_master_0_if00_load_out : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interface_axi_master_1_M00_AXI_ARREADY : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_ARVALID : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal interface_axi_master_1_M00_AXI_AWREADY : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_AWVALID : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_BREADY : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interface_axi_master_1_M00_AXI_BVALID : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_1_M00_AXI_RREADY : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interface_axi_master_1_M00_AXI_RVALID : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interface_axi_master_1_M00_AXI_WREADY : STD_LOGIC;
  signal interface_axi_master_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interface_axi_master_1_M00_AXI_WVALID : STD_LOGIC;
  signal interface_axi_master_1_if00_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal interface_axi_master_1_if00_load_out : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_ARLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_ARREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_ARVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal jtag_axi_0_M_AXI_AWLOCK : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_AWREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal jtag_axi_0_M_AXI_AWVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_BREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_BVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_RID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jtag_axi_0_M_AXI_RLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal jtag_axi_0_M_AXI_RVALID : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jtag_axi_0_M_AXI_WLAST : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WREADY : STD_LOGIC;
  signal jtag_axi_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal jtag_axi_0_M_AXI_WVALID : STD_LOGIC;
  signal \^m_spi_miso_1\ : STD_LOGIC;
  signal m_spi_miso_1_1 : STD_LOGIC;
  signal m_spi_miso_2_1 : STD_LOGIC;
  signal m_spi_miso_3_1 : STD_LOGIC;
  signal sys_clk_1 : STD_LOGIC;
  signal uart_transceiver_0_o_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_transceiver_0_o_RX_Done : STD_LOGIC;
  signal uart_transceiver_0_o_TX_Active : STD_LOGIC;
  signal uart_transceiver_0_o_TX_Done : STD_LOGIC;
  signal uart_transceiver_0_o_TX_Serial : STD_LOGIC;
  signal uart_transceiver_1_o_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_transceiver_1_o_RX_Done : STD_LOGIC;
  signal uart_transceiver_1_o_TX_Active : STD_LOGIC;
  signal uart_transceiver_1_o_TX_Done : STD_LOGIC;
  signal uart_transceiver_1_o_TX_Serial : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of UART_RX_0 : signal is "xilinx.com:signal:data:1.0 DATA.UART_RX_0 DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of UART_RX_0 : signal is "XIL_INTERFACENAME DATA.UART_RX_0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of UART_RX_1 : signal is "xilinx.com:signal:data:1.0 DATA.UART_RX_1 DATA";
  attribute X_INTERFACE_PARAMETER of UART_RX_1 : signal is "XIL_INTERFACENAME DATA.UART_RX_1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of UART_TX_1 : signal is "xilinx.com:signal:data:1.0 DATA.UART_TX_1 DATA";
  attribute X_INTERFACE_PARAMETER of UART_TX_1 : signal is "XIL_INTERFACENAME DATA.UART_TX_1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_miso : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MISO DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_miso : signal is "XIL_INTERFACENAME DATA.M_SPI_MISO, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_miso_1 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MISO_1 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_miso_1 : signal is "XIL_INTERFACENAME DATA.M_SPI_MISO_1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_miso_2 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MISO_2 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_miso_2 : signal is "XIL_INTERFACENAME DATA.M_SPI_MISO_2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_miso_3 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MISO_3 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_miso_3 : signal is "XIL_INTERFACENAME DATA.M_SPI_MISO_3, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_mosi : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MOSI DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_mosi : signal is "XIL_INTERFACENAME DATA.M_SPI_MOSI, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_mosi_1 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MOSI_1 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_mosi_1 : signal is "XIL_INTERFACENAME DATA.M_SPI_MOSI_1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_mosi_2 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MOSI_2 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_mosi_2 : signal is "XIL_INTERFACENAME DATA.M_SPI_MOSI_2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_mosi_3 : signal is "xilinx.com:signal:data:1.0 DATA.M_SPI_MOSI_3 DATA";
  attribute X_INTERFACE_PARAMETER of m_spi_mosi_3 : signal is "XIL_INTERFACENAME DATA.M_SPI_MOSI_3, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m_spi_sclk : signal is "xilinx.com:signal:clock:1.0 CLK.M_SPI_SCLK CLK";
  attribute X_INTERFACE_PARAMETER of m_spi_sclk : signal is "XIL_INTERFACENAME CLK.M_SPI_SCLK, CLK_DOMAIN DemoInterconnect_axi_spi_master_0_0_m_spi_sclk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_spi_sclk_1 : signal is "xilinx.com:signal:clock:1.0 CLK.M_SPI_SCLK_1 CLK";
  attribute X_INTERFACE_PARAMETER of m_spi_sclk_1 : signal is "XIL_INTERFACENAME CLK.M_SPI_SCLK_1, CLK_DOMAIN DemoInterconnect_axi_spi_master_0_1_m_spi_sclk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_spi_sclk_2 : signal is "xilinx.com:signal:clock:1.0 CLK.M_SPI_SCLK_2 CLK";
  attribute X_INTERFACE_PARAMETER of m_spi_sclk_2 : signal is "XIL_INTERFACENAME CLK.M_SPI_SCLK_2, CLK_DOMAIN DemoInterconnect_axi_spi_master_1_0_m_spi_sclk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_spi_sclk_3 : signal is "xilinx.com:signal:clock:1.0 CLK.M_SPI_SCLK_3 CLK";
  attribute X_INTERFACE_PARAMETER of m_spi_sclk_3 : signal is "XIL_INTERFACENAME CLK.M_SPI_SCLK_3, CLK_DOMAIN DemoInterconnect_axi_spi_master_1_1_m_spi_sclk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_spi_ss : signal is "xilinx.com:signal:clockenable:1.0 CE.M_SPI_SS CE";
  attribute X_INTERFACE_PARAMETER of m_spi_ss : signal is "XIL_INTERFACENAME CE.M_SPI_SS, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_spi_ss_1 : signal is "xilinx.com:signal:clockenable:1.0 CE.M_SPI_SS_1 CE";
  attribute X_INTERFACE_PARAMETER of m_spi_ss_1 : signal is "XIL_INTERFACENAME CE.M_SPI_SS_1, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_spi_ss_2 : signal is "xilinx.com:signal:clockenable:1.0 CE.M_SPI_SS_2 CE";
  attribute X_INTERFACE_PARAMETER of m_spi_ss_2 : signal is "XIL_INTERFACENAME CE.M_SPI_SS_2, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_spi_ss_3 : signal is "xilinx.com:signal:clockenable:1.0 CE.M_SPI_SS_3 CE";
  attribute X_INTERFACE_PARAMETER of m_spi_ss_3 : signal is "XIL_INTERFACENAME CE.M_SPI_SS_3, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME CLK.SYS_CLK, ASSOCIATED_RESET sys_reset, CLK_DOMAIN DemoInterconnect_sys_clk, FREQ_HZ 12000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of sys_reset : signal is "xilinx.com:signal:reset:1.0 RST.SYS_RESET RST";
  attribute X_INTERFACE_PARAMETER of sys_reset : signal is "XIL_INTERFACENAME RST.SYS_RESET, POLARITY ACTIVE_HIGH";
begin
  LED0_pll_aclk <= clk_wiz_0_clk_out1;
  LED1_pll_uart <= clk_wiz_0_uart;
  LED2_pll_lock <= clk_wiz_0_locked;
  UART_RX_0_1 <= UART_RX_0;
  UART_RX_1_1 <= UART_RX_1;
  UART_TX_0 <= uart_transceiver_0_o_TX_Serial;
  UART_TX_1 <= uart_transceiver_1_o_TX_Serial;
  \^m_spi_miso_1\ <= m_spi_miso;
  m_spi_miso_1_1 <= m_spi_miso_1;
  m_spi_miso_2_1 <= m_spi_miso_2;
  m_spi_miso_3_1 <= m_spi_miso_3;
  m_spi_mosi <= axi_spi_master_0_m_spi_mosi;
  m_spi_mosi_1 <= axi_spi_master_1_m_spi_mosi;
  m_spi_mosi_2 <= axi_spi_master_2_m_spi_mosi;
  m_spi_mosi_3 <= axi_spi_master_3_m_spi_mosi;
  m_spi_sclk <= axi_spi_master_0_m_spi_sclk;
  m_spi_sclk_1 <= axi_spi_master_1_m_spi_sclk;
  m_spi_sclk_2 <= axi_spi_master_2_m_spi_sclk;
  m_spi_sclk_3 <= axi_spi_master_3_m_spi_sclk;
  m_spi_ss <= axi_spi_master_0_m_spi_ss;
  m_spi_ss_1 <= axi_spi_master_1_m_spi_ss;
  m_spi_ss_2 <= axi_spi_master_2_m_spi_ss;
  m_spi_ss_3 <= axi_spi_master_3_m_spi_ss;
  sys_clk_1 <= sys_clk;
axi_spi_master_0: component DemoInterconnect_axi_spi_master_0_0
     port map (
      m_spi_miso => \^m_spi_miso_1\,
      m_spi_mosi => axi_spi_master_0_m_spi_mosi,
      m_spi_sclk => axi_spi_master_0_m_spi_sclk,
      m_spi_ss => axi_spi_master_0_m_spi_ss,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(3 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => clk_wiz_0_locked,
      s00_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
axi_spi_master_1: component DemoInterconnect_axi_spi_master_0_1
     port map (
      m_spi_miso => m_spi_miso_1_1,
      m_spi_mosi => axi_spi_master_1_m_spi_mosi,
      m_spi_sclk => axi_spi_master_1_m_spi_sclk,
      m_spi_ss => axi_spi_master_1_m_spi_ss,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(3 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => clk_wiz_0_locked,
      s00_axi_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_0_M01_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_0_M01_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_0_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_0_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_0_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_0_M01_AXI_WVALID
    );
axi_spi_master_2: component DemoInterconnect_axi_spi_master_1_0
     port map (
      m_spi_miso => m_spi_miso_2_1,
      m_spi_mosi => axi_spi_master_2_m_spi_mosi,
      m_spi_sclk => axi_spi_master_2_m_spi_sclk,
      m_spi_ss => axi_spi_master_2_m_spi_ss,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(3 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => clk_wiz_0_locked,
      s00_axi_arprot(2 downto 0) => axi_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_0_M02_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_0_M02_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_0_M02_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_0_M02_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_0_M02_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_0_M02_AXI_WVALID
    );
axi_spi_master_3: component DemoInterconnect_axi_spi_master_1_1
     port map (
      m_spi_miso => m_spi_miso_3_1,
      m_spi_mosi => axi_spi_master_3_m_spi_mosi,
      m_spi_sclk => axi_spi_master_3_m_spi_sclk,
      m_spi_ss => axi_spi_master_3_m_spi_ss,
      s00_axi_aclk => clk_wiz_0_clk_out1,
      s00_axi_araddr(3 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => clk_wiz_0_locked,
      s00_axi_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_interconnect_0_M03_AXI_ARREADY,
      s00_axi_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_interconnect_0_M03_AXI_AWREADY,
      s00_axi_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      s00_axi_bready => axi_interconnect_0_M03_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_interconnect_0_M03_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_interconnect_0_M03_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_interconnect_0_M03_AXI_WVALID
    );
clk_wiz_0: component DemoInterconnect_clk_wiz_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      clk_in1 => sys_clk_1,
      locked => clk_wiz_0_locked,
      reset => sys_reset,
      uart => clk_wiz_0_uart
    );
ila_0: component DemoInterconnect_ila_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(0) => uart_transceiver_0_o_RX_Done,
      probe1(7 downto 0) => uart_transceiver_0_o_RX_Byte(7 downto 0),
      probe2(0) => interface_axi_master_0_if00_load_out,
      probe3(7 downto 0) => interface_axi_master_0_if00_data_out(7 downto 0),
      probe4(0) => uart_transceiver_1_o_RX_Done,
      probe5(7) => uart_transceiver_1_o_RX_Done,
      probe5(6) => uart_transceiver_1_o_RX_Done,
      probe5(5) => uart_transceiver_1_o_RX_Done,
      probe5(4) => uart_transceiver_1_o_RX_Done,
      probe5(3) => uart_transceiver_1_o_RX_Done,
      probe5(2) => uart_transceiver_1_o_RX_Done,
      probe5(1) => uart_transceiver_1_o_RX_Done,
      probe5(0) => uart_transceiver_1_o_RX_Done,
      probe6(0) => interface_axi_master_1_if00_load_out,
      probe7(7 downto 0) => interface_axi_master_1_if00_data_out(7 downto 0)
    );
interconnect: entity work.DemoInterconnect_axi_interconnect_0_0
     port map (
      ACLK => clk_wiz_0_clk_out1,
      ARESETN => clk_wiz_0_locked,
      M00_ACLK => clk_wiz_0_clk_out1,
      M00_ARESETN => clk_wiz_0_locked,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => clk_wiz_0_clk_out1,
      M01_ARESETN => clk_wiz_0_locked,
      M01_AXI_araddr(31 downto 0) => axi_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arprot(2 downto 0) => axi_interconnect_0_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => axi_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awprot(2 downto 0) => axi_interconnect_0_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => axi_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_interconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => clk_wiz_0_clk_out1,
      M02_ARESETN => clk_wiz_0_locked,
      M02_AXI_araddr(31 downto 0) => axi_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arprot(2 downto 0) => axi_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => axi_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => axi_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awprot(2 downto 0) => axi_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => axi_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => axi_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => clk_wiz_0_clk_out1,
      M03_ARESETN => clk_wiz_0_locked,
      M03_AXI_araddr(31 downto 0) => axi_interconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => axi_interconnect_0_M03_AXI_ARPROT(2 downto 0),
      M03_AXI_arready => axi_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => axi_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => axi_interconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => axi_interconnect_0_M03_AXI_AWPROT(2 downto 0),
      M03_AXI_awready => axi_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => axi_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => axi_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => axi_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => axi_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => axi_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => axi_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => axi_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => axi_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => axi_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => axi_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => axi_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => axi_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => clk_wiz_0_clk_out1,
      M04_ARESETN => clk_wiz_0_locked,
      M04_AXI_araddr(31 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready => axi_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => axi_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready => axi_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => axi_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => axi_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => axi_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => axi_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => axi_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => axi_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => axi_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => clk_wiz_0_clk_out1,
      M05_ARESETN => clk_wiz_0_locked,
      M05_AXI_araddr(31 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => axi_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => axi_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => axi_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => axi_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => axi_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => axi_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => axi_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => axi_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => axi_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => axi_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => clk_wiz_0_clk_out1,
      M06_ARESETN => clk_wiz_0_locked,
      M06_AXI_araddr(31 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => axi_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => axi_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => axi_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => axi_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => axi_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => axi_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => axi_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => axi_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => axi_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => axi_interconnect_0_M06_AXI_WVALID,
      S00_ACLK => clk_wiz_0_clk_out1,
      S00_ARESETN => clk_wiz_0_locked,
      S00_AXI_araddr(31 downto 0) => interface_axi_master_0_M00_AXI_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => interface_axi_master_0_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => interface_axi_master_0_M00_AXI_ARREADY,
      S00_AXI_arvalid => interface_axi_master_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(31 downto 0) => interface_axi_master_0_M00_AXI_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => interface_axi_master_0_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => interface_axi_master_0_M00_AXI_AWREADY,
      S00_AXI_awvalid => interface_axi_master_0_M00_AXI_AWVALID,
      S00_AXI_bready => interface_axi_master_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => interface_axi_master_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => interface_axi_master_0_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => interface_axi_master_0_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rready => interface_axi_master_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => interface_axi_master_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => interface_axi_master_0_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => interface_axi_master_0_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wready => interface_axi_master_0_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => interface_axi_master_0_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => interface_axi_master_0_M00_AXI_WVALID,
      S01_ACLK => clk_wiz_0_clk_out1,
      S01_ARESETN => clk_wiz_0_locked,
      S01_AXI_araddr(31 downto 0) => interface_axi_master_1_M00_AXI_ARADDR(31 downto 0),
      S01_AXI_arprot(2 downto 0) => interface_axi_master_1_M00_AXI_ARPROT(2 downto 0),
      S01_AXI_arready => interface_axi_master_1_M00_AXI_ARREADY,
      S01_AXI_arvalid => interface_axi_master_1_M00_AXI_ARVALID,
      S01_AXI_awaddr(31 downto 0) => interface_axi_master_1_M00_AXI_AWADDR(31 downto 0),
      S01_AXI_awprot(2 downto 0) => interface_axi_master_1_M00_AXI_AWPROT(2 downto 0),
      S01_AXI_awready => interface_axi_master_1_M00_AXI_AWREADY,
      S01_AXI_awvalid => interface_axi_master_1_M00_AXI_AWVALID,
      S01_AXI_bready => interface_axi_master_1_M00_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => interface_axi_master_1_M00_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => interface_axi_master_1_M00_AXI_BVALID,
      S01_AXI_rdata(31 downto 0) => interface_axi_master_1_M00_AXI_RDATA(31 downto 0),
      S01_AXI_rready => interface_axi_master_1_M00_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => interface_axi_master_1_M00_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => interface_axi_master_1_M00_AXI_RVALID,
      S01_AXI_wdata(31 downto 0) => interface_axi_master_1_M00_AXI_WDATA(31 downto 0),
      S01_AXI_wready => interface_axi_master_1_M00_AXI_WREADY,
      S01_AXI_wstrb(3 downto 0) => interface_axi_master_1_M00_AXI_WSTRB(3 downto 0),
      S01_AXI_wvalid => interface_axi_master_1_M00_AXI_WVALID,
      S02_ACLK => clk_wiz_0_clk_out1,
      S02_ARESETN => clk_wiz_0_locked,
      S02_AXI_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      S02_AXI_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      S02_AXI_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      S02_AXI_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      S02_AXI_arlock => jtag_axi_0_M_AXI_ARLOCK,
      S02_AXI_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      S02_AXI_arready => jtag_axi_0_M_AXI_ARREADY,
      S02_AXI_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      S02_AXI_arvalid => jtag_axi_0_M_AXI_ARVALID,
      S02_AXI_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      S02_AXI_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      S02_AXI_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      S02_AXI_awlock => jtag_axi_0_M_AXI_AWLOCK,
      S02_AXI_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      S02_AXI_awready => jtag_axi_0_M_AXI_AWREADY,
      S02_AXI_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      S02_AXI_awvalid => jtag_axi_0_M_AXI_AWVALID,
      S02_AXI_bid(0) => jtag_axi_0_M_AXI_BID(0),
      S02_AXI_bready => jtag_axi_0_M_AXI_BREADY,
      S02_AXI_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      S02_AXI_bvalid => jtag_axi_0_M_AXI_BVALID,
      S02_AXI_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      S02_AXI_rid(0) => jtag_axi_0_M_AXI_RID(0),
      S02_AXI_rlast => jtag_axi_0_M_AXI_RLAST,
      S02_AXI_rready => jtag_axi_0_M_AXI_RREADY,
      S02_AXI_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      S02_AXI_rvalid => jtag_axi_0_M_AXI_RVALID,
      S02_AXI_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      S02_AXI_wlast => jtag_axi_0_M_AXI_WLAST,
      S02_AXI_wready => jtag_axi_0_M_AXI_WREADY,
      S02_AXI_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      S02_AXI_wvalid => jtag_axi_0_M_AXI_WVALID
    );
interface_axi_master_0: component DemoInterconnect_interface_axi_master_0_0
     port map (
      if00_data_in(7 downto 0) => uart_transceiver_0_o_RX_Byte(7 downto 0),
      if00_data_out(7 downto 0) => interface_axi_master_0_if00_data_out(7 downto 0),
      if00_load_in => uart_transceiver_0_o_RX_Done,
      if00_load_out => interface_axi_master_0_if00_load_out,
      if00_send_busy => uart_transceiver_0_o_TX_Active,
      if00_send_done => uart_transceiver_0_o_TX_Done,
      m00_axi_aclk => clk_wiz_0_clk_out1,
      m00_axi_araddr(31 downto 0) => interface_axi_master_0_M00_AXI_ARADDR(31 downto 0),
      m00_axi_aresetn => clk_wiz_0_locked,
      m00_axi_arprot(2 downto 0) => interface_axi_master_0_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arready => interface_axi_master_0_M00_AXI_ARREADY,
      m00_axi_arvalid => interface_axi_master_0_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => interface_axi_master_0_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awprot(2 downto 0) => interface_axi_master_0_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awready => interface_axi_master_0_M00_AXI_AWREADY,
      m00_axi_awvalid => interface_axi_master_0_M00_AXI_AWVALID,
      m00_axi_bready => interface_axi_master_0_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => interface_axi_master_0_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => interface_axi_master_0_M00_AXI_BVALID,
      m00_axi_rdata(31 downto 0) => interface_axi_master_0_M00_AXI_RDATA(31 downto 0),
      m00_axi_rready => interface_axi_master_0_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => interface_axi_master_0_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => interface_axi_master_0_M00_AXI_RVALID,
      m00_axi_wdata(31 downto 0) => interface_axi_master_0_M00_AXI_WDATA(31 downto 0),
      m00_axi_wready => interface_axi_master_0_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => interface_axi_master_0_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wvalid => interface_axi_master_0_M00_AXI_WVALID
    );
interface_axi_master_1: component DemoInterconnect_interface_axi_master_0_1
     port map (
      if00_data_in(7 downto 0) => uart_transceiver_1_o_RX_Byte(7 downto 0),
      if00_data_out(7 downto 0) => interface_axi_master_1_if00_data_out(7 downto 0),
      if00_load_in => uart_transceiver_1_o_RX_Done,
      if00_load_out => interface_axi_master_1_if00_load_out,
      if00_send_busy => uart_transceiver_1_o_TX_Active,
      if00_send_done => uart_transceiver_1_o_TX_Done,
      m00_axi_aclk => clk_wiz_0_clk_out1,
      m00_axi_araddr(31 downto 0) => interface_axi_master_1_M00_AXI_ARADDR(31 downto 0),
      m00_axi_aresetn => clk_wiz_0_locked,
      m00_axi_arprot(2 downto 0) => interface_axi_master_1_M00_AXI_ARPROT(2 downto 0),
      m00_axi_arready => interface_axi_master_1_M00_AXI_ARREADY,
      m00_axi_arvalid => interface_axi_master_1_M00_AXI_ARVALID,
      m00_axi_awaddr(31 downto 0) => interface_axi_master_1_M00_AXI_AWADDR(31 downto 0),
      m00_axi_awprot(2 downto 0) => interface_axi_master_1_M00_AXI_AWPROT(2 downto 0),
      m00_axi_awready => interface_axi_master_1_M00_AXI_AWREADY,
      m00_axi_awvalid => interface_axi_master_1_M00_AXI_AWVALID,
      m00_axi_bready => interface_axi_master_1_M00_AXI_BREADY,
      m00_axi_bresp(1 downto 0) => interface_axi_master_1_M00_AXI_BRESP(1 downto 0),
      m00_axi_bvalid => interface_axi_master_1_M00_AXI_BVALID,
      m00_axi_rdata(31 downto 0) => interface_axi_master_1_M00_AXI_RDATA(31 downto 0),
      m00_axi_rready => interface_axi_master_1_M00_AXI_RREADY,
      m00_axi_rresp(1 downto 0) => interface_axi_master_1_M00_AXI_RRESP(1 downto 0),
      m00_axi_rvalid => interface_axi_master_1_M00_AXI_RVALID,
      m00_axi_wdata(31 downto 0) => interface_axi_master_1_M00_AXI_WDATA(31 downto 0),
      m00_axi_wready => interface_axi_master_1_M00_AXI_WREADY,
      m00_axi_wstrb(3 downto 0) => interface_axi_master_1_M00_AXI_WSTRB(3 downto 0),
      m00_axi_wvalid => interface_axi_master_1_M00_AXI_WVALID
    );
jtag_axi_0: component DemoInterconnect_jtag_axi_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => clk_wiz_0_locked,
      m_axi_araddr(31 downto 0) => jtag_axi_0_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => jtag_axi_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => jtag_axi_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(0) => jtag_axi_0_M_AXI_ARID(0),
      m_axi_arlen(7 downto 0) => jtag_axi_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock => jtag_axi_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => jtag_axi_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => jtag_axi_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => jtag_axi_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => jtag_axi_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => jtag_axi_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 0) => jtag_axi_0_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => jtag_axi_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => jtag_axi_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(0) => jtag_axi_0_M_AXI_AWID(0),
      m_axi_awlen(7 downto 0) => jtag_axi_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock => jtag_axi_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => jtag_axi_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => jtag_axi_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => jtag_axi_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => jtag_axi_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => jtag_axi_0_M_AXI_AWVALID,
      m_axi_bid(0) => jtag_axi_0_M_AXI_BID(0),
      m_axi_bready => jtag_axi_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => jtag_axi_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => jtag_axi_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => jtag_axi_0_M_AXI_RDATA(31 downto 0),
      m_axi_rid(0) => jtag_axi_0_M_AXI_RID(0),
      m_axi_rlast => jtag_axi_0_M_AXI_RLAST,
      m_axi_rready => jtag_axi_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => jtag_axi_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => jtag_axi_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => jtag_axi_0_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => jtag_axi_0_M_AXI_WLAST,
      m_axi_wready => jtag_axi_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => jtag_axi_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => jtag_axi_0_M_AXI_WVALID
    );
master_comm_mutex: component DemoInterconnect_mutex_0_0
     port map (
      S0_AXI_ACLK => clk_wiz_0_clk_out1,
      S0_AXI_ARADDR(31 downto 0) => axi_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      S0_AXI_ARESETN => clk_wiz_0_locked,
      S0_AXI_ARREADY => axi_interconnect_0_M04_AXI_ARREADY,
      S0_AXI_ARVALID => axi_interconnect_0_M04_AXI_ARVALID,
      S0_AXI_AWADDR(31 downto 0) => axi_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      S0_AXI_AWREADY => axi_interconnect_0_M04_AXI_AWREADY,
      S0_AXI_AWVALID => axi_interconnect_0_M04_AXI_AWVALID,
      S0_AXI_BREADY => axi_interconnect_0_M04_AXI_BREADY,
      S0_AXI_BRESP(1 downto 0) => axi_interconnect_0_M04_AXI_BRESP(1 downto 0),
      S0_AXI_BVALID => axi_interconnect_0_M04_AXI_BVALID,
      S0_AXI_RDATA(31 downto 0) => axi_interconnect_0_M04_AXI_RDATA(31 downto 0),
      S0_AXI_RREADY => axi_interconnect_0_M04_AXI_RREADY,
      S0_AXI_RRESP(1 downto 0) => axi_interconnect_0_M04_AXI_RRESP(1 downto 0),
      S0_AXI_RVALID => axi_interconnect_0_M04_AXI_RVALID,
      S0_AXI_WDATA(31 downto 0) => axi_interconnect_0_M04_AXI_WDATA(31 downto 0),
      S0_AXI_WREADY => axi_interconnect_0_M04_AXI_WREADY,
      S0_AXI_WSTRB(3 downto 0) => axi_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      S0_AXI_WVALID => axi_interconnect_0_M04_AXI_WVALID,
      S1_AXI_ACLK => clk_wiz_0_clk_out1,
      S1_AXI_ARADDR(31 downto 0) => axi_interconnect_0_M05_AXI_ARADDR(31 downto 0),
      S1_AXI_ARESETN => clk_wiz_0_locked,
      S1_AXI_ARREADY => axi_interconnect_0_M05_AXI_ARREADY,
      S1_AXI_ARVALID => axi_interconnect_0_M05_AXI_ARVALID,
      S1_AXI_AWADDR(31 downto 0) => axi_interconnect_0_M05_AXI_AWADDR(31 downto 0),
      S1_AXI_AWREADY => axi_interconnect_0_M05_AXI_AWREADY,
      S1_AXI_AWVALID => axi_interconnect_0_M05_AXI_AWVALID,
      S1_AXI_BREADY => axi_interconnect_0_M05_AXI_BREADY,
      S1_AXI_BRESP(1 downto 0) => axi_interconnect_0_M05_AXI_BRESP(1 downto 0),
      S1_AXI_BVALID => axi_interconnect_0_M05_AXI_BVALID,
      S1_AXI_RDATA(31 downto 0) => axi_interconnect_0_M05_AXI_RDATA(31 downto 0),
      S1_AXI_RREADY => axi_interconnect_0_M05_AXI_RREADY,
      S1_AXI_RRESP(1 downto 0) => axi_interconnect_0_M05_AXI_RRESP(1 downto 0),
      S1_AXI_RVALID => axi_interconnect_0_M05_AXI_RVALID,
      S1_AXI_WDATA(31 downto 0) => axi_interconnect_0_M05_AXI_WDATA(31 downto 0),
      S1_AXI_WREADY => axi_interconnect_0_M05_AXI_WREADY,
      S1_AXI_WSTRB(3 downto 0) => axi_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      S1_AXI_WVALID => axi_interconnect_0_M05_AXI_WVALID,
      S2_AXI_ACLK => clk_wiz_0_clk_out1,
      S2_AXI_ARADDR(31 downto 0) => axi_interconnect_0_M06_AXI_ARADDR(31 downto 0),
      S2_AXI_ARESETN => clk_wiz_0_locked,
      S2_AXI_ARREADY => axi_interconnect_0_M06_AXI_ARREADY,
      S2_AXI_ARVALID => axi_interconnect_0_M06_AXI_ARVALID,
      S2_AXI_AWADDR(31 downto 0) => axi_interconnect_0_M06_AXI_AWADDR(31 downto 0),
      S2_AXI_AWREADY => axi_interconnect_0_M06_AXI_AWREADY,
      S2_AXI_AWVALID => axi_interconnect_0_M06_AXI_AWVALID,
      S2_AXI_BREADY => axi_interconnect_0_M06_AXI_BREADY,
      S2_AXI_BRESP(1 downto 0) => axi_interconnect_0_M06_AXI_BRESP(1 downto 0),
      S2_AXI_BVALID => axi_interconnect_0_M06_AXI_BVALID,
      S2_AXI_RDATA(31 downto 0) => axi_interconnect_0_M06_AXI_RDATA(31 downto 0),
      S2_AXI_RREADY => axi_interconnect_0_M06_AXI_RREADY,
      S2_AXI_RRESP(1 downto 0) => axi_interconnect_0_M06_AXI_RRESP(1 downto 0),
      S2_AXI_RVALID => axi_interconnect_0_M06_AXI_RVALID,
      S2_AXI_WDATA(31 downto 0) => axi_interconnect_0_M06_AXI_WDATA(31 downto 0),
      S2_AXI_WREADY => axi_interconnect_0_M06_AXI_WREADY,
      S2_AXI_WSTRB(3 downto 0) => axi_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      S2_AXI_WVALID => axi_interconnect_0_M06_AXI_WVALID
    );
uart_transceiver_0: component DemoInterconnect_uart_transceiver_0_0
     port map (
      i_Clk => clk_wiz_0_uart,
      i_RX_Serial => UART_RX_0_1,
      i_TX_Byte(7 downto 0) => interface_axi_master_0_if00_data_out(7 downto 0),
      i_TX_Load => interface_axi_master_0_if00_load_out,
      o_RX_Byte(7 downto 0) => uart_transceiver_0_o_RX_Byte(7 downto 0),
      o_RX_Done => uart_transceiver_0_o_RX_Done,
      o_TX_Active => uart_transceiver_0_o_TX_Active,
      o_TX_Done => uart_transceiver_0_o_TX_Done,
      o_TX_Serial => uart_transceiver_0_o_TX_Serial
    );
uart_transceiver_1: component DemoInterconnect_uart_transceiver_0_1
     port map (
      i_Clk => clk_wiz_0_uart,
      i_RX_Serial => UART_RX_1_1,
      i_TX_Byte(7 downto 0) => interface_axi_master_1_if00_data_out(7 downto 0),
      i_TX_Load => interface_axi_master_1_if00_load_out,
      o_RX_Byte(7 downto 0) => uart_transceiver_1_o_RX_Byte(7 downto 0),
      o_RX_Done => uart_transceiver_1_o_RX_Done,
      o_TX_Active => uart_transceiver_1_o_TX_Active,
      o_TX_Done => uart_transceiver_1_o_TX_Done,
      o_TX_Serial => uart_transceiver_1_o_TX_Serial
    );
end STRUCTURE;
