// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Tue Nov 14 17:13:40 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoInterconnect_axi_spi_master_0_0_sim_netlist.v
// Design      : DemoInterconnect_axi_spi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_axi_spi_master_0_0,axi_spi_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_spi_master_v1_0,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (m_spi_mosi,
    m_spi_miso,
    m_spi_ss,
    m_spi_sclk,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:signal:data:1.0 m_spi_mosi DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_spi_mosi, LAYERED_METADATA undef" *) output m_spi_mosi;
  (* x_interface_info = "xilinx.com:signal:data:1.0 m_spi_miso DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_spi_miso, LAYERED_METADATA undef" *) input m_spi_miso;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 m_spi_ss CE" *) (* x_interface_parameter = "XIL_INTERFACENAME m_spi_ss, FREQ_HZ 100000000, PHASE 0, POLARITY ACTIVE_LOW" *) output m_spi_ss;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_spi_sclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_spi_sclk, ASSOCIATED_CLKEN m_spi_ss, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN DemoInterconnect_axi_spi_master_0_0_m_spi_sclk" *) output m_spi_sclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 72000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 72000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF S00_AXI" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire m_spi_miso;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .m_spi_miso(m_spi_miso),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    m_spi_ss,
    S_AXI_ARREADY,
    s00_axi_rdata,
    m_spi_sclk,
    s00_axi_rvalid,
    s00_axi_bvalid,
    m_spi_mosi,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    m_spi_miso,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output m_spi_ss;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output m_spi_sclk;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output m_spi_mosi;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input m_spi_miso;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire m_spi_miso;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0_S00_AXI axi_spi_master_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .m_spi_miso(m_spi_miso),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    m_spi_ss,
    S_AXI_ARREADY,
    s00_axi_rdata,
    m_spi_sclk,
    s00_axi_rvalid,
    s00_axi_bvalid,
    m_spi_mosi,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    m_spi_miso,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output m_spi_ss;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output m_spi_sclk;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output m_spi_mosi;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input m_spi_miso;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire axi_arready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rdata;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire m_spi_miso;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire p2s_load;
  wire p2s_load0;
  wire p2s_load_i_2_n_0;
  wire [2:0]packet_byte_cnt__12;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]shift_data;
  wire [7:0]shift_o;
  wire [7:0]spi_rx_byte;
  wire spi_tx_rx_busy;
  wire spi_tx_rx_done;
  wire spi_tx_rx_start;
  wire ss_o;

  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(s00_axi_rvalid),
        .O(axi_rdata));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[0]),
        .Q(s00_axi_rdata[0]),
        .R(1'b0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[10]),
        .Q(s00_axi_rdata[10]),
        .R(1'b0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[11]),
        .Q(s00_axi_rdata[11]),
        .R(1'b0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[12]),
        .Q(s00_axi_rdata[12]),
        .R(1'b0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[13]),
        .Q(s00_axi_rdata[13]),
        .R(1'b0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[14]),
        .Q(s00_axi_rdata[14]),
        .R(1'b0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[15]),
        .Q(s00_axi_rdata[15]),
        .R(1'b0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[16]),
        .Q(s00_axi_rdata[16]),
        .R(1'b0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[17]),
        .Q(s00_axi_rdata[17]),
        .R(1'b0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[18]),
        .Q(s00_axi_rdata[18]),
        .R(1'b0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[19]),
        .Q(s00_axi_rdata[19]),
        .R(1'b0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[1]),
        .Q(s00_axi_rdata[1]),
        .R(1'b0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[20]),
        .Q(s00_axi_rdata[20]),
        .R(1'b0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[21]),
        .Q(s00_axi_rdata[21]),
        .R(1'b0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[22]),
        .Q(s00_axi_rdata[22]),
        .R(1'b0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[23]),
        .Q(s00_axi_rdata[23]),
        .R(1'b0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[24]),
        .Q(s00_axi_rdata[24]),
        .R(1'b0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[25]),
        .Q(s00_axi_rdata[25]),
        .R(1'b0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[26]),
        .Q(s00_axi_rdata[26]),
        .R(1'b0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[27]),
        .Q(s00_axi_rdata[27]),
        .R(1'b0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[28]),
        .Q(s00_axi_rdata[28]),
        .R(1'b0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[29]),
        .Q(s00_axi_rdata[29]),
        .R(1'b0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[2]),
        .Q(s00_axi_rdata[2]),
        .R(1'b0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[30]),
        .Q(s00_axi_rdata[30]),
        .R(1'b0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[31]),
        .Q(s00_axi_rdata[31]),
        .R(1'b0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[3]),
        .Q(s00_axi_rdata[3]),
        .R(1'b0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[4]),
        .Q(s00_axi_rdata[4]),
        .R(1'b0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[5]),
        .Q(s00_axi_rdata[5]),
        .R(1'b0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[6]),
        .Q(s00_axi_rdata[6]),
        .R(1'b0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[7]),
        .Q(s00_axi_rdata[7]),
        .R(1'b0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[8]),
        .Q(s00_axi_rdata[8]),
        .R(1'b0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_rdata),
        .D(shift_data[9]),
        .Q(s00_axi_rdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial2parallel byte2word
       (.D(shift_data),
        .Q(spi_rx_byte),
        .axi_arready0(axi_arready0),
        .axi_arready_reg(S_AXI_ARREADY),
        .packet_byte_cnt__12(packet_byte_cnt__12),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_wstrb(s00_axi_wstrb),
        .spi_tx_rx_done(spi_tx_rx_done));
  LUT2 #(
    .INIT(4'h8)) 
    p2s_load_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .O(p2s_load_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    p2s_load_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p2s_load0),
        .Q(p2s_load),
        .R(axi_awready_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_behave_v2 spi_master_inst
       (.E(spi_tx_rx_start),
        .Q(spi_rx_byte),
        .m_spi_miso(m_spi_miso),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .\shift_o_reg[7] (shift_o),
        .spi_tx_rx_busy(spi_tx_rx_busy),
        .spi_tx_rx_done(spi_tx_rx_done),
        .ss_o(ss_o));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_parallel2serial word2byte
       (.E(spi_tx_rx_start),
        .Q(shift_o),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_wready_reg(S_AXI_WREADY),
        .p2s_load(p2s_load),
        .p2s_load0(p2s_load0),
        .packet_byte_cnt__12(packet_byte_cnt__12),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(p2s_load_i_2_n_0),
        .spi_tx_rx_busy(spi_tx_rx_busy),
        .ss_o(ss_o));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_parallel2serial
   (ss_o,
    p2s_load0,
    E,
    Q,
    s00_axi_aclk,
    p2s_load,
    spi_tx_rx_busy,
    s00_axi_wvalid,
    axi_awready_reg,
    axi_wready_reg,
    s00_axi_arvalid,
    packet_byte_cnt__12,
    s00_axi_wdata);
  output ss_o;
  output p2s_load0;
  output [0:0]E;
  output [7:0]Q;
  input s00_axi_aclk;
  input p2s_load;
  input spi_tx_rx_busy;
  input s00_axi_wvalid;
  input axi_awready_reg;
  input axi_wready_reg;
  input s00_axi_arvalid;
  input [2:0]packet_byte_cnt__12;
  input [31:0]s00_axi_wdata;

  wire [0:0]E;
  wire [7:0]Q;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire p2s_busy;
  wire p2s_load;
  wire p2s_load0;
  wire [7:0]p_1_in;
  wire [2:0]packet_byte_cnt__12;
  wire s00_axi_aclk;
  wire s00_axi_arvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire \send_data[31]_i_1_n_0 ;
  wire \send_data_reg_n_0_[0] ;
  wire \send_data_reg_n_0_[1] ;
  wire \send_data_reg_n_0_[2] ;
  wire \send_data_reg_n_0_[3] ;
  wire \send_data_reg_n_0_[4] ;
  wire \send_data_reg_n_0_[5] ;
  wire \send_data_reg_n_0_[6] ;
  wire \send_data_reg_n_0_[7] ;
  wire sending_i_1_n_0;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_count_reg_n_0_[0] ;
  wire \shift_count_reg_n_0_[1] ;
  wire \shift_count_reg_n_0_[2] ;
  wire shift_o1;
  wire \shift_o[0]_i_2_n_0 ;
  wire \shift_o[1]_i_2_n_0 ;
  wire \shift_o[2]_i_2_n_0 ;
  wire \shift_o[3]_i_2_n_0 ;
  wire \shift_o[4]_i_2_n_0 ;
  wire \shift_o[5]_i_2_n_0 ;
  wire \shift_o[6]_i_2_n_0 ;
  wire \shift_o[7]_i_1_n_0 ;
  wire \shift_o[7]_i_3_n_0 ;
  wire spi_tx_rx_busy;
  wire ss_o;
  wire ss_o_i_1_n_0;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \load_buffer_val[7]_i_1 
       (.I0(ss_o),
        .O(E));
  LUT6 #(
    .INIT(64'h000000000000FF80)) 
    p2s_load_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg),
        .I2(axi_wready_reg),
        .I3(s00_axi_arvalid),
        .I4(p2s_busy),
        .I5(p2s_load),
        .O(p2s_load0));
  LUT2 #(
    .INIT(4'h2)) 
    \send_data[31]_i_1 
       (.I0(p2s_load),
        .I1(p2s_busy),
        .O(\send_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\send_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(data2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(data2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(data2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\send_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(data2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(data2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(data2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(data2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(data3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(data3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\send_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(data3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(data3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\send_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\send_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\send_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\send_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\send_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\send_data[31]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(data1[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    sending_i_1
       (.I0(tx_done_reg_n_0),
        .I1(p2s_busy),
        .I2(p2s_load),
        .O(sending_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sending_i_1_n_0),
        .Q(p2s_busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FF00F0BB88BB88)) 
    \shift_count[0]_i_1 
       (.I0(packet_byte_cnt__12[0]),
        .I1(\send_data[31]_i_1_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(shift_o1),
        .O(\shift_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF00FF000B8B8B8B8)) 
    \shift_count[1]_i_1 
       (.I0(packet_byte_cnt__12[1]),
        .I1(\send_data[31]_i_1_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(shift_o1),
        .O(\shift_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF00000BBBB8888)) 
    \shift_count[2]_i_1 
       (.I0(packet_byte_cnt__12[2]),
        .I1(\send_data[31]_i_1_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(shift_o1),
        .O(\shift_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \shift_count[2]_i_3 
       (.I0(tx_done_reg_n_0),
        .I1(p2s_busy),
        .I2(ss_o),
        .I3(spi_tx_rx_busy),
        .O(shift_o1));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[0]_i_1 
       (.I0(\shift_o[0]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[0]_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[0]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[0] ),
        .O(\shift_o[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[1]_i_1 
       (.I0(\shift_o[1]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[1]_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[1]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[1] ),
        .O(\shift_o[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[2]_i_1 
       (.I0(\shift_o[2]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[2]_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[2]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[2] ),
        .O(\shift_o[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[3]_i_1 
       (.I0(\shift_o[3]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[3]_i_2 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[3]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[3] ),
        .O(\shift_o[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[4]_i_1 
       (.I0(\shift_o[4]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[4]_i_2 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[4]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[4] ),
        .O(\shift_o[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[5]_i_1 
       (.I0(\shift_o[5]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[5]_i_2 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[5]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[5] ),
        .O(\shift_o[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[6]_i_1 
       (.I0(\shift_o[6]_i_2_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[6]_i_2 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[6]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[6] ),
        .O(\shift_o[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \shift_o[7]_i_1 
       (.I0(spi_tx_rx_busy),
        .I1(ss_o),
        .I2(p2s_busy),
        .I3(tx_done_reg_n_0),
        .O(\shift_o[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFF2FFF0FF)) 
    \shift_o[7]_i_2 
       (.I0(\shift_o[7]_i_3_n_0 ),
        .I1(\shift_count_reg_n_0_[2] ),
        .I2(tx_done_reg_n_0),
        .I3(p2s_busy),
        .I4(ss_o),
        .I5(spi_tx_rx_busy),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[7]_i_3 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(data1[7]),
        .I4(\shift_count_reg_n_0_[0] ),
        .I5(\send_data_reg_n_0_[7] ),
        .O(\shift_o[7]_i_3_n_0 ));
  FDRE \shift_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \shift_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \shift_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \shift_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \shift_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \shift_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \shift_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \shift_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\shift_o[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    ss_o_i_1
       (.I0(spi_tx_rx_busy),
        .I1(ss_o),
        .I2(p2s_busy),
        .I3(tx_done_reg_n_0),
        .O(ss_o_i_1_n_0));
  FDRE ss_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ss_o_i_1_n_0),
        .Q(ss_o),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAB0000)) 
    tx_done_i_1
       (.I0(tx_done_reg_n_0),
        .I1(\shift_count_reg_n_0_[1] ),
        .I2(\shift_count_reg_n_0_[0] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .I4(shift_o1),
        .O(tx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_serial2parallel
   (D,
    axi_arready0,
    packet_byte_cnt__12,
    s00_axi_aclk,
    spi_tx_rx_done,
    axi_arready_reg,
    s00_axi_arvalid,
    s00_axi_wstrb,
    Q);
  output [31:0]D;
  output axi_arready0;
  output [2:0]packet_byte_cnt__12;
  input s00_axi_aclk;
  input spi_tx_rx_done;
  input axi_arready_reg;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input [7:0]Q;

  wire [31:0]D;
  wire [7:0]Q;
  wire axi_arready0;
  wire axi_arready_reg;
  wire init_rx_ff;
  wire init_rx_ff2;
  wire [2:0]packet_byte_cnt__12;
  wire rx_done_i_1_n_0;
  wire rx_en;
  wire rx_en_i_1_n_0;
  wire s00_axi_aclk;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_wstrb;
  wire s2p_done;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_count[2]_i_2_n_0 ;
  wire \shift_count_reg_n_0_[0] ;
  wire \shift_count_reg_n_0_[1] ;
  wire \shift_count_reg_n_0_[2] ;
  wire \shift_data[23]_i_1_n_0 ;
  wire spi_tx_rx_done;

  LUT3 #(
    .INIT(8'h40)) 
    axi_arready_i_1
       (.I0(axi_arready_reg),
        .I1(s2p_done),
        .I2(s00_axi_arvalid),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    init_rx_ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(init_rx_ff),
        .Q(init_rx_ff2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    init_rx_ff_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_tx_rx_done),
        .Q(init_rx_ff),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAB0000)) 
    rx_done_i_1
       (.I0(s2p_done),
        .I1(\shift_count_reg_n_0_[1] ),
        .I2(\shift_count_reg_n_0_[0] ),
        .I3(\shift_count_reg_n_0_[2] ),
        .I4(rx_en),
        .O(rx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_done_i_1_n_0),
        .Q(s2p_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_en_i_1
       (.I0(init_rx_ff),
        .I1(init_rx_ff2),
        .O(rx_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rx_en_i_1_n_0),
        .Q(rx_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h33CC33C0BB88BB88)) 
    \shift_count[0]_i_1 
       (.I0(packet_byte_cnt__12[0]),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(rx_en),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEB)) 
    \shift_count[0]_i_2 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wstrb[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wstrb[2]),
        .O(packet_byte_cnt__12[0]));
  LUT6 #(
    .INIT(64'hF03CF030B8B8B8B8)) 
    \shift_count[1]_i_1 
       (.I0(packet_byte_cnt__12[1]),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(rx_en),
        .O(\shift_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEB)) 
    \shift_count[1]_i_2 
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_wstrb[2]),
        .O(packet_byte_cnt__12[1]));
  LUT6 #(
    .INIT(64'hFFF30000BBBB8888)) 
    \shift_count[2]_i_1 
       (.I0(packet_byte_cnt__12[2]),
        .I1(\shift_count[2]_i_2_n_0 ),
        .I2(\shift_count_reg_n_0_[1] ),
        .I3(\shift_count_reg_n_0_[0] ),
        .I4(\shift_count_reg_n_0_[2] ),
        .I5(rx_en),
        .O(\shift_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \shift_count[2]_i_2 
       (.I0(rx_en),
        .I1(init_rx_ff2),
        .I2(s2p_done),
        .I3(init_rx_ff),
        .O(\shift_count[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEEB)) 
    \shift_count[2]_i_2__0 
       (.I0(s00_axi_wstrb[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wstrb[1]),
        .O(packet_byte_cnt__12[2]));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(\shift_count_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_data[23]_i_1 
       (.I0(rx_en),
        .I1(s2p_done),
        .O(\shift_data[23]_i_1_n_0 ));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(D[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(D[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(D[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(D[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(D[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(D[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(D[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(D[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(D[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(D[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(D[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(D[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(D[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(D[23]),
        .R(1'b0));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[24]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[24]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[16]),
        .Q(D[24]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[25]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[25]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[17]),
        .Q(D[25]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[26]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[26]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[18]),
        .Q(D[26]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[27]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[27]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[19]),
        .Q(D[27]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[28]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[28]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[20]),
        .Q(D[28]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[29]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[29]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[21]),
        .Q(D[29]));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[2]),
        .R(1'b0));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[30]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[30]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[22]),
        .Q(D[30]));
  (* srl_bus_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg " *) 
  (* srl_name = "\U0/axi_spi_master_v1_0_S00_AXI_inst/byte2word/shift_data_reg[31]_srl1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \shift_data_reg[31]_srl1 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\shift_data[23]_i_1_n_0 ),
        .CLK(s00_axi_aclk),
        .D(D[23]),
        .Q(D[31]));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[4]),
        .Q(D[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[5]),
        .Q(D[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[6]),
        .Q(D[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(Q[7]),
        .Q(D[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(D[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\shift_data[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(D[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_behave_v2
   (m_spi_mosi,
    spi_tx_rx_done,
    m_spi_ss,
    m_spi_sclk,
    spi_tx_rx_busy,
    Q,
    s00_axi_aclk,
    ss_o,
    m_spi_miso,
    E,
    \shift_o_reg[7] );
  output m_spi_mosi;
  output spi_tx_rx_done;
  output m_spi_ss;
  output m_spi_sclk;
  output spi_tx_rx_busy;
  output [7:0]Q;
  input s00_axi_aclk;
  input ss_o;
  input m_spi_miso;
  input [0:0]E;
  input [7:0]\shift_o_reg[7] ;

  wire [0:0]E;
  wire [7:0]Q;
  wire buffer_ready;
  wire buffer_ready_i_1_n_0;
  wire load_buffer;
  wire load_buffer_i_1_n_0;
  wire [7:0]load_buffer_val;
  wire m_spi_miso;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire mosi_i_1_n_0;
  wire o_sclk_i_1_n_0;
  wire o_sclk_i_2_n_0;
  wire s00_axi_aclk;
  wire sclk;
  wire sclk_i_1_n_0;
  wire [7:0]\shift_o_reg[7] ;
  wire [3:0]spi_bit_counter;
  wire \spi_bit_counter[0]_i_1_n_0 ;
  wire \spi_bit_counter[1]_i_1_n_0 ;
  wire \spi_bit_counter[2]_i_1_n_0 ;
  wire \spi_bit_counter[3]_i_1_n_0 ;
  wire \spi_bit_counter[3]_i_2_n_0 ;
  wire spi_busy_i_1_n_0;
  wire [2:0]spi_clock_counter;
  wire \spi_clock_counter[0]_i_1_n_0 ;
  wire \spi_clock_counter[1]_i_1_n_0 ;
  wire \spi_clock_counter[2]_i_1_n_0 ;
  wire spi_done_i_1_n_0;
  wire spi_en_i_1_n_0;
  wire spi_en_reg_n_0;
  wire spi_tx_rx_busy;
  wire spi_tx_rx_done;
  wire ss_i_1_n_0;
  wire ss_o;
  wire \tx_rx_buffer[0]_i_1_n_0 ;
  wire \tx_rx_buffer[1]_i_1_n_0 ;
  wire \tx_rx_buffer[2]_i_1_n_0 ;
  wire \tx_rx_buffer[3]_i_1_n_0 ;
  wire \tx_rx_buffer[4]_i_1_n_0 ;
  wire \tx_rx_buffer[5]_i_1_n_0 ;
  wire \tx_rx_buffer[6]_i_1_n_0 ;
  wire \tx_rx_buffer[7]_i_1_n_0 ;
  wire \tx_rx_buffer[7]_i_2_n_0 ;

  LUT2 #(
    .INIT(4'h4)) 
    buffer_ready_i_1
       (.I0(buffer_ready),
        .I1(load_buffer),
        .O(buffer_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    buffer_ready_reg
       (.C(sclk),
        .CE(1'b1),
        .D(buffer_ready_i_1_n_0),
        .Q(buffer_ready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    load_buffer_i_1
       (.I0(buffer_ready),
        .I1(load_buffer),
        .I2(ss_o),
        .O(load_buffer_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    load_buffer_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(load_buffer_i_1_n_0),
        .Q(load_buffer),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [0]),
        .Q(load_buffer_val[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [1]),
        .Q(load_buffer_val[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [2]),
        .Q(load_buffer_val[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [3]),
        .Q(load_buffer_val[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [4]),
        .Q(load_buffer_val[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [5]),
        .Q(load_buffer_val[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [6]),
        .Q(load_buffer_val[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \load_buffer_val_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\shift_o_reg[7] [7]),
        .Q(load_buffer_val[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    mosi_i_1
       (.I0(Q[7]),
        .I1(spi_en_reg_n_0),
        .I2(m_spi_ss),
        .I3(load_buffer),
        .O(mosi_i_1_n_0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    mosi_reg
       (.C(sclk),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(m_spi_mosi),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAACFAAAAAAAAAA)) 
    o_sclk_i_1
       (.I0(m_spi_sclk),
        .I1(sclk),
        .I2(o_sclk_i_2_n_0),
        .I3(spi_clock_counter[0]),
        .I4(spi_clock_counter[1]),
        .I5(spi_clock_counter[2]),
        .O(o_sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    o_sclk_i_2
       (.I0(spi_en_reg_n_0),
        .I1(m_spi_ss),
        .O(o_sclk_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    o_sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_sclk_i_1_n_0),
        .Q(m_spi_sclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    sclk_i_1
       (.I0(spi_clock_counter[2]),
        .I1(spi_clock_counter[0]),
        .I2(spi_clock_counter[1]),
        .I3(sclk),
        .O(sclk_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spi_bit_counter[0]_i_1 
       (.I0(spi_bit_counter[0]),
        .O(\spi_bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spi_bit_counter[1]_i_1 
       (.I0(spi_bit_counter[0]),
        .I1(spi_bit_counter[1]),
        .O(\spi_bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spi_bit_counter[2]_i_1 
       (.I0(spi_bit_counter[0]),
        .I1(spi_bit_counter[1]),
        .I2(spi_bit_counter[2]),
        .O(\spi_bit_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \spi_bit_counter[3]_i_1 
       (.I0(spi_en_reg_n_0),
        .I1(spi_bit_counter[2]),
        .I2(spi_bit_counter[0]),
        .I3(spi_bit_counter[1]),
        .I4(spi_bit_counter[3]),
        .O(\spi_bit_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spi_bit_counter[3]_i_2 
       (.I0(spi_bit_counter[1]),
        .I1(spi_bit_counter[0]),
        .I2(spi_bit_counter[2]),
        .I3(spi_bit_counter[3]),
        .O(\spi_bit_counter[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_bit_counter_reg[0] 
       (.C(sclk),
        .CE(spi_en_reg_n_0),
        .D(\spi_bit_counter[0]_i_1_n_0 ),
        .Q(spi_bit_counter[0]),
        .R(\spi_bit_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_bit_counter_reg[1] 
       (.C(sclk),
        .CE(spi_en_reg_n_0),
        .D(\spi_bit_counter[1]_i_1_n_0 ),
        .Q(spi_bit_counter[1]),
        .R(\spi_bit_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_bit_counter_reg[2] 
       (.C(sclk),
        .CE(spi_en_reg_n_0),
        .D(\spi_bit_counter[2]_i_1_n_0 ),
        .Q(spi_bit_counter[2]),
        .R(\spi_bit_counter[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_bit_counter_reg[3] 
       (.C(sclk),
        .CE(spi_en_reg_n_0),
        .D(\spi_bit_counter[3]_i_2_n_0 ),
        .Q(spi_bit_counter[3]),
        .R(\spi_bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    spi_busy_i_1
       (.I0(spi_en_reg_n_0),
        .I1(load_buffer),
        .I2(spi_tx_rx_done),
        .I3(spi_tx_rx_busy),
        .I4(ss_o),
        .O(spi_busy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_busy_i_1_n_0),
        .Q(spi_tx_rx_busy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spi_clock_counter[0]_i_1 
       (.I0(spi_clock_counter[0]),
        .O(\spi_clock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h52)) 
    \spi_clock_counter[1]_i_1 
       (.I0(spi_clock_counter[0]),
        .I1(spi_clock_counter[2]),
        .I2(spi_clock_counter[1]),
        .O(\spi_clock_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h64)) 
    \spi_clock_counter[2]_i_1 
       (.I0(spi_clock_counter[0]),
        .I1(spi_clock_counter[2]),
        .I2(spi_clock_counter[1]),
        .O(\spi_clock_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clock_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_clock_counter[0]_i_1_n_0 ),
        .Q(spi_clock_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clock_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_clock_counter[1]_i_1_n_0 ),
        .Q(spi_clock_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clock_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_clock_counter[2]_i_1_n_0 ),
        .Q(spi_clock_counter[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    spi_done_i_1
       (.I0(spi_tx_rx_done),
        .I1(spi_bit_counter[0]),
        .I2(spi_bit_counter[2]),
        .I3(spi_bit_counter[3]),
        .I4(spi_bit_counter[1]),
        .I5(spi_en_reg_n_0),
        .O(spi_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_done_reg
       (.C(sclk),
        .CE(1'b1),
        .D(spi_done_i_1_n_0),
        .Q(spi_tx_rx_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0EAA)) 
    spi_en_i_1
       (.I0(spi_en_reg_n_0),
        .I1(buffer_ready),
        .I2(spi_tx_rx_done),
        .I3(ss_o),
        .O(spi_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_en_i_1_n_0),
        .Q(spi_en_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    ss_i_1
       (.I0(spi_en_reg_n_0),
        .O(ss_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ss_reg
       (.C(sclk),
        .CE(1'b1),
        .D(ss_i_1_n_0),
        .Q(m_spi_ss),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[0]_i_1 
       (.I0(load_buffer_val[0]),
        .I1(load_buffer),
        .I2(m_spi_miso),
        .O(\tx_rx_buffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[1]_i_1 
       (.I0(load_buffer_val[1]),
        .I1(load_buffer),
        .I2(Q[0]),
        .O(\tx_rx_buffer[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[2]_i_1 
       (.I0(load_buffer_val[2]),
        .I1(load_buffer),
        .I2(Q[1]),
        .O(\tx_rx_buffer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[3]_i_1 
       (.I0(load_buffer_val[3]),
        .I1(load_buffer),
        .I2(Q[2]),
        .O(\tx_rx_buffer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[4]_i_1 
       (.I0(load_buffer_val[4]),
        .I1(load_buffer),
        .I2(Q[3]),
        .O(\tx_rx_buffer[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[5]_i_1 
       (.I0(load_buffer_val[5]),
        .I1(load_buffer),
        .I2(Q[4]),
        .O(\tx_rx_buffer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[6]_i_1 
       (.I0(load_buffer_val[6]),
        .I1(load_buffer),
        .I2(Q[5]),
        .O(\tx_rx_buffer[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \tx_rx_buffer[7]_i_1 
       (.I0(load_buffer),
        .I1(m_spi_ss),
        .I2(spi_en_reg_n_0),
        .O(\tx_rx_buffer[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tx_rx_buffer[7]_i_2 
       (.I0(load_buffer_val[7]),
        .I1(load_buffer),
        .I2(Q[6]),
        .O(\tx_rx_buffer[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[0] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[1] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[2] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[3] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[4] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[5] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[6] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \tx_rx_buffer_reg[7] 
       (.C(sclk),
        .CE(\tx_rx_buffer[7]_i_1_n_0 ),
        .D(\tx_rx_buffer[7]_i_2_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
