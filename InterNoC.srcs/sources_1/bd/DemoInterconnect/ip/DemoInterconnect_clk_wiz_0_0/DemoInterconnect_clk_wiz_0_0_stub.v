// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Wed Oct 25 01:37:20 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Development/FPGA/InterNoC/InterNoC.srcs/sources_1/bd/DemoInterconnect/ip/DemoInterconnect_clk_wiz_0_0/DemoInterconnect_clk_wiz_0_0_stub.v
// Design      : DemoInterconnect_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DemoInterconnect_clk_wiz_0_0(aclk, uart, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="aclk,uart,reset,locked,clk_in1" */;
  output aclk;
  output uart;
  input reset;
  output locked;
  input clk_in1;
endmodule
