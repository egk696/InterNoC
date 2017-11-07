// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Nov  6 21:58:41 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DemoInterconnect_interface_axi_master_0_0_sim_netlist.v
// Design      : DemoInterconnect_interface_axi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_interface_axi_master_0_0,interface_axi_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "interface_axi_master_v1_0,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
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
  assign m00_axi_awaddr[20] = \<const0> ;
  assign m00_axi_awaddr[19] = \<const0> ;
  assign m00_axi_awaddr[18] = \<const0> ;
  assign m00_axi_awaddr[17] = \<const0> ;
  assign m00_axi_awaddr[16] = \<const0> ;
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
  assign m00_axi_wdata[31] = \<const0> ;
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \<const0> ;
  assign m00_axi_wdata[27] = \<const0> ;
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \<const0> ;
  assign m00_axi_wdata[20] = \<const0> ;
  assign m00_axi_wdata[19] = \<const0> ;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = \<const0> ;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \<const0> ;
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \<const0> ;
  assign m00_axi_wdata[2] = \<const0> ;
  assign m00_axi_wdata[1] = \<const0> ;
  assign m00_axi_wdata[0] = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interface_axi_master_v1_0 U0
       (.if00_data_in(if00_data_in[6:5]),
        .if00_data_out(if00_data_out),
        .if00_load_in(if00_load_in),
        .if00_load_out(if00_load_out),
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
        .m00_axi_wvalid(m00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interface_axi_master_v1_0
   (m00_axi_bready,
    m00_axi_rready,
    if00_data_out,
    if00_load_out,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    if00_send_done,
    if00_send_busy,
    if00_load_in,
    m00_axi_bvalid,
    m00_axi_rdata,
    if00_data_in,
    m00_axi_rvalid,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready);
  output m00_axi_bready;
  output m00_axi_rready;
  output [7:0]if00_data_out;
  output if00_load_out;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input if00_send_done;
  input if00_send_busy;
  input if00_load_in;
  input m00_axi_bvalid;
  input [31:0]m00_axi_rdata;
  input [1:0]if00_data_in;
  input m00_axi_rvalid;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;

  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
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
  wire current_body_count;
  wire \current_body_count[0]_i_1_n_0 ;
  wire \current_body_count[1]_i_1_n_0 ;
  wire \current_body_count[1]_i_3_n_0 ;
  wire \current_body_count[2]_i_1_n_0 ;
  wire \current_body_count[2]_i_4_n_0 ;
  wire \current_body_count[2]_i_6_n_0 ;
  wire \current_body_count_reg_n_0_[0] ;
  wire \current_body_count_reg_n_0_[1] ;
  wire \current_body_count_reg_n_0_[2] ;
  wire current_head;
  wire \current_head[5]_i_1_n_0 ;
  wire \current_head[6]_i_1_n_0 ;
  wire current_init_axi_tx_i_1_n_0;
  wire current_init_axi_tx_reg_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
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
  wire [1:0]if00_data_in;
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
  wire \if00_data_out_reg[7]_i_5_n_0 ;
  wire if00_load_in;
  wire if00_load_out;
  wire if00_load_out_reg_i_1_n_0;
  wire if00_load_out_reg_i_2_n_0;
  wire if00_send_busy;
  wire if00_send_done;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_0;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_5;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_6;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_7;
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
  wire m00_axi_wvalid;
  wire [2:1]next_body_count;
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
  wire [3:1]NLW_next_timeout_count0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_next_timeout_count0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00FE00FF0000FF00)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFCCFFAAFFCF00)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(current_init_axi_tx_reg_n_0),
        .I1(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I2(\current_timeout_count[14]_i_4_n_0 ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(if00_load_in),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\current_body_count_reg_n_0_[1] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(if00_send_busy),
        .O(\FSM_sequential_current_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8883)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(if00_load_in),
        .I1(\current_body_count_reg_n_0_[2] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(\current_body_count_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "st_idle:000,st_rx_head:001,st_rx_body:010,st_pack:0011,st_axi_init:011,st_axi_resp:100,st_tx_data:101,st_tx_wait:110,st_reset:111" *) 
  (* KEEP = "yes" *) 
  FDSE \FSM_sequential_current_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface_axi_master_v1_0_M00_AXI_inst_n_5),
        .Q(current_state[0]),
        .S(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* FSM_ENCODED_STATES = "st_idle:000,st_rx_head:001,st_rx_body:010,st_pack:0011,st_axi_init:011,st_axi_resp:100,st_tx_data:101,st_tx_wait:110,st_reset:111" *) 
  (* KEEP = "yes" *) 
  FDSE \FSM_sequential_current_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface_axi_master_v1_0_M00_AXI_inst_n_6),
        .Q(current_state[1]),
        .S(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* FSM_ENCODED_STATES = "st_idle:000,st_rx_head:001,st_rx_body:010,st_pack:0011,st_axi_init:011,st_axi_resp:100,st_tx_data:101,st_tx_wait:110,st_reset:111" *) 
  (* KEEP = "yes" *) 
  FDSE \FSM_sequential_current_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface_axi_master_v1_0_M00_AXI_inst_n_7),
        .Q(current_state[2]),
        .S(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \current_axi_data[31]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(m00_axi_aresetn),
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
  LUT6 #(
    .INIT(64'h0407FFFF3C3F0000)) 
    \current_body_count[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(L[0]),
        .I4(current_body_count),
        .I5(\current_body_count_reg_n_0_[0] ),
        .O(\current_body_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_body_count[1]_i_1 
       (.I0(next_body_count[1]),
        .I1(current_body_count),
        .I2(\current_body_count_reg_n_0_[1] ),
        .O(\current_body_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h308030B330B33080)) 
    \current_body_count[1]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(\current_body_count[1]_i_3_n_0 ),
        .I3(current_state[1]),
        .I4(L[0]),
        .I5(L[1]),
        .O(next_body_count[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \current_body_count[1]_i_3 
       (.I0(\current_body_count_reg_n_0_[1] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .O(\current_body_count[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current_body_count[2]_i_1 
       (.I0(next_body_count[2]),
        .I1(current_body_count),
        .I2(\current_body_count_reg_n_0_[2] ),
        .O(\current_body_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h30B3308030803080)) 
    \current_body_count[2]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(\current_body_count[2]_i_4_n_0 ),
        .I3(current_state[1]),
        .I4(L[1]),
        .I5(L[0]),
        .O(next_body_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \current_body_count[2]_i_4 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[1] ),
        .O(\current_body_count[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDDF)) 
    \current_body_count[2]_i_6 
       (.I0(current_state[2]),
        .I1(if00_send_busy),
        .I2(\current_body_count_reg_n_0_[1] ),
        .I3(\current_body_count_reg_n_0_[0] ),
        .I4(\current_body_count_reg_n_0_[2] ),
        .O(\current_body_count[2]_i_6_n_0 ));
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
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_head[5]_i_1 
       (.I0(if00_data_in[0]),
        .I1(current_state[2]),
        .I2(current_head),
        .I3(L[0]),
        .O(\current_head[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \current_head[6]_i_1 
       (.I0(if00_data_in[1]),
        .I1(current_state[2]),
        .I2(current_head),
        .I3(L[1]),
        .O(\current_head[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80800200)) 
    \current_head[6]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(if00_load_in),
        .I4(current_state[0]),
        .O(current_head));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\current_head[5]_i_1_n_0 ),
        .Q(L[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_head_reg[6] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\current_head[6]_i_1_n_0 ),
        .Q(L[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h3FFF4000)) 
    current_init_axi_tx_i_1
       (.I0(current_state[2]),
        .I1(m00_axi_aresetn),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_init_axi_tx_reg_n_0),
        .O(current_init_axi_tx_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_init_axi_tx_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_tx_i_1_n_0),
        .Q(current_init_axi_tx_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \current_timeout_count[0]_i_1 
       (.I0(current_timeout_count[0]),
        .O(\current_timeout_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[10]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[10]),
        .O(\current_timeout_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[11]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[11]),
        .O(\current_timeout_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[12]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[12]),
        .O(\current_timeout_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[13]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[13]),
        .O(\current_timeout_count[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \current_timeout_count[14]_i_1 
       (.I0(m00_axi_aresetn),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .O(\current_timeout_count[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888020000000000)) 
    \current_timeout_count[14]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(current_state[0]),
        .I2(if00_load_in),
        .I3(\if00_data_out_reg[7]_i_5_n_0 ),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(current_timeout_count_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[14]_i_3 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[14]),
        .O(\current_timeout_count[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \current_timeout_count[14]_i_4 
       (.I0(\current_timeout_count[14]_i_5_n_0 ),
        .I1(\current_timeout_count[14]_i_6_n_0 ),
        .I2(current_timeout_count[13]),
        .I3(current_timeout_count[14]),
        .I4(current_timeout_count[0]),
        .I5(\current_timeout_count[14]_i_7_n_0 ),
        .O(\current_timeout_count[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_5 
       (.I0(current_timeout_count[6]),
        .I1(current_timeout_count[5]),
        .I2(current_timeout_count[8]),
        .I3(current_timeout_count[7]),
        .O(\current_timeout_count[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_6 
       (.I0(current_timeout_count[2]),
        .I1(current_timeout_count[1]),
        .I2(current_timeout_count[4]),
        .I3(current_timeout_count[3]),
        .O(\current_timeout_count[14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \current_timeout_count[14]_i_7 
       (.I0(current_timeout_count[10]),
        .I1(current_timeout_count[9]),
        .I2(current_timeout_count[12]),
        .I3(current_timeout_count[11]),
        .O(\current_timeout_count[14]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[1]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[1]),
        .O(\current_timeout_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[2]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[2]),
        .O(\current_timeout_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[3]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[3]),
        .O(\current_timeout_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[4]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[4]),
        .O(\current_timeout_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[5]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[5]),
        .O(\current_timeout_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[6]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[6]),
        .O(\current_timeout_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[7]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[7]),
        .O(\current_timeout_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[8]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
        .I1(data0[8]),
        .O(\current_timeout_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_timeout_count[9]_i_1 
       (.I0(\current_timeout_count[14]_i_4_n_0 ),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[0]_i_1 
       (.I0(current_state[2]),
        .I1(data3[0]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[0]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[1]_i_1 
       (.I0(current_state[2]),
        .I1(data3[1]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[1]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[2]_i_1 
       (.I0(current_state[2]),
        .I1(data3[2]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[2]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[3]_i_1 
       (.I0(current_state[2]),
        .I1(data3[3]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[3]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[4]_i_1 
       (.I0(current_state[2]),
        .I1(data3[4]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[4]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[5]_i_1 
       (.I0(current_state[2]),
        .I1(data3[5]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[5]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[6]_i_1 
       (.I0(current_state[2]),
        .I1(data3[6]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[6]_i_2_n_0 ),
        .I4(current_state[1]),
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
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \if00_data_out_reg[7]_i_1 
       (.I0(current_state[2]),
        .I1(data3[7]),
        .I2(\if00_data_out_reg[7]_i_3_n_0 ),
        .I3(\if00_data_out_reg[7]_i_4_n_0 ),
        .I4(current_state[1]),
        .O(\if00_data_out_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF020000F)) 
    \if00_data_out_reg[7]_i_2 
       (.I0(\if00_data_out_reg[7]_i_5_n_0 ),
        .I1(if00_send_busy),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(current_state[2]),
        .O(\if00_data_out_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \if00_data_out_reg[7]_i_3 
       (.I0(\current_body_count_reg_n_0_[2] ),
        .I1(\current_body_count_reg_n_0_[1] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .O(\if00_data_out_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \if00_data_out_reg[7]_i_4 
       (.I0(\current_axi_data_reg_n_0_[7] ),
        .I1(data1[7]),
        .I2(data2[7]),
        .I3(\current_body_count_reg_n_0_[2] ),
        .I4(\current_body_count_reg_n_0_[0] ),
        .I5(\current_body_count_reg_n_0_[1] ),
        .O(\if00_data_out_reg[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \if00_data_out_reg[7]_i_5 
       (.I0(\current_body_count_reg_n_0_[1] ),
        .I1(\current_body_count_reg_n_0_[0] ),
        .I2(\current_body_count_reg_n_0_[2] ),
        .O(\if00_data_out_reg[7]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    if00_load_out_reg
       (.CLR(1'b0),
        .D(if00_load_out_reg_i_1_n_0),
        .G(if00_load_out_reg_i_2_n_0),
        .GE(1'b1),
        .Q(if00_load_out));
  LUT6 #(
    .INIT(64'h0000555400000000)) 
    if00_load_out_reg_i_1
       (.I0(current_state[1]),
        .I1(\current_body_count_reg_n_0_[2] ),
        .I2(\current_body_count_reg_n_0_[0] ),
        .I3(\current_body_count_reg_n_0_[1] ),
        .I4(if00_send_busy),
        .I5(current_state[2]),
        .O(if00_load_out_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hA1)) 
    if00_load_out_reg_i_2
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(if00_load_out_reg_i_2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interface_axi_master_v1_0_M00_AXI interface_axi_master_v1_0_M00_AXI_inst
       (.\FSM_sequential_current_state_reg[0] (interface_axi_master_v1_0_M00_AXI_inst_n_5),
        .\FSM_sequential_current_state_reg[1] (interface_axi_master_v1_0_M00_AXI_inst_n_6),
        .\FSM_sequential_current_state_reg[2] (interface_axi_master_v1_0_M00_AXI_inst_n_7),
        .\FSM_sequential_current_state_reg[2]_0 (\current_body_count[2]_i_6_n_0 ),
        .\FSM_sequential_mst_exec_state_reg[0]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_0),
        .Q(RXN_DATA),
        .current_axi_data(current_axi_data),
        .current_body_count(current_body_count),
        .\current_body_count_reg[1] (\FSM_sequential_current_state[2]_i_5_n_0 ),
        .\current_body_count_reg[1]_0 (\if00_data_out_reg[7]_i_5_n_0 ),
        .\current_body_count_reg[2] (\FSM_sequential_current_state[1]_i_2_n_0 ),
        .\current_body_count_reg[2]_0 (\FSM_sequential_current_state[2]_i_6_n_0 ),
        .\current_body_count_reg[2]_1 (\current_body_count_reg_n_0_[2] ),
        .current_init_axi_tx_reg(current_init_axi_tx_reg_n_0),
        .current_init_axi_tx_reg_0(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .if00_load_in(if00_load_in),
        .if00_send_done(if00_send_done),
        .in0(current_state),
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
        .m00_axi_wvalid(m00_axi_wvalid),
        .out(current_state));
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interface_axi_master_v1_0_M00_AXI
   (\FSM_sequential_mst_exec_state_reg[0]_0 ,
    m00_axi_rready,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[2] ,
    current_body_count,
    current_axi_data,
    m00_axi_bready,
    Q,
    current_init_axi_tx_reg,
    m00_axi_aclk,
    m00_axi_aresetn,
    out,
    current_init_axi_tx_reg_0,
    in0,
    \current_body_count_reg[2] ,
    if00_send_done,
    \current_body_count_reg[2]_0 ,
    \current_body_count_reg[2]_1 ,
    \current_body_count_reg[1] ,
    if00_load_in,
    \current_body_count_reg[1]_0 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    m00_axi_rvalid,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_bvalid,
    m00_axi_rdata);
  output \FSM_sequential_mst_exec_state_reg[0]_0 ;
  output m00_axi_rready;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[2] ;
  output current_body_count;
  output current_axi_data;
  output m00_axi_bready;
  output [31:0]Q;
  input current_init_axi_tx_reg;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input [2:0]out;
  input current_init_axi_tx_reg_0;
  input [2:0]in0;
  input \current_body_count_reg[2] ;
  input if00_send_done;
  input \current_body_count_reg[2]_0 ;
  input \current_body_count_reg[2]_1 ;
  input \current_body_count_reg[1] ;
  input if00_load_in;
  input \current_body_count_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input m00_axi_rvalid;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_bvalid;
  input [31:0]m00_axi_rdata;

  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state_reg[0]_0 ;
  wire [31:0]Q;
  wire RXN_DONE;
  wire TXN_DONE;
  wire \__3/i__n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire current_axi_data;
  wire current_body_count;
  wire \current_body_count[2]_i_5_n_0 ;
  wire \current_body_count_reg[1] ;
  wire \current_body_count_reg[1]_0 ;
  wire \current_body_count_reg[2] ;
  wire \current_body_count_reg[2]_0 ;
  wire \current_body_count_reg[2]_1 ;
  wire current_init_axi_tx_reg;
  wire current_init_axi_tx_reg_0;
  wire if00_load_in;
  wire if00_send_done;
  wire [2:0]in0;
  wire init_txn_ff;
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
  wire m00_axi_wvalid;
  (* RTL_KEEP = "yes" *) wire [2:0]mst_exec_state;
  wire [2:0]out;
  wire \reads_data[31]_i_1_n_0 ;
  wire reads_done_i_1_n_0;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;
  wire writes_done_i_1_n_0;

  LUT6 #(
    .INIT(64'h4F554FFF40554000)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I3(out[2]),
        .I4(current_init_axi_tx_reg_0),
        .I5(in0[0]),
        .O(\FSM_sequential_current_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(out[1]),
        .I1(RXN_DONE),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\current_body_count_reg[2] ),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(out[2]),
        .I3(current_init_axi_tx_reg_0),
        .I4(in0[1]),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT5 #(
    .INIT(32'hBABF8A80)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(out[2]),
        .I3(current_init_axi_tx_reg_0),
        .I4(in0[2]),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFECCFECCFECCCEC0)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(RXN_DONE),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(\current_body_count_reg[2]_1 ),
        .I5(\current_body_count_reg[1] ),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(if00_send_done),
        .I1(out[1]),
        .I2(\current_body_count_reg[2]_0 ),
        .I3(out[0]),
        .I4(RXN_DONE),
        .I5(TXN_DONE),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[2]),
        .I1(mst_exec_state[1]),
        .I2(init_txn_ff),
        .I3(mst_exec_state[0]),
        .I4(\__3/i__n_0 ),
        .I5(mst_exec_state[0]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFF343400003030)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(m00_axi_bready),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rready),
        .I4(mst_exec_state[2]),
        .I5(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_mst_exec_state[2]_i_1 
       (.I0(m00_axi_aresetn),
        .O(\FSM_sequential_mst_exec_state_reg[0]_0 ));
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
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:000,init_write:001,op_write:010,init_read:011,op_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:000,init_write:001,op_write:010,init_read:011,op_read:100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ),
        .Q(mst_exec_state[2]),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
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
  LUT2 #(
    .INIT(4'hB)) 
    axi_awvalid_i_1
       (.I0(init_txn_ff),
        .I1(m00_axi_aresetn),
        .O(axi_awvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  LUT4 #(
    .INIT(16'hDFDD)) 
    axi_rready_i_1
       (.I0(m00_axi_aresetn),
        .I1(init_txn_ff),
        .I2(m00_axi_rready),
        .I3(m00_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m00_axi_rready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  LUT5 #(
    .INIT(32'h88200000)) 
    \current_axi_data[31]_i_2 
       (.I0(m00_axi_aresetn),
        .I1(out[0]),
        .I2(RXN_DONE),
        .I3(out[1]),
        .I4(out[2]),
        .O(current_axi_data));
  LUT6 #(
    .INIT(64'hA80808A8A8A8A8A8)) 
    \current_body_count[2]_i_3 
       (.I0(m00_axi_aresetn),
        .I1(\current_body_count[2]_i_5_n_0 ),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(current_body_count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F800080)) 
    \current_body_count[2]_i_5 
       (.I0(if00_load_in),
        .I1(\current_body_count_reg[1]_0 ),
        .I2(out[1]),
        .I3(out[2]),
        .I4(RXN_DONE),
        .O(\current_body_count[2]_i_5_n_0 ));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(current_init_axi_tx_reg),
        .Q(init_txn_ff),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
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
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
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
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
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
