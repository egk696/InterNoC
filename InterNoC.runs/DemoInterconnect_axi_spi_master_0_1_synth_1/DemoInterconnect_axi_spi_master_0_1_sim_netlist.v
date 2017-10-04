// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Oct 04 18:44:07 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoInterconnect_axi_spi_master_0_1_sim_netlist.v
// Design      : DemoInterconnect_axi_spi_master_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_axi_spi_master_0_1,axi_spi_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_spi_master_v1_0,Vivado 2016.4" *) 
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 m_spi_mosi DATA" *) output m_spi_mosi;
  (* x_interface_info = "xilinx.com:signal:data:1.0 m_spi_miso DATA" *) input m_spi_miso;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 m_spi_ss CE" *) output m_spi_ss;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_spi_sclk CLK" *) output m_spi_sclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) input s00_axi_aresetn;

  wire \<const0> ;
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
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14] = \<const0> ;
  assign s00_axi_rdata[13] = \<const0> ;
  assign s00_axi_rdata[12] = \<const0> ;
  assign s00_axi_rdata[11] = \<const0> ;
  assign s00_axi_rdata[10] = \<const0> ;
  assign s00_axi_rdata[9] = \<const0> ;
  assign s00_axi_rdata[8] = \<const0> ;
  assign s00_axi_rdata[7] = \<const0> ;
  assign s00_axi_rdata[6] = \<const0> ;
  assign s00_axi_rdata[5] = \<const0> ;
  assign s00_axi_rdata[4] = \<const0> ;
  assign s00_axi_rdata[3] = \<const0> ;
  assign s00_axi_rdata[2] = \<const0> ;
  assign s00_axi_rdata[1] = \<const0> ;
  assign s00_axi_rdata[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axi_rvalid = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0 U0
       (.S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_arready,
    m_spi_ss,
    m_spi_mosi,
    m_spi_sclk,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_bready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output s00_axi_arready;
  output m_spi_ss;
  output m_spi_mosi;
  output m_spi_sclk;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0_S00_AXI axi_spi_master_v1_0_S00_AXI_inst
       (.S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_spi_master_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    s00_axi_arready,
    m_spi_ss,
    m_spi_mosi,
    m_spi_sclk,
    s00_axi_bvalid,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_bready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output s00_axi_arready;
  output m_spi_ss;
  output m_spi_mosi;
  output m_spi_sclk;
  output s00_axi_bvalid;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_bready;

  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire Tx_Rx_Busy;
  wire axi_arready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire spi_master_inst_n_0;
  wire spi_tx_rx_start;
  wire word2byte_n_1;
  wire word2byte_n_2;
  wire word2byte_n_3;
  wire word2byte_n_4;
  wire word2byte_n_5;
  wire word2byte_n_6;
  wire word2byte_n_7;
  wire word2byte_n_8;

  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(spi_master_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
        .R(spi_master_inst_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(spi_master_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
        .R(spi_master_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master spi_master_inst
       (.SR(spi_master_inst_n_0),
        .Tx_Rx_Busy(Tx_Rx_Busy),
        .m_spi_mosi(m_spi_mosi),
        .m_spi_sclk(m_spi_sclk),
        .m_spi_ss(m_spi_ss),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\shift_o_reg[0] (word2byte_n_8),
        .\shift_o_reg[1] (word2byte_n_7),
        .\shift_o_reg[2] (word2byte_n_6),
        .\shift_o_reg[3] (word2byte_n_5),
        .\shift_o_reg[4] (word2byte_n_4),
        .\shift_o_reg[5] (word2byte_n_3),
        .\shift_o_reg[6] (word2byte_n_2),
        .\shift_o_reg[7] (word2byte_n_1),
        .spi_tx_rx_start(spi_tx_rx_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_parallel2serial word2byte
       (.\Tx_Data_reg[0] (word2byte_n_8),
        .\Tx_Data_reg[1] (word2byte_n_7),
        .\Tx_Data_reg[2] (word2byte_n_6),
        .\Tx_Data_reg[3] (word2byte_n_5),
        .\Tx_Data_reg[4] (word2byte_n_4),
        .\Tx_Data_reg[5] (word2byte_n_3),
        .\Tx_Data_reg[6] (word2byte_n_2),
        .\Tx_Data_reg[7] (word2byte_n_1),
        .Tx_Rx_Busy(Tx_Rx_Busy),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_wready_reg(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .spi_tx_rx_start(spi_tx_rx_start));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_parallel2serial
   (spi_tx_rx_start,
    \Tx_Data_reg[7] ,
    \Tx_Data_reg[6] ,
    \Tx_Data_reg[5] ,
    \Tx_Data_reg[4] ,
    \Tx_Data_reg[3] ,
    \Tx_Data_reg[2] ,
    \Tx_Data_reg[1] ,
    \Tx_Data_reg[0] ,
    s00_axi_aclk,
    axi_awready_reg,
    axi_wready_reg,
    s00_axi_awvalid,
    s00_axi_wvalid,
    Tx_Rx_Busy,
    s00_axi_wdata);
  output spi_tx_rx_start;
  output \Tx_Data_reg[7] ;
  output \Tx_Data_reg[6] ;
  output \Tx_Data_reg[5] ;
  output \Tx_Data_reg[4] ;
  output \Tx_Data_reg[3] ;
  output \Tx_Data_reg[2] ;
  output \Tx_Data_reg[1] ;
  output \Tx_Data_reg[0] ;
  input s00_axi_aclk;
  input axi_awready_reg;
  input axi_wready_reg;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input Tx_Rx_Busy;
  input [31:0]s00_axi_wdata;

  wire \Tx_Data_reg[0] ;
  wire \Tx_Data_reg[1] ;
  wire \Tx_Data_reg[2] ;
  wire \Tx_Data_reg[3] ;
  wire \Tx_Data_reg[4] ;
  wire \Tx_Data_reg[5] ;
  wire \Tx_Data_reg[6] ;
  wire \Tx_Data_reg[7] ;
  wire Tx_Rx_Busy;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
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
  wire sending_reg_n_0;
  wire [2:0]shift_count;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_o[0]_i_1_n_0 ;
  wire \shift_o[0]_i_2_n_0 ;
  wire \shift_o[1]_i_1_n_0 ;
  wire \shift_o[1]_i_2_n_0 ;
  wire \shift_o[2]_i_1_n_0 ;
  wire \shift_o[2]_i_2_n_0 ;
  wire \shift_o[3]_i_1_n_0 ;
  wire \shift_o[3]_i_2_n_0 ;
  wire \shift_o[4]_i_1_n_0 ;
  wire \shift_o[4]_i_2_n_0 ;
  wire \shift_o[5]_i_1_n_0 ;
  wire \shift_o[5]_i_2_n_0 ;
  wire \shift_o[6]_i_1_n_0 ;
  wire \shift_o[6]_i_2_n_0 ;
  wire \shift_o[7]_i_1_n_0 ;
  wire \shift_o[7]_i_2_n_0 ;
  wire \shift_o[7]_i_3_n_0 ;
  wire spi_tx_rx_start;
  wire ss_o;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;

  LUT5 #(
    .INIT(32'h40000000)) 
    \send_data[31]_i_1 
       (.I0(sending_reg_n_0),
        .I1(axi_awready_reg),
        .I2(axi_wready_reg),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
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
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    sending_i_1
       (.I0(tx_done_reg_n_0),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(axi_wready_reg),
        .I4(axi_awready_reg),
        .I5(sending_reg_n_0),
        .O(sending_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sending_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sending_i_1_n_0),
        .Q(sending_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFB04)) 
    \shift_count[0]_i_1 
       (.I0(tx_done_reg_n_0),
        .I1(sending_reg_n_0),
        .I2(Tx_Rx_Busy),
        .I3(shift_count[0]),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFEF0010)) 
    \shift_count[1]_i_1 
       (.I0(shift_count[0]),
        .I1(tx_done_reg_n_0),
        .I2(sending_reg_n_0),
        .I3(Tx_Rx_Busy),
        .I4(shift_count[1]),
        .O(\shift_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000000)) 
    \shift_count[2]_i_1 
       (.I0(shift_count[0]),
        .I1(shift_count[1]),
        .I2(tx_done_reg_n_0),
        .I3(sending_reg_n_0),
        .I4(Tx_Rx_Busy),
        .I5(shift_count[2]),
        .O(\shift_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(shift_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(shift_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(shift_count[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[0]_i_1 
       (.I0(\shift_o[0]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[0]_i_2 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(shift_count[1]),
        .I3(data1[0]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[0] ),
        .O(\shift_o[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[1]_i_1 
       (.I0(\shift_o[1]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[1]_i_2 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(shift_count[1]),
        .I3(data1[1]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[1] ),
        .O(\shift_o[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[2]_i_1 
       (.I0(\shift_o[2]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[2]_i_2 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(shift_count[1]),
        .I3(data1[2]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[2] ),
        .O(\shift_o[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[3]_i_1 
       (.I0(\shift_o[3]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[3]_i_2 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(shift_count[1]),
        .I3(data1[3]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[3] ),
        .O(\shift_o[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[4]_i_1 
       (.I0(\shift_o[4]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[4]_i_2 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(shift_count[1]),
        .I3(data1[4]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[4] ),
        .O(\shift_o[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[5]_i_1 
       (.I0(\shift_o[5]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[5]_i_2 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(shift_count[1]),
        .I3(data1[5]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[5] ),
        .O(\shift_o[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[6]_i_1 
       (.I0(\shift_o[6]_i_2_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[6]_i_2 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(shift_count[1]),
        .I3(data1[6]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[6] ),
        .O(\shift_o[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \shift_o[7]_i_1 
       (.I0(Tx_Rx_Busy),
        .I1(sending_reg_n_0),
        .I2(tx_done_reg_n_0),
        .O(\shift_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \shift_o[7]_i_2 
       (.I0(\shift_o[7]_i_3_n_0 ),
        .I1(shift_count[2]),
        .O(\shift_o[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_o[7]_i_3 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(shift_count[1]),
        .I3(data1[7]),
        .I4(shift_count[0]),
        .I5(\send_data_reg_n_0_[7] ),
        .O(\shift_o[7]_i_3_n_0 ));
  FDRE \shift_o_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[0]_i_1_n_0 ),
        .Q(\Tx_Data_reg[0] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[1]_i_1_n_0 ),
        .Q(\Tx_Data_reg[1] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[2]_i_1_n_0 ),
        .Q(\Tx_Data_reg[2] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[3]_i_1_n_0 ),
        .Q(\Tx_Data_reg[3] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[4]_i_1_n_0 ),
        .Q(\Tx_Data_reg[4] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[5]_i_1_n_0 ),
        .Q(\Tx_Data_reg[5] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[6]_i_1_n_0 ),
        .Q(\Tx_Data_reg[6] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[7]_i_2_n_0 ),
        .Q(\Tx_Data_reg[7] ),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE ss_o_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[7]_i_1_n_0 ),
        .Q(ss_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    tx_done_i_1
       (.I0(shift_count[1]),
        .I1(shift_count[0]),
        .I2(shift_count[2]),
        .I3(tx_done_reg_n_0),
        .I4(sending_reg_n_0),
        .I5(Tx_Rx_Busy),
        .O(tx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_rx_pulse_ff_i_1
       (.I0(ss_o),
        .O(spi_tx_rx_start));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master
   (SR,
    m_spi_ss,
    Tx_Rx_Busy,
    m_spi_mosi,
    m_spi_sclk,
    s00_axi_aclk,
    spi_tx_rx_start,
    \shift_o_reg[0] ,
    s00_axi_aresetn,
    \shift_o_reg[1] ,
    \shift_o_reg[2] ,
    \shift_o_reg[3] ,
    \shift_o_reg[4] ,
    \shift_o_reg[5] ,
    \shift_o_reg[6] ,
    \shift_o_reg[7] );
  output [0:0]SR;
  output m_spi_ss;
  output Tx_Rx_Busy;
  output m_spi_mosi;
  output m_spi_sclk;
  input s00_axi_aclk;
  input spi_tx_rx_start;
  input \shift_o_reg[0] ;
  input s00_axi_aresetn;
  input \shift_o_reg[1] ;
  input \shift_o_reg[2] ;
  input \shift_o_reg[3] ;
  input \shift_o_reg[4] ;
  input \shift_o_reg[5] ;
  input \shift_o_reg[6] ;
  input \shift_o_reg[7] ;

  wire [31:1]Bit_Index0;
  wire \Bit_Index[0]_i_1_n_0 ;
  wire \Bit_Index[10]_i_1_n_0 ;
  wire \Bit_Index[11]_i_1_n_0 ;
  wire \Bit_Index[12]_i_1_n_0 ;
  wire \Bit_Index[12]_i_3_n_0 ;
  wire \Bit_Index[12]_i_4_n_0 ;
  wire \Bit_Index[12]_i_5_n_0 ;
  wire \Bit_Index[12]_i_6_n_0 ;
  wire \Bit_Index[13]_i_1_n_0 ;
  wire \Bit_Index[14]_i_1_n_0 ;
  wire \Bit_Index[15]_i_1_n_0 ;
  wire \Bit_Index[16]_i_1_n_0 ;
  wire \Bit_Index[16]_i_3_n_0 ;
  wire \Bit_Index[16]_i_4_n_0 ;
  wire \Bit_Index[16]_i_5_n_0 ;
  wire \Bit_Index[16]_i_6_n_0 ;
  wire \Bit_Index[17]_i_1_n_0 ;
  wire \Bit_Index[18]_i_1_n_0 ;
  wire \Bit_Index[19]_i_1_n_0 ;
  wire \Bit_Index[1]_i_1_n_0 ;
  wire \Bit_Index[20]_i_1_n_0 ;
  wire \Bit_Index[20]_i_3_n_0 ;
  wire \Bit_Index[20]_i_4_n_0 ;
  wire \Bit_Index[20]_i_5_n_0 ;
  wire \Bit_Index[20]_i_6_n_0 ;
  wire \Bit_Index[21]_i_1_n_0 ;
  wire \Bit_Index[22]_i_1_n_0 ;
  wire \Bit_Index[23]_i_1_n_0 ;
  wire \Bit_Index[24]_i_1_n_0 ;
  wire \Bit_Index[24]_i_3_n_0 ;
  wire \Bit_Index[24]_i_4_n_0 ;
  wire \Bit_Index[24]_i_5_n_0 ;
  wire \Bit_Index[24]_i_6_n_0 ;
  wire \Bit_Index[25]_i_1_n_0 ;
  wire \Bit_Index[26]_i_1_n_0 ;
  wire \Bit_Index[27]_i_1_n_0 ;
  wire \Bit_Index[28]_i_1_n_0 ;
  wire \Bit_Index[28]_i_3_n_0 ;
  wire \Bit_Index[28]_i_4_n_0 ;
  wire \Bit_Index[28]_i_5_n_0 ;
  wire \Bit_Index[28]_i_6_n_0 ;
  wire \Bit_Index[29]_i_1_n_0 ;
  wire \Bit_Index[2]_i_1_n_0 ;
  wire \Bit_Index[30]_i_1_n_0 ;
  wire \Bit_Index[31]_i_1_n_0 ;
  wire \Bit_Index[31]_i_3_n_0 ;
  wire \Bit_Index[31]_i_4_n_0 ;
  wire \Bit_Index[31]_i_5_n_0 ;
  wire \Bit_Index[3]_i_1_n_0 ;
  wire \Bit_Index[4]_i_1_n_0 ;
  wire \Bit_Index[4]_i_3_n_0 ;
  wire \Bit_Index[4]_i_4_n_0 ;
  wire \Bit_Index[4]_i_5_n_0 ;
  wire \Bit_Index[4]_i_6_n_0 ;
  wire \Bit_Index[5]_i_1_n_0 ;
  wire \Bit_Index[6]_i_1_n_0 ;
  wire \Bit_Index[7]_i_1_n_0 ;
  wire \Bit_Index[8]_i_1_n_0 ;
  wire \Bit_Index[8]_i_3_n_0 ;
  wire \Bit_Index[8]_i_4_n_0 ;
  wire \Bit_Index[8]_i_5_n_0 ;
  wire \Bit_Index[8]_i_6_n_0 ;
  wire \Bit_Index[9]_i_1_n_0 ;
  wire [31:0]Bit_Index__0;
  wire Bit_Index_n_0;
  wire \Bit_Index_reg[12]_i_2_n_0 ;
  wire \Bit_Index_reg[12]_i_2_n_1 ;
  wire \Bit_Index_reg[12]_i_2_n_2 ;
  wire \Bit_Index_reg[12]_i_2_n_3 ;
  wire \Bit_Index_reg[16]_i_2_n_0 ;
  wire \Bit_Index_reg[16]_i_2_n_1 ;
  wire \Bit_Index_reg[16]_i_2_n_2 ;
  wire \Bit_Index_reg[16]_i_2_n_3 ;
  wire \Bit_Index_reg[20]_i_2_n_0 ;
  wire \Bit_Index_reg[20]_i_2_n_1 ;
  wire \Bit_Index_reg[20]_i_2_n_2 ;
  wire \Bit_Index_reg[20]_i_2_n_3 ;
  wire \Bit_Index_reg[24]_i_2_n_0 ;
  wire \Bit_Index_reg[24]_i_2_n_1 ;
  wire \Bit_Index_reg[24]_i_2_n_2 ;
  wire \Bit_Index_reg[24]_i_2_n_3 ;
  wire \Bit_Index_reg[28]_i_2_n_0 ;
  wire \Bit_Index_reg[28]_i_2_n_1 ;
  wire \Bit_Index_reg[28]_i_2_n_2 ;
  wire \Bit_Index_reg[28]_i_2_n_3 ;
  wire \Bit_Index_reg[31]_i_2_n_2 ;
  wire \Bit_Index_reg[31]_i_2_n_3 ;
  wire \Bit_Index_reg[4]_i_2_n_0 ;
  wire \Bit_Index_reg[4]_i_2_n_1 ;
  wire \Bit_Index_reg[4]_i_2_n_2 ;
  wire \Bit_Index_reg[4]_i_2_n_3 ;
  wire \Bit_Index_reg[8]_i_2_n_0 ;
  wire \Bit_Index_reg[8]_i_2_n_1 ;
  wire \Bit_Index_reg[8]_i_2_n_2 ;
  wire \Bit_Index_reg[8]_i_2_n_3 ;
  wire [0:0]SR;
  wire \Tx_Data[0]_i_1_n_0 ;
  wire \Tx_Data_reg_n_0_[0] ;
  wire \Tx_Data_reg_n_0_[1] ;
  wire \Tx_Data_reg_n_0_[2] ;
  wire \Tx_Data_reg_n_0_[3] ;
  wire \Tx_Data_reg_n_0_[4] ;
  wire \Tx_Data_reg_n_0_[5] ;
  wire \Tx_Data_reg_n_0_[6] ;
  wire \Tx_Data_reg_n_0_[7] ;
  wire Tx_Rx_Busy;
  wire Tx_start;
  wire Tx_start_i_1_n_0;
  wire \__5/i__n_0 ;
  wire [7:0]clock_counter;
  wire \clock_counter[0]_i_1_n_0 ;
  wire \clock_counter[1]_i_1_n_0 ;
  wire \clock_counter[2]_i_1_n_0 ;
  wire \clock_counter[3]_i_1_n_0 ;
  wire \clock_counter[4]_i_1_n_0 ;
  wire \clock_counter[5]_i_1_n_0 ;
  wire \clock_counter[5]_i_2_n_0 ;
  wire \clock_counter[6]_i_1_n_0 ;
  wire \clock_counter[6]_i_2_n_0 ;
  wire \clock_counter[7]_i_1_n_0 ;
  wire \clock_counter[7]_i_2_n_0 ;
  wire \clock_counter[7]_i_3_n_0 ;
  wire m_spi_mosi;
  wire m_spi_sclk;
  wire m_spi_ss;
  wire o_mosi_i_1_n_0;
  wire o_mosi_i_2_n_0;
  wire o_sclk_i_1_n_0;
  wire o_ss_i_1_n_0;
  wire [7:1]p_1_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sclk_enable;
  wire sclk_enable_i_1_n_0;
  wire sclk_fall2_out;
  wire sclk_fall_i_2_n_0;
  wire sclk_fall_i_3_n_0;
  wire sclk_fall_reg_n_0;
  wire sclk_rise;
  wire sclk_rise_i_1_n_0;
  wire \shift_o_reg[0] ;
  wire \shift_o_reg[1] ;
  wire \shift_o_reg[2] ;
  wire \shift_o_reg[3] ;
  wire \shift_o_reg[4] ;
  wire \shift_o_reg[5] ;
  wire \shift_o_reg[6] ;
  wire \shift_o_reg[7] ;
  wire spi_tx_rx_start;
  wire [1:0]st_current;
  wire [1:0]st_next;
  wire \st_next_reg[0]_i_1_n_0 ;
  wire \st_next_reg[1]_i_1_n_0 ;
  wire tx_rx_pulse_ff;
  wire tx_rx_pulse_ff2;
  wire w_tc_counter_data1_carry__0_i_1_n_0;
  wire w_tc_counter_data1_carry__0_i_2_n_0;
  wire w_tc_counter_data1_carry__0_i_3_n_0;
  wire w_tc_counter_data1_carry__0_i_4_n_0;
  wire w_tc_counter_data1_carry__0_i_5_n_0;
  wire w_tc_counter_data1_carry__0_i_6_n_0;
  wire w_tc_counter_data1_carry__0_i_7_n_0;
  wire w_tc_counter_data1_carry__0_i_8_n_0;
  wire w_tc_counter_data1_carry__0_n_0;
  wire w_tc_counter_data1_carry__0_n_1;
  wire w_tc_counter_data1_carry__0_n_2;
  wire w_tc_counter_data1_carry__0_n_3;
  wire w_tc_counter_data1_carry__1_i_1_n_0;
  wire w_tc_counter_data1_carry__1_i_2_n_0;
  wire w_tc_counter_data1_carry__1_i_3_n_0;
  wire w_tc_counter_data1_carry__1_i_4_n_0;
  wire w_tc_counter_data1_carry__1_i_5_n_0;
  wire w_tc_counter_data1_carry__1_i_6_n_0;
  wire w_tc_counter_data1_carry__1_i_7_n_0;
  wire w_tc_counter_data1_carry__1_i_8_n_0;
  wire w_tc_counter_data1_carry__1_n_0;
  wire w_tc_counter_data1_carry__1_n_1;
  wire w_tc_counter_data1_carry__1_n_2;
  wire w_tc_counter_data1_carry__1_n_3;
  wire w_tc_counter_data1_carry__2_i_1_n_0;
  wire w_tc_counter_data1_carry__2_i_2_n_0;
  wire w_tc_counter_data1_carry__2_i_3_n_0;
  wire w_tc_counter_data1_carry__2_i_4_n_0;
  wire w_tc_counter_data1_carry__2_i_5_n_0;
  wire w_tc_counter_data1_carry__2_i_6_n_0;
  wire w_tc_counter_data1_carry__2_i_7_n_0;
  wire w_tc_counter_data1_carry__2_i_8_n_0;
  wire w_tc_counter_data1_carry__2_n_0;
  wire w_tc_counter_data1_carry__2_n_1;
  wire w_tc_counter_data1_carry__2_n_2;
  wire w_tc_counter_data1_carry__2_n_3;
  wire w_tc_counter_data1_carry_i_1_n_0;
  wire w_tc_counter_data1_carry_i_2_n_0;
  wire w_tc_counter_data1_carry_i_3_n_0;
  wire w_tc_counter_data1_carry_i_4_n_0;
  wire w_tc_counter_data1_carry_i_5_n_0;
  wire w_tc_counter_data1_carry_i_6_n_0;
  wire w_tc_counter_data1_carry_i_7_n_0;
  wire w_tc_counter_data1_carry_i_8_n_0;
  wire w_tc_counter_data1_carry_n_0;
  wire w_tc_counter_data1_carry_n_1;
  wire w_tc_counter_data1_carry_n_2;
  wire w_tc_counter_data1_carry_n_3;
  wire [3:2]\NLW_Bit_Index_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Bit_Index_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_w_tc_counter_data1_carry_O_UNCONNECTED;
  wire [3:0]NLW_w_tc_counter_data1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_w_tc_counter_data1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_w_tc_counter_data1_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFDDD)) 
    Bit_Index
       (.I0(st_current[1]),
        .I1(st_current[0]),
        .I2(sclk_rise),
        .I3(w_tc_counter_data1_carry__2_n_0),
        .O(Bit_Index_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFFFDDD)) 
    \Bit_Index[0]_i_1 
       (.I0(st_current[1]),
        .I1(st_current[0]),
        .I2(sclk_rise),
        .I3(w_tc_counter_data1_carry__2_n_0),
        .I4(Bit_Index__0[0]),
        .O(\Bit_Index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[10]_i_1 
       (.I0(Bit_Index0[10]),
        .I1(st_current[1]),
        .O(\Bit_Index[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[11]_i_1 
       (.I0(Bit_Index0[11]),
        .I1(st_current[1]),
        .O(\Bit_Index[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[12]_i_1 
       (.I0(Bit_Index0[12]),
        .I1(st_current[1]),
        .O(\Bit_Index[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[12]_i_3 
       (.I0(Bit_Index__0[12]),
        .O(\Bit_Index[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[12]_i_4 
       (.I0(Bit_Index__0[11]),
        .O(\Bit_Index[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[12]_i_5 
       (.I0(Bit_Index__0[10]),
        .O(\Bit_Index[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[12]_i_6 
       (.I0(Bit_Index__0[9]),
        .O(\Bit_Index[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[13]_i_1 
       (.I0(Bit_Index0[13]),
        .I1(st_current[1]),
        .O(\Bit_Index[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[14]_i_1 
       (.I0(Bit_Index0[14]),
        .I1(st_current[1]),
        .O(\Bit_Index[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[15]_i_1 
       (.I0(Bit_Index0[15]),
        .I1(st_current[1]),
        .O(\Bit_Index[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[16]_i_1 
       (.I0(Bit_Index0[16]),
        .I1(st_current[1]),
        .O(\Bit_Index[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[16]_i_3 
       (.I0(Bit_Index__0[16]),
        .O(\Bit_Index[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[16]_i_4 
       (.I0(Bit_Index__0[15]),
        .O(\Bit_Index[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[16]_i_5 
       (.I0(Bit_Index__0[14]),
        .O(\Bit_Index[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[16]_i_6 
       (.I0(Bit_Index__0[13]),
        .O(\Bit_Index[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[17]_i_1 
       (.I0(Bit_Index0[17]),
        .I1(st_current[1]),
        .O(\Bit_Index[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[18]_i_1 
       (.I0(Bit_Index0[18]),
        .I1(st_current[1]),
        .O(\Bit_Index[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[19]_i_1 
       (.I0(Bit_Index0[19]),
        .I1(st_current[1]),
        .O(\Bit_Index[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBF3F3F3)) 
    \Bit_Index[1]_i_1 
       (.I0(Bit_Index0[1]),
        .I1(st_current[1]),
        .I2(st_current[0]),
        .I3(sclk_rise),
        .I4(w_tc_counter_data1_carry__2_n_0),
        .I5(Bit_Index__0[1]),
        .O(\Bit_Index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[20]_i_1 
       (.I0(Bit_Index0[20]),
        .I1(st_current[1]),
        .O(\Bit_Index[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[20]_i_3 
       (.I0(Bit_Index__0[20]),
        .O(\Bit_Index[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[20]_i_4 
       (.I0(Bit_Index__0[19]),
        .O(\Bit_Index[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[20]_i_5 
       (.I0(Bit_Index__0[18]),
        .O(\Bit_Index[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[20]_i_6 
       (.I0(Bit_Index__0[17]),
        .O(\Bit_Index[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[21]_i_1 
       (.I0(Bit_Index0[21]),
        .I1(st_current[1]),
        .O(\Bit_Index[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[22]_i_1 
       (.I0(Bit_Index0[22]),
        .I1(st_current[1]),
        .O(\Bit_Index[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[23]_i_1 
       (.I0(Bit_Index0[23]),
        .I1(st_current[1]),
        .O(\Bit_Index[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[24]_i_1 
       (.I0(Bit_Index0[24]),
        .I1(st_current[1]),
        .O(\Bit_Index[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[24]_i_3 
       (.I0(Bit_Index__0[24]),
        .O(\Bit_Index[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[24]_i_4 
       (.I0(Bit_Index__0[23]),
        .O(\Bit_Index[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[24]_i_5 
       (.I0(Bit_Index__0[22]),
        .O(\Bit_Index[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[24]_i_6 
       (.I0(Bit_Index__0[21]),
        .O(\Bit_Index[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[25]_i_1 
       (.I0(Bit_Index0[25]),
        .I1(st_current[1]),
        .O(\Bit_Index[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[26]_i_1 
       (.I0(Bit_Index0[26]),
        .I1(st_current[1]),
        .O(\Bit_Index[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[27]_i_1 
       (.I0(Bit_Index0[27]),
        .I1(st_current[1]),
        .O(\Bit_Index[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[28]_i_1 
       (.I0(Bit_Index0[28]),
        .I1(st_current[1]),
        .O(\Bit_Index[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[28]_i_3 
       (.I0(Bit_Index__0[28]),
        .O(\Bit_Index[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[28]_i_4 
       (.I0(Bit_Index__0[27]),
        .O(\Bit_Index[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[28]_i_5 
       (.I0(Bit_Index__0[26]),
        .O(\Bit_Index[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[28]_i_6 
       (.I0(Bit_Index__0[25]),
        .O(\Bit_Index[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[29]_i_1 
       (.I0(Bit_Index0[29]),
        .I1(st_current[1]),
        .O(\Bit_Index[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBF3F3F3)) 
    \Bit_Index[2]_i_1 
       (.I0(Bit_Index0[2]),
        .I1(st_current[1]),
        .I2(st_current[0]),
        .I3(sclk_rise),
        .I4(w_tc_counter_data1_carry__2_n_0),
        .I5(Bit_Index__0[2]),
        .O(\Bit_Index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[30]_i_1 
       (.I0(Bit_Index0[30]),
        .I1(st_current[1]),
        .O(\Bit_Index[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[31]_i_1 
       (.I0(Bit_Index0[31]),
        .I1(st_current[1]),
        .O(\Bit_Index[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[31]_i_3 
       (.I0(Bit_Index__0[31]),
        .O(\Bit_Index[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[31]_i_4 
       (.I0(Bit_Index__0[30]),
        .O(\Bit_Index[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[31]_i_5 
       (.I0(Bit_Index__0[29]),
        .O(\Bit_Index[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[3]_i_1 
       (.I0(Bit_Index0[3]),
        .I1(st_current[1]),
        .O(\Bit_Index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[4]_i_1 
       (.I0(Bit_Index0[4]),
        .I1(st_current[1]),
        .O(\Bit_Index[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[4]_i_3 
       (.I0(Bit_Index__0[4]),
        .O(\Bit_Index[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[4]_i_4 
       (.I0(Bit_Index__0[3]),
        .O(\Bit_Index[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[4]_i_5 
       (.I0(Bit_Index__0[2]),
        .O(\Bit_Index[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[4]_i_6 
       (.I0(Bit_Index__0[1]),
        .O(\Bit_Index[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[5]_i_1 
       (.I0(Bit_Index0[5]),
        .I1(st_current[1]),
        .O(\Bit_Index[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[6]_i_1 
       (.I0(Bit_Index0[6]),
        .I1(st_current[1]),
        .O(\Bit_Index[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[7]_i_1 
       (.I0(Bit_Index0[7]),
        .I1(st_current[1]),
        .O(\Bit_Index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[8]_i_1 
       (.I0(Bit_Index0[8]),
        .I1(st_current[1]),
        .O(\Bit_Index[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[8]_i_3 
       (.I0(Bit_Index__0[8]),
        .O(\Bit_Index[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[8]_i_4 
       (.I0(Bit_Index__0[7]),
        .O(\Bit_Index[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[8]_i_5 
       (.I0(Bit_Index__0[6]),
        .O(\Bit_Index[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Bit_Index[8]_i_6 
       (.I0(Bit_Index__0[5]),
        .O(\Bit_Index[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Bit_Index[9]_i_1 
       (.I0(Bit_Index0[9]),
        .I1(st_current[1]),
        .O(\Bit_Index[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Bit_Index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\Bit_Index[0]_i_1_n_0 ),
        .Q(Bit_Index__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[10] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[10]_i_1_n_0 ),
        .Q(Bit_Index__0[10]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[11] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[11]_i_1_n_0 ),
        .Q(Bit_Index__0[11]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[12] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[12]_i_1_n_0 ),
        .Q(Bit_Index__0[12]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[12]_i_2 
       (.CI(\Bit_Index_reg[8]_i_2_n_0 ),
        .CO({\Bit_Index_reg[12]_i_2_n_0 ,\Bit_Index_reg[12]_i_2_n_1 ,\Bit_Index_reg[12]_i_2_n_2 ,\Bit_Index_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[12:9]),
        .O(Bit_Index0[12:9]),
        .S({\Bit_Index[12]_i_3_n_0 ,\Bit_Index[12]_i_4_n_0 ,\Bit_Index[12]_i_5_n_0 ,\Bit_Index[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[13] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[13]_i_1_n_0 ),
        .Q(Bit_Index__0[13]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[14] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[14]_i_1_n_0 ),
        .Q(Bit_Index__0[14]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[15] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[15]_i_1_n_0 ),
        .Q(Bit_Index__0[15]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[16] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[16]_i_1_n_0 ),
        .Q(Bit_Index__0[16]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[16]_i_2 
       (.CI(\Bit_Index_reg[12]_i_2_n_0 ),
        .CO({\Bit_Index_reg[16]_i_2_n_0 ,\Bit_Index_reg[16]_i_2_n_1 ,\Bit_Index_reg[16]_i_2_n_2 ,\Bit_Index_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[16:13]),
        .O(Bit_Index0[16:13]),
        .S({\Bit_Index[16]_i_3_n_0 ,\Bit_Index[16]_i_4_n_0 ,\Bit_Index[16]_i_5_n_0 ,\Bit_Index[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[17] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[17]_i_1_n_0 ),
        .Q(Bit_Index__0[17]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[18] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[18]_i_1_n_0 ),
        .Q(Bit_Index__0[18]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[19] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[19]_i_1_n_0 ),
        .Q(Bit_Index__0[19]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b1)) 
    \Bit_Index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\Bit_Index[1]_i_1_n_0 ),
        .Q(Bit_Index__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[20] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[20]_i_1_n_0 ),
        .Q(Bit_Index__0[20]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[20]_i_2 
       (.CI(\Bit_Index_reg[16]_i_2_n_0 ),
        .CO({\Bit_Index_reg[20]_i_2_n_0 ,\Bit_Index_reg[20]_i_2_n_1 ,\Bit_Index_reg[20]_i_2_n_2 ,\Bit_Index_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[20:17]),
        .O(Bit_Index0[20:17]),
        .S({\Bit_Index[20]_i_3_n_0 ,\Bit_Index[20]_i_4_n_0 ,\Bit_Index[20]_i_5_n_0 ,\Bit_Index[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[21] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[21]_i_1_n_0 ),
        .Q(Bit_Index__0[21]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[22] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[22]_i_1_n_0 ),
        .Q(Bit_Index__0[22]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[23] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[23]_i_1_n_0 ),
        .Q(Bit_Index__0[23]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[24] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[24]_i_1_n_0 ),
        .Q(Bit_Index__0[24]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[24]_i_2 
       (.CI(\Bit_Index_reg[20]_i_2_n_0 ),
        .CO({\Bit_Index_reg[24]_i_2_n_0 ,\Bit_Index_reg[24]_i_2_n_1 ,\Bit_Index_reg[24]_i_2_n_2 ,\Bit_Index_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[24:21]),
        .O(Bit_Index0[24:21]),
        .S({\Bit_Index[24]_i_3_n_0 ,\Bit_Index[24]_i_4_n_0 ,\Bit_Index[24]_i_5_n_0 ,\Bit_Index[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[25] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[25]_i_1_n_0 ),
        .Q(Bit_Index__0[25]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[26] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[26]_i_1_n_0 ),
        .Q(Bit_Index__0[26]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[27] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[27]_i_1_n_0 ),
        .Q(Bit_Index__0[27]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[28] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[28]_i_1_n_0 ),
        .Q(Bit_Index__0[28]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[28]_i_2 
       (.CI(\Bit_Index_reg[24]_i_2_n_0 ),
        .CO({\Bit_Index_reg[28]_i_2_n_0 ,\Bit_Index_reg[28]_i_2_n_1 ,\Bit_Index_reg[28]_i_2_n_2 ,\Bit_Index_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[28:25]),
        .O(Bit_Index0[28:25]),
        .S({\Bit_Index[28]_i_3_n_0 ,\Bit_Index[28]_i_4_n_0 ,\Bit_Index[28]_i_5_n_0 ,\Bit_Index[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[29] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[29]_i_1_n_0 ),
        .Q(Bit_Index__0[29]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b1)) 
    \Bit_Index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\Bit_Index[2]_i_1_n_0 ),
        .Q(Bit_Index__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[30] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[30]_i_1_n_0 ),
        .Q(Bit_Index__0[30]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[31] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[31]_i_1_n_0 ),
        .Q(Bit_Index__0[31]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[31]_i_2 
       (.CI(\Bit_Index_reg[28]_i_2_n_0 ),
        .CO({\NLW_Bit_Index_reg[31]_i_2_CO_UNCONNECTED [3:2],\Bit_Index_reg[31]_i_2_n_2 ,\Bit_Index_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Bit_Index__0[30:29]}),
        .O({\NLW_Bit_Index_reg[31]_i_2_O_UNCONNECTED [3],Bit_Index0[31:29]}),
        .S({1'b0,\Bit_Index[31]_i_3_n_0 ,\Bit_Index[31]_i_4_n_0 ,\Bit_Index[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[3]_i_1_n_0 ),
        .Q(Bit_Index__0[3]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[4] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[4]_i_1_n_0 ),
        .Q(Bit_Index__0[4]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Bit_Index_reg[4]_i_2_n_0 ,\Bit_Index_reg[4]_i_2_n_1 ,\Bit_Index_reg[4]_i_2_n_2 ,\Bit_Index_reg[4]_i_2_n_3 }),
        .CYINIT(Bit_Index__0[0]),
        .DI(Bit_Index__0[4:1]),
        .O(Bit_Index0[4:1]),
        .S({\Bit_Index[4]_i_3_n_0 ,\Bit_Index[4]_i_4_n_0 ,\Bit_Index[4]_i_5_n_0 ,\Bit_Index[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[5] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[5]_i_1_n_0 ),
        .Q(Bit_Index__0[5]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[6] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[6]_i_1_n_0 ),
        .Q(Bit_Index__0[6]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[7] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[7]_i_1_n_0 ),
        .Q(Bit_Index__0[7]),
        .R(st_current[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[8] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[8]_i_1_n_0 ),
        .Q(Bit_Index__0[8]),
        .R(st_current[0]));
  CARRY4 \Bit_Index_reg[8]_i_2 
       (.CI(\Bit_Index_reg[4]_i_2_n_0 ),
        .CO({\Bit_Index_reg[8]_i_2_n_0 ,\Bit_Index_reg[8]_i_2_n_1 ,\Bit_Index_reg[8]_i_2_n_2 ,\Bit_Index_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Bit_Index__0[8:5]),
        .O(Bit_Index0[8:5]),
        .S({\Bit_Index[8]_i_3_n_0 ,\Bit_Index[8]_i_4_n_0 ,\Bit_Index[8]_i_5_n_0 ,\Bit_Index[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Bit_Index_reg[9] 
       (.C(s00_axi_aclk),
        .CE(Bit_Index_n_0),
        .D(\Bit_Index[9]_i_1_n_0 ),
        .Q(Bit_Index__0[9]),
        .R(st_current[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Tx_Data[0]_i_1 
       (.I0(st_current[0]),
        .I1(\shift_o_reg[0] ),
        .O(\Tx_Data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[1]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[0] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[1] ),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[2]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[1] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[2] ),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[3]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[2] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[3] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[4]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[3] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[4] ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[5]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[4] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[5] ),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[6]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[5] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[6] ),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \Tx_Data[7]_i_1 
       (.I0(st_current[1]),
        .I1(\Tx_Data_reg_n_0_[6] ),
        .I2(st_current[0]),
        .I3(\shift_o_reg[7] ),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(\Tx_Data[0]_i_1_n_0 ),
        .Q(\Tx_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[1]),
        .Q(\Tx_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[2]),
        .Q(\Tx_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[3]),
        .Q(\Tx_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[4]),
        .Q(\Tx_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[5]),
        .Q(\Tx_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[6]),
        .Q(\Tx_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(p_1_in[7]),
        .Q(\Tx_Data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    Tx_Rx_Busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(st_current[1]),
        .Q(Tx_Rx_Busy),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    Tx_start_i_1
       (.I0(tx_rx_pulse_ff),
        .I1(tx_rx_pulse_ff2),
        .O(Tx_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Tx_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Tx_start_i_1_n_0),
        .Q(Tx_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEE33F3222233F3)) 
    \__5/i_ 
       (.I0(Tx_start),
        .I1(st_current[1]),
        .I2(sclk_rise),
        .I3(w_tc_counter_data1_carry__2_n_0),
        .I4(st_current[0]),
        .I5(sclk_fall_reg_n_0),
        .O(\__5/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_counter[0]_i_1 
       (.I0(sclk_enable),
        .I1(clock_counter[0]),
        .O(\clock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \clock_counter[1]_i_1 
       (.I0(clock_counter[1]),
        .I1(clock_counter[0]),
        .I2(sclk_enable),
        .O(\clock_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \clock_counter[2]_i_1 
       (.I0(sclk_enable),
        .I1(clock_counter[0]),
        .I2(clock_counter[1]),
        .I3(clock_counter[2]),
        .O(\clock_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \clock_counter[3]_i_1 
       (.I0(clock_counter[1]),
        .I1(clock_counter[0]),
        .I2(clock_counter[2]),
        .I3(clock_counter[3]),
        .I4(sclk_enable),
        .I5(\clock_counter[7]_i_3_n_0 ),
        .O(\clock_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \clock_counter[4]_i_1 
       (.I0(sclk_enable),
        .I1(clock_counter[2]),
        .I2(clock_counter[0]),
        .I3(clock_counter[1]),
        .I4(clock_counter[3]),
        .I5(clock_counter[4]),
        .O(\clock_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \clock_counter[5]_i_1 
       (.I0(sclk_enable),
        .I1(clock_counter[3]),
        .I2(\clock_counter[5]_i_2_n_0 ),
        .I3(clock_counter[4]),
        .I4(clock_counter[5]),
        .O(\clock_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \clock_counter[5]_i_2 
       (.I0(clock_counter[1]),
        .I1(clock_counter[0]),
        .I2(clock_counter[2]),
        .O(\clock_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \clock_counter[6]_i_1 
       (.I0(\clock_counter[7]_i_3_n_0 ),
        .I1(sclk_enable),
        .I2(clock_counter[6]),
        .I3(\clock_counter[6]_i_2_n_0 ),
        .O(\clock_counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \clock_counter[6]_i_2 
       (.I0(clock_counter[4]),
        .I1(clock_counter[2]),
        .I2(clock_counter[0]),
        .I3(clock_counter[1]),
        .I4(clock_counter[3]),
        .I5(clock_counter[5]),
        .O(\clock_counter[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0600)) 
    \clock_counter[7]_i_1 
       (.I0(clock_counter[7]),
        .I1(\clock_counter[7]_i_2_n_0 ),
        .I2(\clock_counter[7]_i_3_n_0 ),
        .I3(sclk_enable),
        .O(\clock_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \clock_counter[7]_i_2 
       (.I0(clock_counter[6]),
        .I1(clock_counter[5]),
        .I2(clock_counter[3]),
        .I3(\clock_counter[5]_i_2_n_0 ),
        .I4(clock_counter[4]),
        .O(\clock_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \clock_counter[7]_i_3 
       (.I0(\clock_counter[5]_i_2_n_0 ),
        .I1(clock_counter[5]),
        .I2(clock_counter[7]),
        .I3(clock_counter[3]),
        .I4(clock_counter[4]),
        .I5(clock_counter[6]),
        .O(\clock_counter[7]_i_3_n_0 ));
  FDCE \clock_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[0]_i_1_n_0 ),
        .Q(clock_counter[0]));
  FDCE \clock_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[1]_i_1_n_0 ),
        .Q(clock_counter[1]));
  FDCE \clock_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[2]_i_1_n_0 ),
        .Q(clock_counter[2]));
  FDCE \clock_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[3]_i_1_n_0 ),
        .Q(clock_counter[3]));
  FDCE \clock_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[4]_i_1_n_0 ),
        .Q(clock_counter[4]));
  FDCE \clock_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[5]_i_1_n_0 ),
        .Q(clock_counter[5]));
  FDCE \clock_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[6]_i_1_n_0 ),
        .Q(clock_counter[6]));
  FDCE \clock_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\clock_counter[7]_i_1_n_0 ),
        .Q(clock_counter[7]));
  LUT4 #(
    .INIT(16'h555D)) 
    o_mosi_i_1
       (.I0(st_current[1]),
        .I1(sclk_fall_reg_n_0),
        .I2(sclk_rise),
        .I3(st_current[0]),
        .O(o_mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    o_mosi_i_2
       (.I0(\Tx_Data_reg_n_0_[7] ),
        .I1(st_current[1]),
        .O(o_mosi_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    o_mosi_reg
       (.C(s00_axi_aclk),
        .CE(o_mosi_i_1_n_0),
        .D(o_mosi_i_2_n_0),
        .Q(m_spi_mosi),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFDF55DD)) 
    o_sclk_i_1
       (.I0(st_current[1]),
        .I1(sclk_rise),
        .I2(sclk_fall_reg_n_0),
        .I3(st_current[0]),
        .I4(m_spi_sclk),
        .O(o_sclk_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    o_sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_sclk_i_1_n_0),
        .Q(m_spi_sclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    o_ss_i_1
       (.I0(st_current[1]),
        .O(o_ss_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    o_ss_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_ss_i_1_n_0),
        .Q(m_spi_ss),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sclk_enable_i_1
       (.I0(sclk_enable),
        .I1(st_current[0]),
        .I2(st_current[1]),
        .O(sclk_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclk_enable_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_enable_i_1_n_0),
        .Q(sclk_enable),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    sclk_fall_i_1
       (.I0(sclk_fall_i_2_n_0),
        .I1(clock_counter[5]),
        .I2(sclk_enable),
        .I3(clock_counter[7]),
        .I4(clock_counter[2]),
        .I5(sclk_fall_i_3_n_0),
        .O(sclk_fall2_out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sclk_fall_i_2
       (.I0(clock_counter[0]),
        .I1(clock_counter[1]),
        .O(sclk_fall_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    sclk_fall_i_3
       (.I0(clock_counter[3]),
        .I1(clock_counter[4]),
        .I2(clock_counter[6]),
        .O(sclk_fall_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_fall_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sclk_fall2_out),
        .Q(sclk_fall_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sclk_rise_i_1
       (.I0(\clock_counter[7]_i_3_n_0 ),
        .I1(sclk_enable),
        .O(sclk_rise_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sclk_rise_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sclk_rise_i_1_n_0),
        .Q(sclk_rise));
  FDRE \st_current_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(st_next[0]),
        .Q(st_current[0]),
        .R(SR));
  FDRE \st_current_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(st_next[1]),
        .Q(st_current[1]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \st_next_reg[0] 
       (.CLR(1'b0),
        .D(\st_next_reg[0]_i_1_n_0 ),
        .G(\__5/i__n_0 ),
        .GE(1'b1),
        .Q(st_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBA55)) 
    \st_next_reg[0]_i_1 
       (.I0(st_current[0]),
        .I1(w_tc_counter_data1_carry__2_n_0),
        .I2(sclk_rise),
        .I3(st_current[1]),
        .O(\st_next_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \st_next_reg[1] 
       (.CLR(1'b0),
        .D(\st_next_reg[1]_i_1_n_0 ),
        .G(\__5/i__n_0 ),
        .GE(1'b1),
        .Q(st_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h10AA)) 
    \st_next_reg[1]_i_1 
       (.I0(st_current[0]),
        .I1(w_tc_counter_data1_carry__2_n_0),
        .I2(sclk_rise),
        .I3(st_current[1]),
        .O(\st_next_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tx_rx_pulse_ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(tx_rx_pulse_ff),
        .Q(tx_rx_pulse_ff2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    tx_rx_pulse_ff_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_tx_rx_start),
        .Q(tx_rx_pulse_ff),
        .R(1'b0));
  CARRY4 w_tc_counter_data1_carry
       (.CI(1'b0),
        .CO({w_tc_counter_data1_carry_n_0,w_tc_counter_data1_carry_n_1,w_tc_counter_data1_carry_n_2,w_tc_counter_data1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_counter_data1_carry_i_1_n_0,w_tc_counter_data1_carry_i_2_n_0,w_tc_counter_data1_carry_i_3_n_0,w_tc_counter_data1_carry_i_4_n_0}),
        .O(NLW_w_tc_counter_data1_carry_O_UNCONNECTED[3:0]),
        .S({w_tc_counter_data1_carry_i_5_n_0,w_tc_counter_data1_carry_i_6_n_0,w_tc_counter_data1_carry_i_7_n_0,w_tc_counter_data1_carry_i_8_n_0}));
  CARRY4 w_tc_counter_data1_carry__0
       (.CI(w_tc_counter_data1_carry_n_0),
        .CO({w_tc_counter_data1_carry__0_n_0,w_tc_counter_data1_carry__0_n_1,w_tc_counter_data1_carry__0_n_2,w_tc_counter_data1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_counter_data1_carry__0_i_1_n_0,w_tc_counter_data1_carry__0_i_2_n_0,w_tc_counter_data1_carry__0_i_3_n_0,w_tc_counter_data1_carry__0_i_4_n_0}),
        .O(NLW_w_tc_counter_data1_carry__0_O_UNCONNECTED[3:0]),
        .S({w_tc_counter_data1_carry__0_i_5_n_0,w_tc_counter_data1_carry__0_i_6_n_0,w_tc_counter_data1_carry__0_i_7_n_0,w_tc_counter_data1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__0_i_1
       (.I0(Bit_Index__0[14]),
        .I1(Bit_Index__0[15]),
        .O(w_tc_counter_data1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__0_i_2
       (.I0(Bit_Index__0[12]),
        .I1(Bit_Index__0[13]),
        .O(w_tc_counter_data1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__0_i_3
       (.I0(Bit_Index__0[10]),
        .I1(Bit_Index__0[11]),
        .O(w_tc_counter_data1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__0_i_4
       (.I0(Bit_Index__0[8]),
        .I1(Bit_Index__0[9]),
        .O(w_tc_counter_data1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__0_i_5
       (.I0(Bit_Index__0[14]),
        .I1(Bit_Index__0[15]),
        .O(w_tc_counter_data1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__0_i_6
       (.I0(Bit_Index__0[12]),
        .I1(Bit_Index__0[13]),
        .O(w_tc_counter_data1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__0_i_7
       (.I0(Bit_Index__0[10]),
        .I1(Bit_Index__0[11]),
        .O(w_tc_counter_data1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__0_i_8
       (.I0(Bit_Index__0[8]),
        .I1(Bit_Index__0[9]),
        .O(w_tc_counter_data1_carry__0_i_8_n_0));
  CARRY4 w_tc_counter_data1_carry__1
       (.CI(w_tc_counter_data1_carry__0_n_0),
        .CO({w_tc_counter_data1_carry__1_n_0,w_tc_counter_data1_carry__1_n_1,w_tc_counter_data1_carry__1_n_2,w_tc_counter_data1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_counter_data1_carry__1_i_1_n_0,w_tc_counter_data1_carry__1_i_2_n_0,w_tc_counter_data1_carry__1_i_3_n_0,w_tc_counter_data1_carry__1_i_4_n_0}),
        .O(NLW_w_tc_counter_data1_carry__1_O_UNCONNECTED[3:0]),
        .S({w_tc_counter_data1_carry__1_i_5_n_0,w_tc_counter_data1_carry__1_i_6_n_0,w_tc_counter_data1_carry__1_i_7_n_0,w_tc_counter_data1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__1_i_1
       (.I0(Bit_Index__0[22]),
        .I1(Bit_Index__0[23]),
        .O(w_tc_counter_data1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__1_i_2
       (.I0(Bit_Index__0[20]),
        .I1(Bit_Index__0[21]),
        .O(w_tc_counter_data1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__1_i_3
       (.I0(Bit_Index__0[18]),
        .I1(Bit_Index__0[19]),
        .O(w_tc_counter_data1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__1_i_4
       (.I0(Bit_Index__0[16]),
        .I1(Bit_Index__0[17]),
        .O(w_tc_counter_data1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__1_i_5
       (.I0(Bit_Index__0[22]),
        .I1(Bit_Index__0[23]),
        .O(w_tc_counter_data1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__1_i_6
       (.I0(Bit_Index__0[20]),
        .I1(Bit_Index__0[21]),
        .O(w_tc_counter_data1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__1_i_7
       (.I0(Bit_Index__0[18]),
        .I1(Bit_Index__0[19]),
        .O(w_tc_counter_data1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__1_i_8
       (.I0(Bit_Index__0[16]),
        .I1(Bit_Index__0[17]),
        .O(w_tc_counter_data1_carry__1_i_8_n_0));
  CARRY4 w_tc_counter_data1_carry__2
       (.CI(w_tc_counter_data1_carry__1_n_0),
        .CO({w_tc_counter_data1_carry__2_n_0,w_tc_counter_data1_carry__2_n_1,w_tc_counter_data1_carry__2_n_2,w_tc_counter_data1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({w_tc_counter_data1_carry__2_i_1_n_0,w_tc_counter_data1_carry__2_i_2_n_0,w_tc_counter_data1_carry__2_i_3_n_0,w_tc_counter_data1_carry__2_i_4_n_0}),
        .O(NLW_w_tc_counter_data1_carry__2_O_UNCONNECTED[3:0]),
        .S({w_tc_counter_data1_carry__2_i_5_n_0,w_tc_counter_data1_carry__2_i_6_n_0,w_tc_counter_data1_carry__2_i_7_n_0,w_tc_counter_data1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    w_tc_counter_data1_carry__2_i_1
       (.I0(Bit_Index__0[30]),
        .I1(Bit_Index__0[31]),
        .O(w_tc_counter_data1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__2_i_2
       (.I0(Bit_Index__0[28]),
        .I1(Bit_Index__0[29]),
        .O(w_tc_counter_data1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__2_i_3
       (.I0(Bit_Index__0[26]),
        .I1(Bit_Index__0[27]),
        .O(w_tc_counter_data1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry__2_i_4
       (.I0(Bit_Index__0[24]),
        .I1(Bit_Index__0[25]),
        .O(w_tc_counter_data1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__2_i_5
       (.I0(Bit_Index__0[30]),
        .I1(Bit_Index__0[31]),
        .O(w_tc_counter_data1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__2_i_6
       (.I0(Bit_Index__0[28]),
        .I1(Bit_Index__0[29]),
        .O(w_tc_counter_data1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__2_i_7
       (.I0(Bit_Index__0[26]),
        .I1(Bit_Index__0[27]),
        .O(w_tc_counter_data1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry__2_i_8
       (.I0(Bit_Index__0[24]),
        .I1(Bit_Index__0[25]),
        .O(w_tc_counter_data1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry_i_1
       (.I0(Bit_Index__0[6]),
        .I1(Bit_Index__0[7]),
        .O(w_tc_counter_data1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry_i_2
       (.I0(Bit_Index__0[4]),
        .I1(Bit_Index__0[5]),
        .O(w_tc_counter_data1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry_i_3
       (.I0(Bit_Index__0[2]),
        .I1(Bit_Index__0[3]),
        .O(w_tc_counter_data1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    w_tc_counter_data1_carry_i_4
       (.I0(Bit_Index__0[0]),
        .I1(Bit_Index__0[1]),
        .O(w_tc_counter_data1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry_i_5
       (.I0(Bit_Index__0[6]),
        .I1(Bit_Index__0[7]),
        .O(w_tc_counter_data1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry_i_6
       (.I0(Bit_Index__0[4]),
        .I1(Bit_Index__0[5]),
        .O(w_tc_counter_data1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry_i_7
       (.I0(Bit_Index__0[2]),
        .I1(Bit_Index__0[3]),
        .O(w_tc_counter_data1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    w_tc_counter_data1_carry_i_8
       (.I0(Bit_Index__0[0]),
        .I1(Bit_Index__0[1]),
        .O(w_tc_counter_data1_carry_i_8_n_0));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
