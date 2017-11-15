// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Wed Nov 15 17:39:45 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top DemoInterconnect_interface_axi_master_0_1 -prefix
//               DemoInterconnect_interface_axi_master_0_1_ DemoInterconnect_interface_axi_master_0_0_sim_netlist.v
// Design      : DemoInterconnect_interface_axi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_interface_axi_master_0_0,interface_axi_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "interface_axi_master_v1_0,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module DemoInterconnect_interface_axi_master_0_1
   (if00_data_in,
    if00_load_in,
    if00_data_out,
    if00_load_out,
    if00_send_done,
    if00_send_busy,
    m00_axi_awaddr,
    m00_axi_awprot,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_araddr,
    m00_axi_arprot,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn);
  input [7:0]if00_data_in;
  input if00_load_in;
  output [7:0]if00_data_out;
  output if00_load_out;
  input if00_send_done;
  input if00_send_busy;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 72000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [31:0]m00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME m00_axi_aclk, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 72000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF M00_AXI" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME m00_axi_aresetn, POLARITY ACTIVE_LOW" *) input m00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]if00_data_in;
  wire [7:0]if00_data_out;
  wire if00_load_in;
  wire if00_load_out;
  wire if00_send_busy;
  wire if00_send_done;
  wire m00_axi_aclk;
  wire [20:16]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [3:1]\^m00_axi_wstrb ;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const0> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20:16] = \^m00_axi_araddr [20:16];
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const1> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \<const0> ;
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \<const0> ;
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \<const0> ;
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \<const0> ;
  assign m00_axi_awaddr[20:16] = \^m00_axi_araddr [20:16];
  assign m00_axi_awaddr[15] = \<const0> ;
  assign m00_axi_awaddr[14] = \<const0> ;
  assign m00_axi_awaddr[13] = \<const0> ;
  assign m00_axi_awaddr[12] = \<const0> ;
  assign m00_axi_awaddr[11] = \<const0> ;
  assign m00_axi_awaddr[10] = \<const0> ;
  assign m00_axi_awaddr[9] = \<const0> ;
  assign m00_axi_awaddr[8] = \<const0> ;
  assign m00_axi_awaddr[7] = \<const0> ;
  assign m00_axi_awaddr[6] = \<const0> ;
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \<const0> ;
  assign m00_axi_awaddr[2] = \<const0> ;
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_wstrb[3:1] = \^m00_axi_wstrb [3:1];
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  DemoInterconnect_interface_axi_master_0_1_interface_axi_master_v1_0 U0
       (.if00_data_in(if00_data_in),
        .if00_data_out(if00_data_out),
        .if00_load_in(if00_load_in),
        .if00_load_out(if00_load_out),
        .if00_send_busy(if00_send_busy),
        .if00_send_done(if00_send_done),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb({\^m00_axi_wstrb [3],\^m00_axi_wstrb [1]}),
        .\m00_axi_wstrb[2] (\^m00_axi_wstrb [2]),
        .m00_axi_wvalid(m00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module DemoInterconnect_interface_axi_master_0_1_interface_axi_master_v1_0
   (m00_axi_bready,
    m00_axi_rready,
    if00_load_out,
    \m00_axi_wstrb[2] ,
    if00_data_out,
    m00_axi_araddr,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    m00_axi_aresetn,
    if00_data_in,
    m00_axi_aclk,
    if00_send_done,
    if00_send_busy,
    m00_axi_bvalid,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready,
    if00_load_in);
  output m00_axi_bready;
  output m00_axi_rready;
  output if00_load_out;
  output \m00_axi_wstrb[2] ;
  output [7:0]if00_data_out;
  output [4:0]m00_axi_araddr;
  output [31:0]m00_axi_wdata;
  output [1:0]m00_axi_wstrb;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  input m00_axi_aresetn;
  input [7:0]if00_data_in;
  input m00_axi_aclk;
  input if00_send_done;
  input if00_send_busy;
  input m00_axi_bvalid;
  input [31:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;
  input if00_load_in;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_current_state[3]_i_6_n_0 ;
  wire \FSM_sequential_current_state[3]_i_7_n_0 ;
  wire \FSM_sequential_current_state[3]_i_9_n_0 ;
  wire \FSM_sequential_current_state_reg[3]_i_4_n_0 ;
  wire [1:0]L;
  wire [31:0]RXN_DATA;
  wire current_axi_data;
  wire \current_axi_data[31]_i_1_n_0 ;
  wire \current_axi_data_reg_n_0_[0] ;
  wire \current_axi_data_reg_n_0_[1] ;
  wire \current_axi_data_reg_n_0_[2] ;
  wire \current_axi_data_reg_n_0_[3] ;
  wire \current_axi_data_reg_n_0_[4] ;
  wire \current_axi_data_reg_n_0_[5] ;
  wire \current_axi_data_reg_n_0_[6] ;
  wire \current_axi_data_reg_n_0_[7] ;
  wire [31:0]current_body;
  wire \current_body[15]_i_3_n_0 ;
  wire \current_body[23]_i_3_n_0 ;
  wire \current_body[24]_i_1_n_0 ;
  wire \current_body[25]_i_1_n_0 ;
  wire \current_body[26]_i_1_n_0 ;
  wire \current_body[27]_i_1_n_0 ;
  wire \current_body[28]_i_1_n_0 ;
  wire \current_body[29]_i_1_n_0 ;
  wire \current_body[30]_i_1_n_0 ;
  wire \current_body[31]_i_3_n_0 ;
  wire \current_body[31]_i_5_n_0 ;
  wire \current_body[31]_i_6_n_0 ;
  wire \current_body[31]_i_7_n_0 ;
  wire \current_body[31]_i_8_n_0 ;
  wire \current_body[7]_i_3_n_0 ;
  wire \current_body_count[0]_i_1_n_0 ;
  wire \current_body_count[0]_i_3_n_0 ;
  wire \current_body_count[1]_i_1_n_0 ;
  wire \current_body_count[1]_i_3_n_0 ;
  wire \current_body_count[2]_i_1_n_0 ;
  wire \current_body_count[2]_i_3_n_0 ;
  wire \current_body_count[2]_i_4_n_0 ;
  wire \current_body_count[2]_i_6_n_0 ;
  wire \current_body_count[2]_i_7_n_0 ;
  wire \current_body_count_reg_n_0_[0] ;
  wire \current_body_count_reg_n_0_[1] ;
  wire \current_body_count_reg_n_0_[2] ;
  wire current_head;
  wire \current_head_reg_n_0_[0] ;
  wire \current_head_reg_n_0_[1] ;
  wire \current_head_reg_n_0_[2] ;
  wire \current_head_reg_n_0_[3] ;
  wire \current_head_reg_n_0_[4] ;
  wire \current_head_reg_n_0_[7] ;
  wire current_if00_load;
  wire current_if00_load_i_1_n_0;
  wire current_init_axi_rx_i_1_n_0;
  wire current_init_axi_rx_i_2_n_0;
  wire current_init_axi_rx_reg_n_0;
  wire current_init_axi_tx_i_1_n_0;
  wire current_init_axi_tx_i_2_n_0;
  wire current_init_axi_tx_reg_n_0;
  wire current_packet;
  wire \current_packet_reg_n_0_[37] ;
  (* RTL_KEEP = "yes" *) wire [3:0]current_state;
  wire [14:0]current_timeout_count;
  wire \current_timeout_count[0]_i_1_n_0 ;
  wire \current_timeout_count[10]_i_1_n_0 ;
  wire \current_timeout_count[11]_i_1_n_0 ;
  wire \current_timeout_count[12]_i_1_n_0 ;
  wire \current_timeout_count[13]_i_1_n_0 ;
  wire \current_timeout_count[14]_i_1_n_0 ;
  wire \current_timeout_count[14]_i_3_n_0 ;
  wire \current_timeout_count[14]_i_4_n_0 ;
  wire \current_timeout_count[14]_i_5_n_0 ;
  wire \current_timeout_count[14]_i_6_n_0 ;
  wire \current_timeout_count[14]_i_7_n_0 ;
  wire \current_timeout_count[14]_i_8_n_0 ;
  wire \current_timeout_count[14]_i_9_n_0 ;
  wire \current_timeout_count[1]_i_1_n_0 ;
  wire \current_timeout_count[2]_i_1_n_0 ;
  wire \current_timeout_count[3]_i_1_n_0 ;
  wire \current_timeout_count[4]_i_1_n_0 ;
  wire \current_timeout_count[5]_i_1_n_0 ;
  wire \current_timeout_count[6]_i_1_n_0 ;
  wire \current_timeout_count[7]_i_1_n_0 ;
  wire \current_timeout_count[8]_i_1_n_0 ;
  wire \current_timeout_count[9]_i_1_n_0 ;
  wire current_timeout_count_0;
  wire [14:1]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire [7:0]if00_data_in;
  wire [7:0]if00_data_out;
  wire \if00_data_out_reg[0]_i_1_n_0 ;
  wire \if00_data_out_reg[0]_i_2_n_0 ;
  wire \if00_data_out_reg[1]_i_1_n_0 ;
  wire \if00_data_out_reg[1]_i_2_n_0 ;
  wire \if00_data_out_reg[2]_i_1_n_0 ;
  wire \if00_data_out_reg[2]_i_2_n_0 ;
  wire \if00_data_out_reg[3]_i_1_n_0 ;
  wire \if00_data_out_reg[3]_i_2_n_0 ;
  wire \if00_data_out_reg[4]_i_1_n_0 ;
  wire \if00_data_out_reg[4]_i_2_n_0 ;
  wire \if00_data_out_reg[5]_i_1_n_0 ;
  wire \if00_data_out_reg[5]_i_2_n_0 ;
  wire \if00_data_out_reg[6]_i_1_n_0 ;
  wire \if00_data_out_reg[6]_i_2_n_0 ;
  wire \if00_data_out_reg[7]_i_1_n_0 ;
  wire \if00_data_out_reg[7]_i_2_n_0 ;
  wire \if00_data_out_reg[7]_i_3_n_0 ;
  wire \if00_data_out_reg[7]_i_4_n_0 ;
  wire if00_load_in;
  wire if00_load_out;
  wire if00_load_out_INST_0_i_1_n_0;
  wire if00_send_busy;
  wire if00_send_done;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_0;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_10;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_11;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_12;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_13;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_14;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_15;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_16;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_17;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_18;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_19;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_5;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_7;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_8;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_9;
  wire m00_axi_aclk;
  wire [4:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [31:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [1:0]m00_axi_wstrb;
  wire \m00_axi_wstrb[2] ;
  wire m00_axi_wvalid;
  wire [2:0]next_body_count;
  wire next_if00_load;
  wire next_if00_load_i_1_n_0;
  wire next_timeout_count0_carry__0_n_0;
  wire next_timeout_count0_carry__0_n_1;
  wire next_timeout_count0_carry__0_n_2;
  wire next_timeout_count0_carry__0_n_3;
  wire next_timeout_count0_carry__1_n_0;
  wire next_timeout_count0_carry__1_n_1;
  wire next_timeout_count0_carry__1_n_2;
  wire next_timeout_count0_carry__1_n_3;
  wire next_timeout_count0_carry__2_n_3;
  wire next_timeout_count0_carry_n_0;
  wire next_timeout_count0_carry_n_1;
  wire next_timeout_count0_carry_n_2;
  wire next_timeout_count0_carry_n_3;
  wire p_0_in;
  wire [3:1]NLW_next_timeout_count0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_next_timeout_count0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\current_body_count_reg_n_0_[0] ),
        .I4(\current_body_count_reg_n_0_[1] ),
        .I5(\current_body_count_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000222E00000000)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(\current_body[31]_i_7_n_0 ),
        .I1(current_state[2]),
        .I2(current_init_axi_rx_reg_n_0),
        .I3(current_init_axi_tx_reg_n_0),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \FSM_sequential_current_state[3]_i_6 
       (.I0(\FSM_sequential_current_state[3]_i_9_n_0 ),
        .I1(\current_timeout_count[14]_i_9_n_0 ),
        .I2(\current_timeout_count[14]_i_8_n_0 ),
        .I3(\current_timeout_count[14]_i_7_n_0 ),
        .I4(\current_timeout_count[14]_i_6_n_0 ),
        .I5(\current_body[31]_i_7_n_0 ),
        .O(\FSM_sequential_current_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h1111111F)) 
    \FSM_sequential_current_state[3]_i_7 
       (.I0(if00_send_done),
        .I1(if00_send_busy),
        .I2(\current_body_count_reg_n_0_[2] ),
        .I3(\current_body_count_reg_n_0_[0] ),
        .I4(\current_body_count_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h4040400F)) 
    \FSM_sequential_current_state[3]_i_9 
       (.I0(current_if00_load),
        .I1(next_if00_load),
        .I2(\current_body_count_reg_n_0_[2] ),
        .I3(\current_body_count_reg_n_0_[0] ),
        .I4(\current_body_count_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:0001,st_rx_head:0010,st_rx_body:0011,st_pack:0100,st_axi_init:0101,st_axi_resp:0110,st_tx_data:0111,st_tx_wait:1000,st_reset:0000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_16),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* FSM_ENCODED_STATES = "st_idle:0001,st_rx_head:0010,st_rx_body:0011,st_pack:0100,st_axi_init:0101,st_axi_resp:0110,st_tx_data:0111,st_tx_wait:1000,st_reset:0000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_16),
        .D(interface_axi_master_v1_0_M00_AXI_inst_n_18),
        .Q(current_state[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* FSM_ENCODED_STATES = "st_idle:0001,st_rx_head:0010,st_rx_body:0011,st_pack:0100,st_axi_init:0101,st_axi_resp:0110,st_tx_data:0111,st_tx_wait:1000,st_reset:0000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_16),
        .D(interface_axi_master_v1_0_M00_AXI_inst_n_17),
        .Q(current_state[2]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* FSM_ENCODED_STATES = "st_idle:0001,st_rx_head:0010,st_rx_body:0011,st_pack:0100,st_axi_init:0101,st_axi_resp:0110,st_tx_data:0111,st_tx_wait:1000,st_reset:0000" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_16),
        .D(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .Q(current_state[3]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  MUXF7 \FSM_sequential_current_state_reg[3]_i_4 
       (.I0(\FSM_sequential_current_state[3]_i_6_n_0 ),
        .I1(\FSM_sequential_current_state[3]_i_7_n_0 ),
        .O(\FSM_sequential_current_state_reg[3]_i_4_n_0 ),
        .S(current_state[2]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \current_axi_data[31]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(m00_axi_aresetn),
        .O(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[0]),
        .Q(\current_axi_data_reg_n_0_[0] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[10] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[10]),
        .Q(data1[2]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[11] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[11]),
        .Q(data1[3]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[12] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[12]),
        .Q(data1[4]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[13] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[13]),
        .Q(data1[5]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[14] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[14]),
        .Q(data1[6]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[15] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[15]),
        .Q(data1[7]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[16] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[16]),
        .Q(data2[0]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[17] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[17]),
        .Q(data2[1]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[18] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[18]),
        .Q(data2[2]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[19] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[19]),
        .Q(data2[3]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[1]),
        .Q(\current_axi_data_reg_n_0_[1] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[20] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[20]),
        .Q(data2[4]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[21] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[21]),
        .Q(data2[5]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[22] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[22]),
        .Q(data2[6]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[23] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[23]),
        .Q(data2[7]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[24] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[24]),
        .Q(data3[0]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[25] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[25]),
        .Q(data3[1]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[26] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[26]),
        .Q(data3[2]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[27] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[27]),
        .Q(data3[3]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[28] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[28]),
        .Q(data3[4]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[29] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[29]),
        .Q(data3[5]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[2]),
        .Q(\current_axi_data_reg_n_0_[2] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[30] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[30]),
        .Q(data3[6]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[31] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[31]),
        .Q(data3[7]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[3]),
        .Q(\current_axi_data_reg_n_0_[3] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[4]),
        .Q(\current_axi_data_reg_n_0_[4] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[5]),
        .Q(\current_axi_data_reg_n_0_[5] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[6] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[6]),
        .Q(\current_axi_data_reg_n_0_[6] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[7] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[7]),
        .Q(\current_axi_data_reg_n_0_[7] ),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[8] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[8]),
        .Q(data1[0]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_axi_data_reg[9] 
       (.C(m00_axi_aclk),
        .CE(current_axi_data),
        .D(RXN_DATA[9]),
        .Q(data1[1]),
        .R(\current_axi_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_body[15]_i_3 
       (.I0(\current_body_count_reg_n_0_[0] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[2] ),
        .O(\current_body[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \current_body[23]_i_3 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .O(\current_body[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[24]_i_1 
       (.I0(if00_data_in[0]),
        .I1(current_state[3]),
        .O(\current_body[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[25]_i_1 
       (.I0(if00_data_in[1]),
        .I1(current_state[3]),
        .O(\current_body[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[26]_i_1 
       (.I0(if00_data_in[2]),
        .I1(current_state[3]),
        .O(\current_body[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[27]_i_1 
       (.I0(if00_data_in[3]),
        .I1(current_state[3]),
        .O(\current_body[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[28]_i_1 
       (.I0(if00_data_in[4]),
        .I1(current_state[3]),
        .O(\current_body[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[29]_i_1 
       (.I0(if00_data_in[5]),
        .I1(current_state[3]),
        .O(\current_body[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[30]_i_1 
       (.I0(if00_data_in[6]),
        .I1(current_state[3]),
        .O(\current_body[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[31]_i_3 
       (.I0(if00_data_in[7]),
        .I1(current_state[3]),
        .O(\current_body[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \current_body[31]_i_5 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\current_body[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \current_body[31]_i_6 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .O(\current_body[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_body[31]_i_7 
       (.I0(current_if00_load),
        .I1(next_if00_load),
        .O(\current_body[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \current_body[31]_i_8 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\current_body_count_reg_n_0_[1] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[2] ),
        .O(\current_body[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_body[7]_i_3 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .O(\current_body[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFF08080800)) 
    \current_body_count[0]_i_1 
       (.I0(next_body_count[0]),
        .I1(m00_axi_aresetn),
        .I2(\current_body_count[2]_i_3_n_0 ),
        .I3(\current_body_count[2]_i_4_n_0 ),
        .I4(interface_axi_master_v1_0_M00_AXI_inst_n_19),
        .I5(\current_body_count_reg_n_0_[0] ),
        .O(\current_body_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000001DFF1D)) 
    \current_body_count[0]_i_2 
       (.I0(L[0]),
        .I1(current_state[2]),
        .I2(\current_packet_reg_n_0_[37] ),
        .I3(current_state[0]),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count[0]_i_3_n_0 ),
        .O(next_body_count[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \current_body_count[0]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .O(\current_body_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFF08080800)) 
    \current_body_count[1]_i_1 
       (.I0(next_body_count[1]),
        .I1(m00_axi_aresetn),
        .I2(\current_body_count[2]_i_3_n_0 ),
        .I3(\current_body_count[2]_i_4_n_0 ),
        .I4(interface_axi_master_v1_0_M00_AXI_inst_n_19),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\current_body_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E22E0000)) 
    \current_body_count[1]_i_2 
       (.I0(\current_body_count[1]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(\current_body_count_reg_n_0_[1] ),
        .I4(current_state[1]),
        .I5(current_state[3]),
        .O(next_body_count[1]));
  LUT5 #(
    .INIT(32'h606F6F60)) 
    \current_body_count[1]_i_3 
       (.I0(\current_packet_reg_n_0_[37] ),
        .I1(\m00_axi_wstrb[2] ),
        .I2(current_state[2]),
        .I3(L[0]),
        .I4(L[1]),
        .O(\current_body_count[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFF08080800)) 
    \current_body_count[2]_i_1 
       (.I0(next_body_count[2]),
        .I1(m00_axi_aresetn),
        .I2(\current_body_count[2]_i_3_n_0 ),
        .I3(\current_body_count[2]_i_4_n_0 ),
        .I4(interface_axi_master_v1_0_M00_AXI_inst_n_19),
        .I5(\current_body_count_reg_n_0_[2] ),
        .O(\current_body_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E22E0000)) 
    \current_body_count[2]_i_2 
       (.I0(\current_body_count[2]_i_6_n_0 ),
        .I1(current_state[0]),
        .I2(\current_body_count[2]_i_7_n_0 ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(current_state[1]),
        .I5(current_state[3]),
        .O(next_body_count[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    \current_body_count[2]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(\current_body_count[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000555400000000)) 
    \current_body_count[2]_i_4 
       (.I0(\current_body[31]_i_7_n_0 ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\current_body_count[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \current_body_count[2]_i_6 
       (.I0(\m00_axi_wstrb[2] ),
        .I1(\current_packet_reg_n_0_[37] ),
        .I2(current_state[2]),
        .I3(L[1]),
        .I4(L[0]),
        .O(\current_body_count[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \current_body_count[2]_i_7 
       (.I0(\current_body_count_reg_n_0_[0] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .O(\current_body_count[2]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_count_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\current_body_count[0]_i_1_n_0 ),
        .Q(\current_body_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_count_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\current_body_count[1]_i_1_n_0 ),
        .Q(\current_body_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_count_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\current_body_count[2]_i_1_n_0 ),
        .Q(\current_body_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[0] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[24]_i_1_n_0 ),
        .Q(current_body[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[10] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[26]_i_1_n_0 ),
        .Q(current_body[10]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[11] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[27]_i_1_n_0 ),
        .Q(current_body[11]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[12] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[28]_i_1_n_0 ),
        .Q(current_body[12]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[13] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[29]_i_1_n_0 ),
        .Q(current_body[13]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[14] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[30]_i_1_n_0 ),
        .Q(current_body[14]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[15] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[31]_i_3_n_0 ),
        .Q(current_body[15]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[16] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[24]_i_1_n_0 ),
        .Q(current_body[16]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[17] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[25]_i_1_n_0 ),
        .Q(current_body[17]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[18] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[26]_i_1_n_0 ),
        .Q(current_body[18]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[19] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[27]_i_1_n_0 ),
        .Q(current_body[19]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[1] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[25]_i_1_n_0 ),
        .Q(current_body[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[20] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[28]_i_1_n_0 ),
        .Q(current_body[20]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[21] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[29]_i_1_n_0 ),
        .Q(current_body[21]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[22] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[30]_i_1_n_0 ),
        .Q(current_body[22]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[23] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .D(\current_body[31]_i_3_n_0 ),
        .Q(current_body[23]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_11));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[24] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[24]_i_1_n_0 ),
        .Q(current_body[24]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[25] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[25]_i_1_n_0 ),
        .Q(current_body[25]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[26] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[26]_i_1_n_0 ),
        .Q(current_body[26]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[27] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[27]_i_1_n_0 ),
        .Q(current_body[27]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[28] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[28]_i_1_n_0 ),
        .Q(current_body[28]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[29] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[29]_i_1_n_0 ),
        .Q(current_body[29]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[2] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[26]_i_1_n_0 ),
        .Q(current_body[2]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[30] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[30]_i_1_n_0 ),
        .Q(current_body[30]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[31] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .D(\current_body[31]_i_3_n_0 ),
        .Q(current_body[31]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[3] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[27]_i_1_n_0 ),
        .Q(current_body[3]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[4] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[28]_i_1_n_0 ),
        .Q(current_body[4]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[5] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[29]_i_1_n_0 ),
        .Q(current_body[5]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[6] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[30]_i_1_n_0 ),
        .Q(current_body[6]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[7] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .D(\current_body[31]_i_3_n_0 ),
        .Q(current_body[7]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[8] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[24]_i_1_n_0 ),
        .Q(current_body[8]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_body_reg[9] 
       (.C(m00_axi_aclk),
        .CE(interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .D(\current_body[25]_i_1_n_0 ),
        .Q(current_body[9]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_9));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[0]),
        .Q(\current_head_reg_n_0_[0] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[1]),
        .Q(\current_head_reg_n_0_[1] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[2]),
        .Q(\current_head_reg_n_0_[2] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[3]),
        .Q(\current_head_reg_n_0_[3] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[4]),
        .Q(\current_head_reg_n_0_[4] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[5]),
        .Q(L[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[6] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[6]),
        .Q(L[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[7] 
       (.C(m00_axi_aclk),
        .CE(current_head),
        .D(if00_data_in[7]),
        .Q(\current_head_reg_n_0_[7] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_5));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    current_if00_load_i_1
       (.I0(next_if00_load),
        .I1(m00_axi_aresetn),
        .I2(current_if00_load),
        .O(current_if00_load_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_if00_load_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_if00_load_i_1_n_0),
        .Q(current_if00_load),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FFFFFF08000000)) 
    current_init_axi_rx_i_1
       (.I0(p_0_in),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(m00_axi_aresetn),
        .I4(current_init_axi_rx_i_2_n_0),
        .I5(current_init_axi_rx_reg_n_0),
        .O(current_init_axi_rx_i_1_n_0));
  LUT6 #(
    .INIT(64'h1010100001010101)) 
    current_init_axi_rx_i_2
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(p_0_in),
        .I4(current_init_axi_rx_reg_n_0),
        .I5(current_state[0]),
        .O(current_init_axi_rx_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_init_axi_rx_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_rx_i_1_n_0),
        .Q(current_init_axi_rx_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FFF2000)) 
    current_init_axi_tx_i_1
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(m00_axi_aresetn),
        .I3(current_init_axi_tx_i_2_n_0),
        .I4(current_init_axi_tx_reg_n_0),
        .O(current_init_axi_tx_i_1_n_0));
  LUT6 #(
    .INIT(64'h1010001001010101)) 
    current_init_axi_tx_i_2
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(p_0_in),
        .I4(current_init_axi_tx_reg_n_0),
        .I5(current_state[0]),
        .O(current_init_axi_tx_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_init_axi_tx_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_tx_i_1_n_0),
        .Q(current_init_axi_tx_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[0]),
        .Q(m00_axi_wdata[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[10] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[10]),
        .Q(m00_axi_wdata[10]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[11] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[11]),
        .Q(m00_axi_wdata[11]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[12] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[12]),
        .Q(m00_axi_wdata[12]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[13] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[13]),
        .Q(m00_axi_wdata[13]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[14] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[14]),
        .Q(m00_axi_wdata[14]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[15] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[15]),
        .Q(m00_axi_wdata[15]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[16] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[16]),
        .Q(m00_axi_wdata[16]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[17] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[17]),
        .Q(m00_axi_wdata[17]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[18] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[18]),
        .Q(m00_axi_wdata[18]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[19] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[19]),
        .Q(m00_axi_wdata[19]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[1]),
        .Q(m00_axi_wdata[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[20] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[20]),
        .Q(m00_axi_wdata[20]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[21] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[21]),
        .Q(m00_axi_wdata[21]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[22] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[22]),
        .Q(m00_axi_wdata[22]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[23] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[23]),
        .Q(m00_axi_wdata[23]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[24] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[24]),
        .Q(m00_axi_wdata[24]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[25] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[25]),
        .Q(m00_axi_wdata[25]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[26] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[26]),
        .Q(m00_axi_wdata[26]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[27] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[27]),
        .Q(m00_axi_wdata[27]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[28] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[28]),
        .Q(m00_axi_wdata[28]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[29] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[29]),
        .Q(m00_axi_wdata[29]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[2]),
        .Q(m00_axi_wdata[2]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[30] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[30]),
        .Q(m00_axi_wdata[30]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[31] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[31]),
        .Q(m00_axi_wdata[31]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[32] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[0] ),
        .Q(m00_axi_araddr[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[33] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[1] ),
        .Q(m00_axi_araddr[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[34] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[2] ),
        .Q(m00_axi_araddr[2]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[35] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[3] ),
        .Q(m00_axi_araddr[3]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[36] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[4] ),
        .Q(m00_axi_araddr[4]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[37] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(L[0]),
        .Q(\current_packet_reg_n_0_[37] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[38] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(L[1]),
        .Q(\m00_axi_wstrb[2] ),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[39] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(\current_head_reg_n_0_[7] ),
        .Q(p_0_in),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[3]),
        .Q(m00_axi_wdata[3]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[4]),
        .Q(m00_axi_wdata[4]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[5]),
        .Q(m00_axi_wdata[5]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[6] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[6]),
        .Q(m00_axi_wdata[6]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[7] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[7]),
        .Q(m00_axi_wdata[7]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[8] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[8]),
        .Q(m00_axi_wdata[8]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \current_packet_reg[9] 
       (.C(m00_axi_aclk),
        .CE(current_packet),
        .D(current_body[9]),
        .Q(m00_axi_wdata[9]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_15));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \current_timeout_count[0]_i_1 
       (.I0(next_if00_load),
        .I1(current_if00_load),
        .I2(current_timeout_count[0]),
        .O(\current_timeout_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[10]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[10]),
        .O(\current_timeout_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[11]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[11]),
        .O(\current_timeout_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[12]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[12]),
        .O(\current_timeout_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[13]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[13]),
        .O(\current_timeout_count[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \current_timeout_count[14]_i_1 
       (.I0(m00_axi_aresetn),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(\current_timeout_count[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008200000002)) 
    \current_timeout_count[14]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(\current_timeout_count[14]_i_4_n_0 ),
        .O(current_timeout_count_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[14]_i_3 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[14]),
        .O(\current_timeout_count[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \current_timeout_count[14]_i_4 
       (.I0(\current_body_count_reg_n_0_[1] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[2] ),
        .O(\current_timeout_count[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFE0000FFFE)) 
    \current_timeout_count[14]_i_5 
       (.I0(\current_timeout_count[14]_i_6_n_0 ),
        .I1(\current_timeout_count[14]_i_7_n_0 ),
        .I2(\current_timeout_count[14]_i_8_n_0 ),
        .I3(\current_timeout_count[14]_i_9_n_0 ),
        .I4(next_if00_load),
        .I5(current_if00_load),
        .O(\current_timeout_count[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_6 
       (.I0(current_timeout_count[10]),
        .I1(current_timeout_count[9]),
        .I2(current_timeout_count[12]),
        .I3(current_timeout_count[11]),
        .O(\current_timeout_count[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \current_timeout_count[14]_i_7 
       (.I0(current_timeout_count[13]),
        .I1(current_timeout_count[14]),
        .I2(current_timeout_count[0]),
        .O(\current_timeout_count[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_8 
       (.I0(current_timeout_count[2]),
        .I1(current_timeout_count[1]),
        .I2(current_timeout_count[4]),
        .I3(current_timeout_count[3]),
        .O(\current_timeout_count[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_9 
       (.I0(current_timeout_count[6]),
        .I1(current_timeout_count[5]),
        .I2(current_timeout_count[8]),
        .I3(current_timeout_count[7]),
        .O(\current_timeout_count[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[1]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[1]),
        .O(\current_timeout_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[2]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[2]),
        .O(\current_timeout_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[3]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[3]),
        .O(\current_timeout_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[4]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[4]),
        .O(\current_timeout_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[5]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[5]),
        .O(\current_timeout_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[6]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[6]),
        .O(\current_timeout_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[7]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[7]),
        .O(\current_timeout_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[8]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[8]),
        .O(\current_timeout_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[9]_i_1 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(data0[9]),
        .O(\current_timeout_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[0] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[0]_i_1_n_0 ),
        .Q(current_timeout_count[0]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[10] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[10]_i_1_n_0 ),
        .Q(current_timeout_count[10]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[11] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[11]_i_1_n_0 ),
        .Q(current_timeout_count[11]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[12] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[12]_i_1_n_0 ),
        .Q(current_timeout_count[12]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[13] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[13]_i_1_n_0 ),
        .Q(current_timeout_count[13]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[14] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[14]_i_3_n_0 ),
        .Q(current_timeout_count[14]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[1] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[1]_i_1_n_0 ),
        .Q(current_timeout_count[1]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[2] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[2]_i_1_n_0 ),
        .Q(current_timeout_count[2]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[3] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[3]_i_1_n_0 ),
        .Q(current_timeout_count[3]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[4] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[4]_i_1_n_0 ),
        .Q(current_timeout_count[4]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[5] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[5]_i_1_n_0 ),
        .Q(current_timeout_count[5]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[6] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[6]_i_1_n_0 ),
        .Q(current_timeout_count[6]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[7] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[7]_i_1_n_0 ),
        .Q(current_timeout_count[7]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[8] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[8]_i_1_n_0 ),
        .Q(current_timeout_count[8]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_timeout_count_reg[9] 
       (.C(m00_axi_aclk),
        .CE(current_timeout_count_0),
        .D(\current_timeout_count[9]_i_1_n_0 ),
        .Q(current_timeout_count[9]),
        .R(\current_timeout_count[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[0] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[0]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[0]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[0]_i_1 
       (.I0(\if00_data_out_reg[0]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[0]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[0]_i_2 
       (.I0(\current_axi_data_reg_n_0_[0] ),
        .I1(data1[0]),
        .I2(data2[0]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[1] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[1]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[1]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[1]_i_1 
       (.I0(\if00_data_out_reg[1]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[1]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[1]_i_2 
       (.I0(\current_axi_data_reg_n_0_[1] ),
        .I1(data1[1]),
        .I2(data2[1]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[2] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[2]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[2]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[2]_i_1 
       (.I0(\if00_data_out_reg[2]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[2]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[2]_i_2 
       (.I0(\current_axi_data_reg_n_0_[2] ),
        .I1(data1[2]),
        .I2(data2[2]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[3] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[3]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[3]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[3]_i_1 
       (.I0(\if00_data_out_reg[3]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[3]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[3]_i_2 
       (.I0(\current_axi_data_reg_n_0_[3] ),
        .I1(data1[3]),
        .I2(data2[3]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[4] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[4]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[4]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[4]_i_1 
       (.I0(\if00_data_out_reg[4]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[4]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[4]_i_2 
       (.I0(\current_axi_data_reg_n_0_[4] ),
        .I1(data1[4]),
        .I2(data2[4]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[5] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[5]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[5]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[5]_i_1 
       (.I0(\if00_data_out_reg[5]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[5]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[5]_i_2 
       (.I0(\current_axi_data_reg_n_0_[5] ),
        .I1(data1[5]),
        .I2(data2[5]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[6] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[6]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[6]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[6]_i_1 
       (.I0(\if00_data_out_reg[6]_i_2_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[6]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[6]_i_2 
       (.I0(\current_axi_data_reg_n_0_[6] ),
        .I1(data1[6]),
        .I2(data2[6]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[6]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \if00_data_out_reg[7] 
       (.CLR(1'b0),
        .D(\if00_data_out_reg[7]_i_1_n_0 ),
        .G(\if00_data_out_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(if00_data_out[7]));
  LUT6 #(
    .INIT(64'h00000000ABAAAAAA)) 
    \if00_data_out_reg[7]_i_1 
       (.I0(\if00_data_out_reg[7]_i_3_n_0 ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(data3[7]),
        .I5(\if00_data_out_reg[7]_i_4_n_0 ),
        .O(\if00_data_out_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h50000707)) 
    \if00_data_out_reg[7]_i_2 
       (.I0(if00_load_out_INST_0_i_1_n_0),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .O(\if00_data_out_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[7]_i_3 
       (.I0(\current_axi_data_reg_n_0_[7] ),
        .I1(data1[7]),
        .I2(data2[7]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \if00_data_out_reg[7]_i_4 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .O(\if00_data_out_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000001088880010)) 
    if00_load_out_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(if00_send_busy),
        .I4(current_state[2]),
        .I5(if00_load_out_INST_0_i_1_n_0),
        .O(if00_load_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
    if00_load_out_INST_0_i_1
       (.I0(current_state[3]),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(if00_send_busy),
        .I5(if00_send_done),
        .O(if00_load_out_INST_0_i_1_n_0));
  DemoInterconnect_interface_axi_master_0_1_interface_axi_master_v1_0_M00_AXI interface_axi_master_v1_0_M00_AXI_inst
       (.D({interface_axi_master_v1_0_M00_AXI_inst_n_17,interface_axi_master_v1_0_M00_AXI_inst_n_18}),
        .E(interface_axi_master_v1_0_M00_AXI_inst_n_16),
        .\FSM_sequential_current_state_reg[0] (\current_body[31]_i_8_n_0 ),
        .\FSM_sequential_current_state_reg[1] (\current_body[31]_i_5_n_0 ),
        .\FSM_sequential_current_state_reg[2] (\FSM_sequential_current_state[3]_i_3_n_0 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[3]_i_4_n_0 ),
        .Q(RXN_DATA),
        .SR(interface_axi_master_v1_0_M00_AXI_inst_n_0),
        .current_axi_data(current_axi_data),
        .\current_body_count_reg[0] (\current_body[15]_i_3_n_0 ),
        .\current_body_count_reg[0]_0 (\current_body_count_reg_n_0_[0] ),
        .\current_body_count_reg[1] (\current_body_count_reg_n_0_[1] ),
        .\current_body_count_reg[1]_0 (\current_timeout_count[14]_i_4_n_0 ),
        .\current_body_count_reg[2] (interface_axi_master_v1_0_M00_AXI_inst_n_19),
        .\current_body_count_reg[2]_0 (\current_body[7]_i_3_n_0 ),
        .\current_body_count_reg[2]_1 (\current_body[23]_i_3_n_0 ),
        .\current_body_count_reg[2]_2 (\current_body[31]_i_6_n_0 ),
        .\current_body_count_reg[2]_3 (\current_body_count_reg_n_0_[2] ),
        .\current_body_count_reg[2]_4 (\FSM_sequential_current_state[2]_i_2_n_0 ),
        .\current_body_reg[15] (interface_axi_master_v1_0_M00_AXI_inst_n_9),
        .\current_body_reg[15]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_10),
        .\current_body_reg[23] (interface_axi_master_v1_0_M00_AXI_inst_n_11),
        .\current_body_reg[23]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_12),
        .\current_body_reg[31] (interface_axi_master_v1_0_M00_AXI_inst_n_13),
        .\current_body_reg[31]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_14),
        .\current_body_reg[7] (interface_axi_master_v1_0_M00_AXI_inst_n_7),
        .\current_body_reg[7]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_8),
        .current_head(current_head),
        .\current_head_reg[7] (interface_axi_master_v1_0_M00_AXI_inst_n_5),
        .current_if00_load_reg(\current_body[31]_i_7_n_0 ),
        .current_init_axi_rx_reg(current_init_axi_rx_reg_n_0),
        .current_init_axi_tx_reg(current_init_axi_tx_reg_n_0),
        .current_packet(current_packet),
        .\current_packet_reg[0] (interface_axi_master_v1_0_M00_AXI_inst_n_15),
        .\current_packet_reg[37] (\current_packet_reg_n_0_[37] ),
        .\current_packet_reg[38] (\m00_axi_wstrb[2] ),
        .if00_send_busy(if00_send_busy),
        .if00_send_done(if00_send_done),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(current_state));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    next_if00_load_i_1
       (.I0(if00_load_in),
        .I1(m00_axi_aresetn),
        .I2(next_if00_load),
        .O(next_if00_load_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    next_if00_load_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(next_if00_load_i_1_n_0),
        .Q(next_if00_load),
        .R(1'b0));
  CARRY4 next_timeout_count0_carry
       (.CI(1'b0),
        .CO({next_timeout_count0_carry_n_0,next_timeout_count0_carry_n_1,next_timeout_count0_carry_n_2,next_timeout_count0_carry_n_3}),
        .CYINIT(current_timeout_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(current_timeout_count[4:1]));
  CARRY4 next_timeout_count0_carry__0
       (.CI(next_timeout_count0_carry_n_0),
        .CO({next_timeout_count0_carry__0_n_0,next_timeout_count0_carry__0_n_1,next_timeout_count0_carry__0_n_2,next_timeout_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(current_timeout_count[8:5]));
  CARRY4 next_timeout_count0_carry__1
       (.CI(next_timeout_count0_carry__0_n_0),
        .CO({next_timeout_count0_carry__1_n_0,next_timeout_count0_carry__1_n_1,next_timeout_count0_carry__1_n_2,next_timeout_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(current_timeout_count[12:9]));
  CARRY4 next_timeout_count0_carry__2
       (.CI(next_timeout_count0_carry__1_n_0),
        .CO({NLW_next_timeout_count0_carry__2_CO_UNCONNECTED[3:1],next_timeout_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_timeout_count0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,current_timeout_count[14:13]}));
endmodule

module DemoInterconnect_interface_axi_master_0_1_interface_axi_master_v1_0_M00_AXI
   (SR,
    m00_axi_rready,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    \current_head_reg[7] ,
    current_head,
    \current_body_reg[7] ,
    \current_body_reg[7]_0 ,
    \current_body_reg[15] ,
    \current_body_reg[15]_0 ,
    \current_body_reg[23] ,
    \current_body_reg[23]_0 ,
    \current_body_reg[31] ,
    \current_body_reg[31]_0 ,
    \current_packet_reg[0] ,
    E,
    D,
    \current_body_count_reg[2] ,
    current_packet,
    current_axi_data,
    m00_axi_bready,
    Q,
    m00_axi_wstrb,
    current_init_axi_tx_reg,
    m00_axi_aclk,
    current_init_axi_rx_reg,
    out,
    m00_axi_aresetn,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    \current_body_count_reg[2]_0 ,
    current_if00_load_reg,
    \current_body_count_reg[0] ,
    \current_body_count_reg[2]_1 ,
    \current_body_count_reg[2]_2 ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    if00_send_done,
    \current_body_count_reg[2]_3 ,
    \current_body_count_reg[0]_0 ,
    \current_body_count_reg[1] ,
    \current_body_count_reg[2]_4 ,
    \current_body_count_reg[1]_0 ,
    if00_send_busy,
    m00_axi_rvalid,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_bvalid,
    m00_axi_rdata,
    \current_packet_reg[37] ,
    \current_packet_reg[38] );
  output [0:0]SR;
  output m00_axi_rready;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  output \current_head_reg[7] ;
  output current_head;
  output \current_body_reg[7] ;
  output \current_body_reg[7]_0 ;
  output \current_body_reg[15] ;
  output \current_body_reg[15]_0 ;
  output \current_body_reg[23] ;
  output \current_body_reg[23]_0 ;
  output \current_body_reg[31] ;
  output \current_body_reg[31]_0 ;
  output \current_packet_reg[0] ;
  output [0:0]E;
  output [1:0]D;
  output \current_body_count_reg[2] ;
  output current_packet;
  output current_axi_data;
  output m00_axi_bready;
  output [31:0]Q;
  output [1:0]m00_axi_wstrb;
  input current_init_axi_tx_reg;
  input m00_axi_aclk;
  input current_init_axi_rx_reg;
  input [3:0]out;
  input m00_axi_aresetn;
  input \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \current_body_count_reg[2]_0 ;
  input current_if00_load_reg;
  input \current_body_count_reg[0] ;
  input \current_body_count_reg[2]_1 ;
  input \current_body_count_reg[2]_2 ;
  input \FSM_sequential_current_state_reg[2] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input if00_send_done;
  input \current_body_count_reg[2]_3 ;
  input \current_body_count_reg[0]_0 ;
  input \current_body_count_reg[1] ;
  input \current_body_count_reg[2]_4 ;
  input \current_body_count_reg[1]_0 ;
  input if00_send_busy;
  input m00_axi_rvalid;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_bvalid;
  input [31:0]m00_axi_rdata;
  input \current_packet_reg[37] ;
  input \current_packet_reg[38] ;

  wire \/i___0/i__n_0 ;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state[3]_i_5_n_0 ;
  wire \FSM_sequential_current_state[3]_i_8_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_2_n_0 ;
  wire [31:0]Q;
  wire RXN_DONE;
  wire [0:0]SR;
  wire TXN_DONE;
  wire \__3/i__n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire current_axi_data;
  wire \current_body[31]_i_4_n_0 ;
  wire \current_body_count_reg[0] ;
  wire \current_body_count_reg[0]_0 ;
  wire \current_body_count_reg[1] ;
  wire \current_body_count_reg[1]_0 ;
  wire \current_body_count_reg[2] ;
  wire \current_body_count_reg[2]_0 ;
  wire \current_body_count_reg[2]_1 ;
  wire \current_body_count_reg[2]_2 ;
  wire \current_body_count_reg[2]_3 ;
  wire \current_body_count_reg[2]_4 ;
  wire \current_body_reg[15] ;
  wire \current_body_reg[15]_0 ;
  wire \current_body_reg[23] ;
  wire \current_body_reg[23]_0 ;
  wire \current_body_reg[31] ;
  wire \current_body_reg[31]_0 ;
  wire \current_body_reg[7] ;
  wire \current_body_reg[7]_0 ;
  wire current_head;
  wire \current_head_reg[7] ;
  wire current_if00_load_reg;
  wire current_init_axi_rx_reg;
  wire current_init_axi_tx_reg;
  wire current_packet;
  wire \current_packet[36]_i_3_n_0 ;
  wire \current_packet_reg[0] ;
  wire \current_packet_reg[37] ;
  wire \current_packet_reg[38] ;
  wire if00_send_busy;
  wire if00_send_done;
  wire init_rxn_ff;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire m00_axi_wready;
  wire [1:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  (* RTL_KEEP = "yes" *) wire [2:0]mst_exec_state;
  wire [3:0]out;
  wire \reads_data[31]_i_1_n_0 ;
  wire reads_done_i_1_n_0;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire writes_done_i_1_n_0;

  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    \/i___0/i_ 
       (.I0(init_rxn_ff),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[2]),
        .I5(mst_exec_state[1]),
        .O(\/i___0/i__n_0 ));
  LUT5 #(
    .INIT(32'hAAFFCFAA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(out[3]),
        .I1(RXN_DONE),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEEFF20F0EEFF2CF0)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(RXN_DONE),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(\current_body_count_reg[2]_4 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10001111)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(out[3]),
        .I1(\FSM_sequential_current_state_reg[2] ),
        .I2(out[0]),
        .I3(\FSM_sequential_current_state_reg[2]_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_current_state[3]_i_5_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_sequential_current_state[3]_i_5 
       (.I0(\FSM_sequential_current_state[3]_i_8_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(if00_send_done),
        .O(\FSM_sequential_current_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h11101111)) 
    \FSM_sequential_current_state[3]_i_8 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(RXN_DONE),
        .I3(TXN_DONE),
        .I4(out[2]),
        .O(\FSM_sequential_current_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ),
        .I1(\__3/i__n_0 ),
        .I2(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000110010)) 
    \FSM_sequential_mst_exec_state[0]_i_2 
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[1]),
        .I2(init_rxn_ff),
        .I3(init_txn_ff2),
        .I4(init_txn_ff),
        .I5(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\/i___0/i__n_0 ),
        .I1(\__3/i__n_0 ),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_mst_exec_state[2]_i_1 
       (.I0(m00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFCFFC4C40000C0C0)) 
    \FSM_sequential_mst_exec_state[2]_i_2 
       (.I0(m00_axi_bready),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rready),
        .I4(mst_exec_state[2]),
        .I5(mst_exec_state[2]),
        .O(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,init_write:001,op_write:010,init_read:011,op_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,init_write:001,op_write:010,init_read:011,op_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "idle:000,init_write:001,op_write:010,init_read:011,op_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ),
        .Q(mst_exec_state[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h0300FBFB)) 
    \__3/i_ 
       (.I0(m00_axi_bready),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rready),
        .I4(mst_exec_state[2]),
        .O(\__3/i__n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    axi_arvalid_i_1
       (.I0(start_single_read_reg_n_0),
        .I1(m00_axi_arvalid),
        .I2(m00_axi_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    axi_awvalid_i_1
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_awvalid_i_2
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_awvalid),
        .I2(m00_axi_awready),
        .O(axi_awvalid_i_2_n_0));
  FDRE axi_awvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_2_n_0),
        .Q(m00_axi_awvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    axi_bready_i_1
       (.I0(m00_axi_bready),
        .I1(m00_axi_bvalid),
        .O(axi_bready_i_1_n_0));
  FDRE axi_bready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(m00_axi_bready),
        .R(axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h5DFF5D5D)) 
    axi_rready_i_1
       (.I0(m00_axi_aresetn),
        .I1(init_txn_ff),
        .I2(init_txn_ff2),
        .I3(m00_axi_rready),
        .I4(m00_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m00_axi_rready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    axi_wvalid_i_1
       (.I0(start_single_write_reg_n_0),
        .I1(m00_axi_wvalid),
        .I2(m00_axi_wready),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(m00_axi_wvalid),
        .R(axi_awvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008202)) 
    \current_axi_data[31]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(out[2]),
        .I2(out[1]),
        .I3(RXN_DONE),
        .I4(out[3]),
        .I5(out[0]),
        .O(current_axi_data));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_body[15]_i_1 
       (.I0(\current_body_reg[15]_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .O(\current_body_reg[15] ));
  LUT6 #(
    .INIT(64'h2222A22200000000)) 
    \current_body[15]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\FSM_sequential_current_state_reg[0] ),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(\current_body_count_reg[0] ),
        .I4(current_if00_load_reg),
        .I5(\current_body[31]_i_4_n_0 ),
        .O(\current_body_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_body[23]_i_1 
       (.I0(\current_body_reg[23]_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .O(\current_body_reg[23] ));
  LUT6 #(
    .INIT(64'h2222A22200000000)) 
    \current_body[23]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\FSM_sequential_current_state_reg[0] ),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(\current_body_count_reg[2]_1 ),
        .I4(current_if00_load_reg),
        .I5(\current_body[31]_i_4_n_0 ),
        .O(\current_body_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_body[31]_i_1 
       (.I0(\current_body_reg[31]_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .O(\current_body_reg[31] ));
  LUT6 #(
    .INIT(64'h0000800088888888)) 
    \current_body[31]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\current_body[31]_i_4_n_0 ),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(\current_body_count_reg[2]_2 ),
        .I4(current_if00_load_reg),
        .I5(\FSM_sequential_current_state_reg[0] ),
        .O(\current_body_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h00EA00BB)) 
    \current_body[31]_i_4 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(TXN_DONE),
        .I3(out[3]),
        .I4(out[2]),
        .O(\current_body[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \current_body[7]_i_1 
       (.I0(\current_body_reg[7]_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .O(\current_body_reg[7] ));
  LUT6 #(
    .INIT(64'h2222A22200000000)) 
    \current_body[7]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\FSM_sequential_current_state_reg[0] ),
        .I2(\FSM_sequential_current_state_reg[1] ),
        .I3(\current_body_count_reg[2]_0 ),
        .I4(current_if00_load_reg),
        .I5(\current_body[31]_i_4_n_0 ),
        .O(\current_body_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h02FF020000FF00FF)) 
    \current_body_count[2]_i_5 
       (.I0(\current_body_count_reg[1]_0 ),
        .I1(if00_send_busy),
        .I2(if00_send_done),
        .I3(out[0]),
        .I4(RXN_DONE),
        .I5(out[2]),
        .O(\current_body_count_reg[2] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \current_head[7]_i_1 
       (.I0(current_head),
        .I1(out[2]),
        .I2(out[0]),
        .O(\current_head_reg[7] ));
  LUT6 #(
    .INIT(64'h000020200000020A)) 
    \current_head[7]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\current_packet[36]_i_3_n_0 ),
        .I2(out[1]),
        .I3(current_if00_load_reg),
        .I4(out[3]),
        .I5(out[2]),
        .O(current_head));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000002)) 
    \current_packet[36]_i_1 
       (.I0(m00_axi_aresetn),
        .I1(\current_packet[36]_i_3_n_0 ),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[1]),
        .O(\current_packet_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000202)) 
    \current_packet[36]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(\current_packet[36]_i_3_n_0 ),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[1]),
        .O(current_packet));
  LUT6 #(
    .INIT(64'hFE00FF00FEFFFF00)) 
    \current_packet[36]_i_3 
       (.I0(\current_body_count_reg[2]_3 ),
        .I1(\current_body_count_reg[0]_0 ),
        .I2(\current_body_count_reg[1] ),
        .I3(out[0]),
        .I4(out[1]),
        .I5(TXN_DONE),
        .O(\current_packet[36]_i_3_n_0 ));
  FDRE init_rxn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_rx_reg),
        .Q(init_rxn_ff),
        .R(SR));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_rxn_ff),
        .Q(init_txn_ff2),
        .R(SR));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_tx_reg),
        .Q(init_txn_ff),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axi_wstrb[1]_INST_0 
       (.I0(\current_packet_reg[37] ),
        .I1(\current_packet_reg[38] ),
        .O(m00_axi_wstrb[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m00_axi_wstrb[3]_INST_0 
       (.I0(\current_packet_reg[37] ),
        .I1(\current_packet_reg[38] ),
        .O(m00_axi_wstrb[1]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \reads_data[31]_i_1 
       (.I0(m00_axi_aresetn),
        .I1(mst_exec_state[2]),
        .I2(m00_axi_rready),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[1]),
        .O(\reads_data[31]_i_1_n_0 ));
  FDRE \reads_data_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \reads_data_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \reads_data_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \reads_data_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \reads_data_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \reads_data_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \reads_data_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \reads_data_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \reads_data_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \reads_data_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \reads_data_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \reads_data_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \reads_data_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \reads_data_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \reads_data_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \reads_data_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \reads_data_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \reads_data_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \reads_data_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \reads_data_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \reads_data_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \reads_data_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \reads_data_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \reads_data_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \reads_data_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \reads_data_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \reads_data_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \reads_data_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \reads_data_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \reads_data_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \reads_data_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \reads_data_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\reads_data[31]_i_1_n_0 ),
        .D(m00_axi_rdata[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFDFD02000000)) 
    reads_done_i_1
       (.I0(m00_axi_aresetn),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rready),
        .I4(mst_exec_state[2]),
        .I5(RXN_DONE),
        .O(reads_done_i_1_n_0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(RXN_DONE),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB20)) 
    start_single_read_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[2]),
        .I2(mst_exec_state[1]),
        .I3(start_single_read_reg_n_0),
        .O(start_single_read_i_1_n_0));
  FDRE start_single_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_read_i_1_n_0),
        .Q(start_single_read_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'hFD04)) 
    start_single_write_i_1
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[2]),
        .I3(start_single_write_reg_n_0),
        .O(start_single_write_i_1_n_0));
  FDRE start_single_write_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_write_i_1_n_0),
        .Q(start_single_write_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFDFD02000000)) 
    writes_done_i_1
       (.I0(m00_axi_aresetn),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[2]),
        .I3(m00_axi_bready),
        .I4(mst_exec_state[1]),
        .I5(TXN_DONE),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(TXN_DONE),
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
