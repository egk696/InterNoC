// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Oct 02 16:37:25 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Development/FPGA/InterNoC/InterNoC.srcs/sources_1/bd/DemoInterconnect/ip/DemoInterconnect_interface_axi_master_0_0/DemoInterconnect_interface_axi_master_0_0_sim_netlist.v
// Design      : DemoInterconnect_interface_axi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_interface_axi_master_0_0,interface_axi_master_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "interface_axi_master_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module DemoInterconnect_interface_axi_master_0_0
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) input m00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]if00_data_in;
  wire [7:0]if00_data_out;
  wire if00_load_in;
  wire if00_load_out;
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
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  DemoInterconnect_interface_axi_master_0_0_interface_axi_master_v1_0 U0
       (.Q({\^m00_axi_araddr ,m00_axi_wdata}),
        .if00_data_in(if00_data_in),
        .if00_data_out(if00_data_out),
        .if00_load_in(if00_load_in),
        .if00_load_out(if00_load_out),
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

(* ORIG_REF_NAME = "interface_axi_master_v1_0" *) 
module DemoInterconnect_interface_axi_master_0_0_interface_axi_master_v1_0
   (m00_axi_bready,
    m00_axi_rready,
    Q,
    if00_data_out,
    if00_load_out,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    m00_axi_aresetn,
    m00_axi_aclk,
    if00_load_in,
    m00_axi_bvalid,
    if00_data_in,
    if00_send_done,
    m00_axi_rdata,
    m00_axi_rvalid,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready);
  output m00_axi_bready;
  output m00_axi_rready;
  output [36:0]Q;
  output [7:0]if00_data_out;
  output if00_load_out;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  input m00_axi_aresetn;
  input m00_axi_aclk;
  input if00_load_in;
  input m00_axi_bvalid;
  input [7:0]if00_data_in;
  input if00_send_done;
  input [31:0]m00_axi_rdata;
  input m00_axi_rvalid;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;

  wire \/i___0_n_0 ;
  wire \/i___1_n_0 ;
  wire \/i__n_0 ;
  wire [36:0]Q;
  wire RXN_DONE;
  wire [39:37]data_o;
  wire done_o;
  wire [7:0]if00_data_in;
  wire [7:0]if00_data_out;
  wire if00_load_in;
  wire if00_load_out;
  wire if00_send_done;
  (* RTL_KEEP = "yes" *) wire [1:0]ifcomm_state;
  wire ifcomm_state1;
  wire init_packet_rx_reg_n_0;
  wire init_packet_tx_reg_n_0;
  wire interface2packet_inst_n_1;
  wire interface2packet_inst_n_2;
  wire interface2packet_inst_n_43;
  wire interface2packet_inst_n_44;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_0;
  wire interface_axi_master_v1_0_M00_AXI_inst_n_6;
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
  wire packet2interface_inst_n_0;
  wire [31:0]reads_data;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \/i_ 
       (.I0(ifcomm_state[1]),
        .I1(data_o[37]),
        .I2(data_o[39]),
        .I3(data_o[38]),
        .I4(init_packet_tx_reg_n_0),
        .I5(init_packet_rx_reg_n_0),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \/i___0 
       (.I0(ifcomm_state[1]),
        .I1(data_o[38]),
        .I2(data_o[37]),
        .I3(data_o[39]),
        .I4(init_packet_tx_reg_n_0),
        .I5(init_packet_rx_reg_n_0),
        .O(\/i___0_n_0 ));
  LUT4 #(
    .INIT(16'hCCB8)) 
    \/i___1 
       (.I0(done_o),
        .I1(ifcomm_state[0]),
        .I2(if00_load_in),
        .I3(ifcomm_state[1]),
        .O(\/i___1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_ifcomm_state[1]_i_3 
       (.I0(init_packet_tx_reg_n_0),
        .I1(init_packet_rx_reg_n_0),
        .O(ifcomm_state1));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_ifcomm_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface2packet_inst_n_2),
        .Q(ifcomm_state[0]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_ifcomm_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface2packet_inst_n_1),
        .Q(ifcomm_state[1]),
        .R(interface_axi_master_v1_0_M00_AXI_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_packet_rx_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface2packet_inst_n_43),
        .Q(init_packet_rx_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    init_packet_tx_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(interface2packet_inst_n_44),
        .Q(init_packet_tx_reg_n_0),
        .R(1'b0));
  DemoInterconnect_interface_axi_master_0_0_serial2parallel interface2packet_inst
       (.\FSM_sequential_ifcomm_state_reg[0] (interface2packet_inst_n_2),
        .\FSM_sequential_ifcomm_state_reg[1] (interface2packet_inst_n_1),
        .\FSM_sequential_ifcomm_state_reg[1]_0 (\/i__n_0 ),
        .\FSM_sequential_ifcomm_state_reg[1]_1 (\/i___0_n_0 ),
        .Q({data_o,Q}),
        .done_o(done_o),
        .if00_data_in(if00_data_in),
        .if00_load_in(if00_load_in),
        .ifcomm_state1(ifcomm_state1),
        .in0(ifcomm_state),
        .init_packet_rx_reg(interface2packet_inst_n_43),
        .init_packet_rx_reg_0(init_packet_rx_reg_n_0),
        .init_packet_tx_reg(interface2packet_inst_n_44),
        .init_packet_tx_reg_0(init_packet_tx_reg_n_0),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .out(ifcomm_state),
        .rx_done_reg_0(\/i___1_n_0 ));
  DemoInterconnect_interface_axi_master_0_0_interface_axi_master_v1_0_M00_AXI interface_axi_master_v1_0_M00_AXI_inst
       (.E(interface_axi_master_v1_0_M00_AXI_inst_n_6),
        .\FSM_sequential_mst_exec_state_reg[0]_0 (interface_axi_master_v1_0_M00_AXI_inst_n_0),
        .Q(reads_data),
        .RXN_DONE(RXN_DONE),
        .init_packet_rx_reg(init_packet_rx_reg_n_0),
        .init_packet_tx_reg(init_packet_tx_reg_n_0),
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
        .sending_reg(packet2interface_inst_n_0));
  DemoInterconnect_interface_axi_master_0_0_parallel2serial packet2interface_inst
       (.D(reads_data),
        .E(interface_axi_master_v1_0_M00_AXI_inst_n_6),
        .RXN_DONE(RXN_DONE),
        .if00_data_out(if00_data_out),
        .if00_load_out(if00_load_out),
        .if00_send_done(if00_send_done),
        .m00_axi_aclk(m00_axi_aclk),
        .\shift_count_reg[2]_0 (packet2interface_inst_n_0));
endmodule

(* ORIG_REF_NAME = "interface_axi_master_v1_0_M00_AXI" *) 
module DemoInterconnect_interface_axi_master_0_0_interface_axi_master_v1_0_M00_AXI
   (\FSM_sequential_mst_exec_state_reg[0]_0 ,
    m00_axi_rready,
    RXN_DONE,
    m00_axi_awvalid,
    m00_axi_wvalid,
    m00_axi_arvalid,
    E,
    m00_axi_bready,
    Q,
    init_packet_tx_reg,
    m00_axi_aclk,
    init_packet_rx_reg,
    m00_axi_aresetn,
    sending_reg,
    m00_axi_awready,
    m00_axi_wready,
    m00_axi_arready,
    m00_axi_bvalid,
    m00_axi_rdata,
    m00_axi_rvalid);
  output \FSM_sequential_mst_exec_state_reg[0]_0 ;
  output m00_axi_rready;
  output RXN_DONE;
  output m00_axi_awvalid;
  output m00_axi_wvalid;
  output m00_axi_arvalid;
  output [0:0]E;
  output m00_axi_bready;
  output [31:0]Q;
  input init_packet_tx_reg;
  input m00_axi_aclk;
  input init_packet_rx_reg;
  input m00_axi_aresetn;
  input sending_reg;
  input m00_axi_awready;
  input m00_axi_wready;
  input m00_axi_arready;
  input m00_axi_bvalid;
  input [31:0]m00_axi_rdata;
  input m00_axi_rvalid;

  wire [0:0]E;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[0]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_sequential_mst_exec_state_reg[0]_0 ;
  wire [31:0]Q;
  wire RXN_DONE;
  wire \__1/i__n_0 ;
  wire \__2/i__n_0 ;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_awvalid_i_2_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire init_packet_rx_reg;
  wire init_packet_tx_reg;
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
  wire m00_axi_wvalid;
  (* RTL_KEEP = "yes" *) wire [2:0]mst_exec_state;
  wire \reads_data[31]_i_1_n_0 ;
  wire reads_done_i_1_n_0;
  wire sending_reg;
  wire start_single_read_i_1_n_0;
  wire start_single_read_reg_n_0;
  wire start_single_write_i_1_n_0;
  wire start_single_write_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[0]_i_2_n_0 ),
        .I1(\__1/i__n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\__2/i__n_0 ),
        .I1(\__1/i__n_0 ),
        .I2(mst_exec_state[1]),
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
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[2]_i_2_n_0 ),
        .Q(mst_exec_state[2]),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0300FBFB)) 
    \__1/i_ 
       (.I0(m00_axi_bready),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axi_rready),
        .I4(mst_exec_state[2]),
        .O(\__1/i__n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF02)) 
    \__2/i_ 
       (.I0(init_rxn_ff),
        .I1(init_txn_ff2),
        .I2(init_txn_ff),
        .I3(mst_exec_state[0]),
        .I4(mst_exec_state[2]),
        .I5(mst_exec_state[1]),
        .O(\__2/i__n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  FDRE init_rxn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_packet_rx_reg),
        .Q(init_rxn_ff),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_rxn_ff),
        .Q(init_txn_ff2),
        .R(\FSM_sequential_mst_exec_state_reg[0]_0 ));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_packet_tx_reg),
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
  LUT2 #(
    .INIT(4'h2)) 
    \send_data[31]_i_1 
       (.I0(RXN_DONE),
        .I1(sending_reg),
        .O(E));
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
endmodule

(* ORIG_REF_NAME = "parallel2serial" *) 
module DemoInterconnect_interface_axi_master_0_0_parallel2serial
   (\shift_count_reg[2]_0 ,
    if00_load_out,
    if00_data_out,
    m00_axi_aclk,
    if00_send_done,
    RXN_DONE,
    E,
    D);
  output \shift_count_reg[2]_0 ;
  output if00_load_out;
  output [7:0]if00_data_out;
  input m00_axi_aclk;
  input if00_send_done;
  input RXN_DONE;
  input [0:0]E;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire RXN_DONE;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire [7:0]if00_data_out;
  wire if00_load_out;
  wire if00_send_done;
  wire m00_axi_aclk;
  wire \send_data_reg_n_0_[0] ;
  wire \send_data_reg_n_0_[1] ;
  wire \send_data_reg_n_0_[2] ;
  wire \send_data_reg_n_0_[3] ;
  wire \send_data_reg_n_0_[4] ;
  wire \send_data_reg_n_0_[5] ;
  wire \send_data_reg_n_0_[6] ;
  wire \send_data_reg_n_0_[7] ;
  wire sending_i_1_n_0;
  wire [2:0]shift_count;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_count_reg[2]_0 ;
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
  wire ss_o;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    if00_load_out_INST_0
       (.I0(ss_o),
        .O(if00_load_out));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[0] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\send_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[10] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[11] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[12] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[13] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[14] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[15] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[15]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[16] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[16]),
        .Q(data2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[17] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[17]),
        .Q(data2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[18] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[18]),
        .Q(data2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[19] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[19]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[1] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\send_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[20] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[20]),
        .Q(data2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[21] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[21]),
        .Q(data2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[22] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[22]),
        .Q(data2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[23] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[23]),
        .Q(data2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[24] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[24]),
        .Q(data3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[25] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[25]),
        .Q(data3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[26] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[26]),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[27] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[27]),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[28] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[28]),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[29] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[29]),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[2] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\send_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[30] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[30]),
        .Q(data3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[31] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[31]),
        .Q(data3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[3] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\send_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[4] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\send_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[5] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\send_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[6] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\send_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[7] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\send_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[8] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \send_data_reg[9] 
       (.C(m00_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(data1[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    sending_i_1
       (.I0(tx_done_reg_n_0),
        .I1(\shift_count_reg[2]_0 ),
        .I2(RXN_DONE),
        .O(sending_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sending_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(sending_i_1_n_0),
        .Q(\shift_count_reg[2]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \shift_count[0]_i_1 
       (.I0(tx_done_reg_n_0),
        .I1(\shift_count_reg[2]_0 ),
        .I2(if00_send_done),
        .I3(shift_count[0]),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \shift_count[1]_i_1 
       (.I0(shift_count[0]),
        .I1(tx_done_reg_n_0),
        .I2(\shift_count_reg[2]_0 ),
        .I3(if00_send_done),
        .I4(shift_count[1]),
        .O(\shift_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \shift_count[2]_i_1 
       (.I0(shift_count[0]),
        .I1(shift_count[1]),
        .I2(tx_done_reg_n_0),
        .I3(\shift_count_reg[2]_0 ),
        .I4(if00_send_done),
        .I5(shift_count[2]),
        .O(\shift_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(shift_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(shift_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_count_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(shift_count[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
    .INIT(8'hF7)) 
    \shift_o[7]_i_1 
       (.I0(if00_send_done),
        .I1(\shift_count_reg[2]_0 ),
        .I2(tx_done_reg_n_0),
        .O(\shift_o[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[0]_i_1_n_0 ),
        .Q(if00_data_out[0]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[1]_i_1_n_0 ),
        .Q(if00_data_out[1]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[2]_i_1_n_0 ),
        .Q(if00_data_out[2]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[3]_i_1_n_0 ),
        .Q(if00_data_out[3]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[4]_i_1_n_0 ),
        .Q(if00_data_out[4]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[5] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[5]_i_1_n_0 ),
        .Q(if00_data_out[5]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[6] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[6]_i_1_n_0 ),
        .Q(if00_data_out[6]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE \shift_o_reg[7] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[7]_i_2_n_0 ),
        .Q(if00_data_out[7]),
        .R(\shift_o[7]_i_1_n_0 ));
  FDRE ss_o_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_o[7]_i_1_n_0 ),
        .Q(ss_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    tx_done_i_1
       (.I0(shift_count[1]),
        .I1(shift_count[0]),
        .I2(shift_count[2]),
        .I3(tx_done_reg_n_0),
        .I4(\shift_count_reg[2]_0 ),
        .I5(if00_send_done),
        .O(tx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "serial2parallel" *) 
module DemoInterconnect_interface_axi_master_0_0_serial2parallel
   (done_o,
    \FSM_sequential_ifcomm_state_reg[1] ,
    \FSM_sequential_ifcomm_state_reg[0] ,
    Q,
    init_packet_rx_reg,
    init_packet_tx_reg,
    if00_load_in,
    m00_axi_aclk,
    out,
    ifcomm_state1,
    rx_done_reg_0,
    in0,
    \FSM_sequential_ifcomm_state_reg[1]_0 ,
    m00_axi_aresetn,
    init_packet_rx_reg_0,
    \FSM_sequential_ifcomm_state_reg[1]_1 ,
    init_packet_tx_reg_0,
    if00_data_in);
  output done_o;
  output \FSM_sequential_ifcomm_state_reg[1] ;
  output \FSM_sequential_ifcomm_state_reg[0] ;
  output [39:0]Q;
  output init_packet_rx_reg;
  output init_packet_tx_reg;
  input if00_load_in;
  input m00_axi_aclk;
  input [1:0]out;
  input ifcomm_state1;
  input rx_done_reg_0;
  input [1:0]in0;
  input \FSM_sequential_ifcomm_state_reg[1]_0 ;
  input m00_axi_aresetn;
  input init_packet_rx_reg_0;
  input \FSM_sequential_ifcomm_state_reg[1]_1 ;
  input init_packet_tx_reg_0;
  input [7:0]if00_data_in;

  wire \FSM_sequential_ifcomm_state[1]_i_2_n_0 ;
  wire \FSM_sequential_ifcomm_state_reg[0] ;
  wire \FSM_sequential_ifcomm_state_reg[1] ;
  wire \FSM_sequential_ifcomm_state_reg[1]_0 ;
  wire \FSM_sequential_ifcomm_state_reg[1]_1 ;
  wire [39:0]Q;
  wire done_o;
  wire [7:0]if00_data_in;
  wire if00_load_in;
  wire ifcomm_state1;
  wire [1:0]in0;
  wire init_packet_rx_reg;
  wire init_packet_rx_reg_0;
  wire init_packet_tx_reg;
  wire init_packet_tx_reg_0;
  wire init_rx_ff;
  wire init_rx_ff2;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [1:0]out;
  wire rx_done_i_1_n_0;
  wire rx_done_reg_0;
  wire rx_en;
  wire rx_en_i_1_n_0;
  wire [2:0]shift_count;
  wire \shift_count[0]_i_1_n_0 ;
  wire \shift_count[1]_i_1_n_0 ;
  wire \shift_count[2]_i_1_n_0 ;
  wire \shift_data[36]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'h505570FF50554000)) 
    \FSM_sequential_ifcomm_state[0]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_ifcomm_state[1]_i_2_n_0 ),
        .I2(ifcomm_state1),
        .I3(out[1]),
        .I4(rx_done_reg_0),
        .I5(in0[0]),
        .O(\FSM_sequential_ifcomm_state_reg[0] ));
  LUT6 #(
    .INIT(64'h50AA70FF50AA4000)) 
    \FSM_sequential_ifcomm_state[1]_i_1 
       (.I0(out[0]),
        .I1(\FSM_sequential_ifcomm_state[1]_i_2_n_0 ),
        .I2(ifcomm_state1),
        .I3(out[1]),
        .I4(rx_done_reg_0),
        .I5(in0[1]),
        .O(\FSM_sequential_ifcomm_state_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_ifcomm_state[1]_i_2 
       (.I0(Q[38]),
        .I1(Q[39]),
        .O(\FSM_sequential_ifcomm_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    init_packet_rx_i_1
       (.I0(out[0]),
        .I1(\FSM_sequential_ifcomm_state_reg[1]_0 ),
        .I2(m00_axi_aresetn),
        .I3(init_packet_rx_reg_0),
        .O(init_packet_rx_reg));
  LUT4 #(
    .INIT(16'h1F10)) 
    init_packet_tx_i_1
       (.I0(out[0]),
        .I1(\FSM_sequential_ifcomm_state_reg[1]_1 ),
        .I2(m00_axi_aresetn),
        .I3(init_packet_tx_reg_0),
        .O(init_packet_tx_reg));
  FDRE #(
    .INIT(1'b0)) 
    init_rx_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_rx_ff),
        .Q(init_rx_ff2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    init_rx_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(if00_load_in),
        .Q(init_rx_ff),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAB0000)) 
    rx_done_i_1
       (.I0(done_o),
        .I1(shift_count[1]),
        .I2(shift_count[0]),
        .I3(shift_count[2]),
        .I4(rx_en),
        .O(rx_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(rx_done_i_1_n_0),
        .Q(done_o),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rx_en_i_1
       (.I0(init_rx_ff),
        .I1(init_rx_ff2),
        .O(rx_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_en_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(rx_en_i_1_n_0),
        .Q(rx_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0FE0)) 
    \shift_count[0]_i_1 
       (.I0(shift_count[2]),
        .I1(shift_count[1]),
        .I2(rx_en),
        .I3(shift_count[0]),
        .O(\shift_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCF20)) 
    \shift_count[1]_i_1 
       (.I0(shift_count[2]),
        .I1(shift_count[0]),
        .I2(rx_en),
        .I3(shift_count[1]),
        .O(\shift_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \shift_count[2]_i_1 
       (.I0(shift_count[0]),
        .I1(shift_count[1]),
        .I2(rx_en),
        .I3(shift_count[2]),
        .O(\shift_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_count_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[0]_i_1_n_0 ),
        .Q(shift_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_count_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[1]_i_1_n_0 ),
        .Q(shift_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_count_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\shift_count[2]_i_1_n_0 ),
        .Q(shift_count[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_data[36]_i_1 
       (.I0(rx_en),
        .I1(done_o),
        .O(\shift_data[36]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[10] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[11] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[12] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[4]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[13] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[5]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[14] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[6]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[15] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[7]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[16] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[8]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[17] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[9]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[18] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[10]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[19] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[11]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[20] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[12]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[21] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[13]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[22] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[14]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[23] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[15]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[24] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[16]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[25] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[17]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[26] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[18]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[27] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[19]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[28] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[20]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[29] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[21]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[30] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[22]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[31] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[23]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[32] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[24]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[33] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[25]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[34] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[26]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[35] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[27]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[36] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[28]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[37] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[29]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[38] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[30]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[39] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[31]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(if00_data_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[0]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_data_reg[9] 
       (.C(m00_axi_aclk),
        .CE(\shift_data[36]_i_1_n_0 ),
        .D(Q[1]),
        .Q(Q[9]),
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
