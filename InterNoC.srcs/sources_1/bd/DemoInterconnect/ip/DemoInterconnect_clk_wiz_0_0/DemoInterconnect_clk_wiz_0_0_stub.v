// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Fri Oct 06 17:34:09 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Development/FPGA/InterNoC/InterNoC.srcs/sources_1/bd/DemoInterconnect/ip/DemoInterconnect_clk_wiz_0_0/DemoInterconnect_clk_wiz_0_0_stub.v
// Design      : DemoInterconnect_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DemoInterconnect_clk_wiz_0_0(aclk, uart, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="aclk,uart,resetn,locked,clk_in1" */;
  output aclk;
  output uart;
  input resetn;
  output locked;
  input clk_in1;
endmodule
