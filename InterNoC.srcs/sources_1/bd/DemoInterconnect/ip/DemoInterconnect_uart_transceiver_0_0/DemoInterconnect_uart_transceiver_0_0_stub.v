// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Nov 17 14:49:55 2017
// Host        : egk-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top DemoInterconnect_uart_transceiver_0_0 -prefix
//               DemoInterconnect_uart_transceiver_0_0_ DemoInterconnect_uart_transceiver_0_0_stub.v
// Design      : DemoInterconnect_uart_transceiver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart_top,Vivado 2017.3" *)
module DemoInterconnect_uart_transceiver_0_0(i_Clk, i_RX_Serial, o_RX_Done, o_RX_Byte, 
  i_TX_Load, i_TX_Byte, o_TX_Active, o_TX_Serial, o_TX_Done)
/* synthesis syn_black_box black_box_pad_pin="i_Clk,i_RX_Serial,o_RX_Done,o_RX_Byte[7:0],i_TX_Load,i_TX_Byte[7:0],o_TX_Active,o_TX_Serial,o_TX_Done" */;
  input i_Clk;
  input i_RX_Serial;
  output o_RX_Done;
  output [7:0]o_RX_Byte;
  input i_TX_Load;
  input [7:0]i_TX_Byte;
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;
endmodule
