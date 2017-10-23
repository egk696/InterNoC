// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Oct 23 23:26:24 2017
// Host        : CHRIS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top DemoInterconnect_uart_transceiver_0_0 -prefix
//               DemoInterconnect_uart_transceiver_0_0_ DemoInterconnect_uart_transceiver_0_0_sim_netlist.v
// Design      : DemoInterconnect_uart_transceiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DemoInterconnect_uart_transceiver_0_0,uart_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "uart_top,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module DemoInterconnect_uart_transceiver_0_0
   (i_Clk,
    i_RX_Serial,
    o_RX_Done,
    o_RX_Byte,
    i_TX_Load,
    i_TX_Byte,
    o_TX_Active,
    o_TX_Serial,
    o_TX_Done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_Clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input i_Clk;
  input i_RX_Serial;
  output o_RX_Done;
  output [7:0]o_RX_Byte;
  input i_TX_Load;
  input [7:0]i_TX_Byte;
  output o_TX_Active;
  output o_TX_Serial;
  output o_TX_Done;

  wire i_Clk;
  wire i_RX_Serial;
  wire [7:0]i_TX_Byte;
  wire i_TX_Load;
  wire [7:0]o_RX_Byte;
  wire o_RX_Done;
  wire o_TX_Active;
  wire o_TX_Done;
  wire o_TX_Serial;

  DemoInterconnect_uart_transceiver_0_0_uart_top U0
       (.i_Clk(i_Clk),
        .i_RX_Serial(i_RX_Serial),
        .i_TX_Byte(i_TX_Byte),
        .i_TX_Load(i_TX_Load),
        .o_RX_Byte(o_RX_Byte),
        .o_RX_Done(o_RX_Done),
        .o_TX_Active(o_TX_Active),
        .o_TX_Done(o_TX_Done),
        .o_TX_Serial(o_TX_Serial));
endmodule

module DemoInterconnect_uart_transceiver_0_0_UART_RX
   (o_RX_Done,
    o_RX_Byte,
    i_RX_Serial,
    i_Clk);
  output o_RX_Done;
  output [7:0]o_RX_Byte;
  input i_RX_Serial;
  input i_Clk;

  wire \FSM_sequential_r_SM_Main[0]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[0]_i_2_n_0 ;
  wire \FSM_sequential_r_SM_Main[0]_i_3_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_2_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_3_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_4_n_0 ;
  wire \FSM_sequential_r_SM_Main[2]_i_1_n_0 ;
  wire i_Clk;
  wire i_RX_Serial;
  wire [7:0]o_RX_Byte;
  wire o_RX_Done;
  wire [2:0]r_Bit_Index;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Clk_Count[0]_i_1_n_0 ;
  wire \r_Clk_Count[0]_i_2_n_0 ;
  wire \r_Clk_Count[0]_i_3_n_0 ;
  wire \r_Clk_Count[0]_i_4_n_0 ;
  wire \r_Clk_Count[1]_i_1_n_0 ;
  wire \r_Clk_Count[1]_i_2_n_0 ;
  wire \r_Clk_Count[2]_i_1__0_n_0 ;
  wire \r_Clk_Count[2]_i_2_n_0 ;
  wire \r_Clk_Count[3]_i_1_n_0 ;
  wire \r_Clk_Count[3]_i_2__0_n_0 ;
  wire \r_Clk_Count[3]_i_3_n_0 ;
  wire \r_Clk_Count[4]_i_1_n_0 ;
  wire \r_Clk_Count[4]_i_2_n_0 ;
  wire \r_Clk_Count[4]_i_3_n_0 ;
  wire \r_Clk_Count[5]_i_1_n_0 ;
  wire \r_Clk_Count[5]_i_2_n_0 ;
  wire \r_Clk_Count[5]_i_3_n_0 ;
  wire \r_Clk_Count[6]_i_1_n_0 ;
  wire \r_Clk_Count[6]_i_2_n_0 ;
  wire \r_Clk_Count[6]_i_3_n_0 ;
  wire \r_Clk_Count[6]_i_4_n_0 ;
  wire \r_Clk_Count[6]_i_5_n_0 ;
  wire \r_Clk_Count[6]_i_6_n_0 ;
  wire \r_Clk_Count[6]_i_7_n_0 ;
  wire \r_Clk_Count[6]_i_8_n_0 ;
  wire \r_Clk_Count_reg_n_0_[0] ;
  wire \r_Clk_Count_reg_n_0_[1] ;
  wire \r_Clk_Count_reg_n_0_[2] ;
  wire \r_Clk_Count_reg_n_0_[3] ;
  wire \r_Clk_Count_reg_n_0_[4] ;
  wire \r_Clk_Count_reg_n_0_[5] ;
  wire \r_Clk_Count_reg_n_0_[6] ;
  wire \r_RX_Byte[0]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_1_n_0 ;
  wire \r_RX_Byte[1]_i_2_n_0 ;
  wire \r_RX_Byte[2]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_1_n_0 ;
  wire \r_RX_Byte[3]_i_2_n_0 ;
  wire \r_RX_Byte[4]_i_1_n_0 ;
  wire \r_RX_Byte[5]_i_1_n_0 ;
  wire \r_RX_Byte[5]_i_2_n_0 ;
  wire \r_RX_Byte[6]_i_1_n_0 ;
  wire \r_RX_Byte[6]_i_2_n_0 ;
  wire \r_RX_Byte[6]_i_3_n_0 ;
  wire \r_RX_Byte[7]_i_1_n_0 ;
  wire \r_RX_Byte[7]_i_2_n_0 ;
  wire \r_RX_Byte[7]_i_3_n_0 ;
  wire r_RX_DV_i_1_n_0;
  wire r_RX_DV_i_2_n_0;
  wire r_RX_DV_i_3_n_0;
  wire r_RX_Data;
  wire r_RX_Data_R;
  (* RTL_KEEP = "yes" *) wire [2:0]r_SM_Main;

  LUT6 #(
    .INIT(64'h2000222220022222)) 
    \FSM_sequential_r_SM_Main[0]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ),
        .I1(\FSM_sequential_r_SM_Main[0]_i_3_n_0 ),
        .I2(r_SM_Main[0]),
        .I3(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I4(r_SM_Main[1]),
        .I5(\r_RX_Byte[7]_i_2_n_0 ),
        .O(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_r_SM_Main[0]_i_2 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_4_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(r_SM_Main[1]),
        .O(\FSM_sequential_r_SM_Main[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_sequential_r_SM_Main[0]_i_3 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(r_SM_Main[0]),
        .I3(r_RX_Data),
        .O(\FSM_sequential_r_SM_Main[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00D0)) 
    \FSM_sequential_r_SM_Main[1]_i_1 
       (.I0(r_SM_Main[0]),
        .I1(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .I4(\FSM_sequential_r_SM_Main[1]_i_3_n_0 ),
        .O(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05051555FFFFFFFF)) 
    \FSM_sequential_r_SM_Main[1]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(r_RX_DV_i_3_n_0),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .I5(\r_Clk_Count_reg_n_0_[6] ),
        .O(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_r_SM_Main[1]_i_3 
       (.I0(r_RX_Data),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[2]),
        .I5(\FSM_sequential_r_SM_Main[1]_i_4_n_0 ),
        .O(\FSM_sequential_r_SM_Main[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    \FSM_sequential_r_SM_Main[1]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[6] ),
        .I5(r_SM_Main[0]),
        .O(\FSM_sequential_r_SM_Main[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_r_SM_Main[2]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(r_RX_DV_i_2_n_0),
        .I3(r_SM_Main[0]),
        .O(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:000,s_rx_start_bit:001,s_rx_data_bits:010,s_rx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[0]_i_1_n_0 ),
        .Q(r_SM_Main[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_rx_start_bit:001,s_rx_data_bits:010,s_rx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[1]_i_1_n_0 ),
        .Q(r_SM_Main[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_rx_start_bit:001,s_rx_data_bits:010,s_rx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[2]_i_1_n_0 ),
        .Q(r_SM_Main[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF20008)) 
    \r_Bit_Index[0]_i_1 
       (.I0(r_SM_Main[1]),
        .I1(r_RX_DV_i_2_n_0),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[2]),
        .I4(r_Bit_Index[0]),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC6C0CCC0)) 
    \r_Bit_Index[1]_i_1 
       (.I0(r_Bit_Index[0]),
        .I1(r_Bit_Index[1]),
        .I2(r_SM_Main[2]),
        .I3(r_SM_Main[1]),
        .I4(r_RX_DV_i_2_n_0),
        .I5(r_SM_Main[0]),
        .O(\r_Bit_Index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF8C00000040)) 
    \r_Bit_Index[2]_i_1 
       (.I0(\r_RX_Byte[3]_i_2_n_0 ),
        .I1(r_SM_Main[1]),
        .I2(r_RX_DV_i_2_n_0),
        .I3(r_SM_Main[0]),
        .I4(r_SM_Main[2]),
        .I5(r_Bit_Index[2]),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(r_Bit_Index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1_n_0 ),
        .Q(r_Bit_Index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(r_Bit_Index[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA3)) 
    \r_Clk_Count[0]_i_1 
       (.I0(\r_Clk_Count[0]_i_2_n_0 ),
        .I1(\r_Clk_Count[0]_i_3_n_0 ),
        .I2(r_SM_Main[1]),
        .O(\r_Clk_Count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000055550000FF57)) 
    \r_Clk_Count[0]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count[0]_i_4_n_0 ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count_reg_n_0_[5] ),
        .O(\r_Clk_Count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF5F7F5F5)) 
    \r_Clk_Count[0]_i_3 
       (.I0(r_SM_Main[0]),
        .I1(\r_Clk_Count[6]_i_6_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(r_RX_Data),
        .I4(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \r_Clk_Count[0]_i_4 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_Clk_Count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h282800FF)) 
    \r_Clk_Count[1]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count[1]_i_2_n_0 ),
        .I4(r_SM_Main[1]),
        .O(\r_Clk_Count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF55FF75F)) 
    \r_Clk_Count[1]_i_2 
       (.I0(r_SM_Main[0]),
        .I1(\r_Clk_Count[6]_i_6_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(r_RX_Data),
        .O(\r_Clk_Count[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h780078000000FFFF)) 
    \r_Clk_Count[2]_i_1__0 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I4(\r_Clk_Count[2]_i_2_n_0 ),
        .I5(r_SM_Main[1]),
        .O(\r_Clk_Count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF555F7555DFF5FFF)) 
    \r_Clk_Count[2]_i_2 
       (.I0(r_SM_Main[0]),
        .I1(\r_Clk_Count[6]_i_6_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(r_RX_Data),
        .I5(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \r_Clk_Count[3]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I1(\r_Clk_Count[3]_i_2__0_n_0 ),
        .I2(r_SM_Main[0]),
        .I3(\r_Clk_Count[3]_i_3_n_0 ),
        .I4(r_SM_Main[1]),
        .O(\r_Clk_Count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_Clk_Count[3]_i_2__0 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .O(\r_Clk_Count[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h66CCCCCC66CCF0CC)) 
    \r_Clk_Count[3]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(r_RX_Data),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count[6]_i_6_n_0 ),
        .O(\r_Clk_Count[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h880F)) 
    \r_Clk_Count[4]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I1(\r_Clk_Count[4]_i_2_n_0 ),
        .I2(\r_Clk_Count[4]_i_3_n_0 ),
        .I3(r_SM_Main[1]),
        .O(\r_Clk_Count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_Clk_Count[4]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_Clk_Count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555755FDFFFFFF)) 
    \r_Clk_Count[4]_i_3 
       (.I0(r_SM_Main[0]),
        .I1(\r_Clk_Count[6]_i_6_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(r_RX_Data),
        .I5(\r_Clk_Count[4]_i_2_n_0 ),
        .O(\r_Clk_Count[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h880F)) 
    \r_Clk_Count[5]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I1(\r_Clk_Count[5]_i_2_n_0 ),
        .I2(\r_Clk_Count[5]_i_3_n_0 ),
        .I3(r_SM_Main[1]),
        .O(\r_Clk_Count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_Clk_Count[5]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .I5(\r_Clk_Count_reg_n_0_[5] ),
        .O(\r_Clk_Count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555755FDFFFFFF)) 
    \r_Clk_Count[5]_i_3 
       (.I0(r_SM_Main[0]),
        .I1(\r_Clk_Count[6]_i_6_n_0 ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(r_RX_Data),
        .I5(\r_Clk_Count[5]_i_2_n_0 ),
        .O(\r_Clk_Count[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00FB)) 
    \r_Clk_Count[6]_i_1 
       (.I0(r_SM_Main[1]),
        .I1(r_SM_Main[0]),
        .I2(\r_Clk_Count[6]_i_3_n_0 ),
        .I3(r_SM_Main[2]),
        .O(\r_Clk_Count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888F000)) 
    \r_Clk_Count[6]_i_2 
       (.I0(\FSM_sequential_r_SM_Main[1]_i_2_n_0 ),
        .I1(\r_Clk_Count[6]_i_4_n_0 ),
        .I2(r_SM_Main[0]),
        .I3(\r_Clk_Count[6]_i_5_n_0 ),
        .I4(r_SM_Main[1]),
        .O(\r_Clk_Count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r_Clk_Count[6]_i_3 
       (.I0(\r_Clk_Count[6]_i_6_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[1] ),
        .I3(r_RX_Data),
        .O(\r_Clk_Count[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_Clk_Count[6]_i_4 
       (.I0(\r_Clk_Count[6]_i_7_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[4] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[3] ),
        .I4(\r_Clk_Count_reg_n_0_[6] ),
        .O(\r_Clk_Count[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666666666666F066)) 
    \r_Clk_Count[6]_i_5 
       (.I0(\r_Clk_Count[6]_i_8_n_0 ),
        .I1(\r_Clk_Count_reg_n_0_[6] ),
        .I2(r_RX_Data),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count[6]_i_6_n_0 ),
        .O(\r_Clk_Count[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \r_Clk_Count[6]_i_6 
       (.I0(\r_Clk_Count_reg_n_0_[2] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(\r_Clk_Count_reg_n_0_[5] ),
        .I3(\r_Clk_Count_reg_n_0_[6] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .O(\r_Clk_Count[6]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \r_Clk_Count[6]_i_7 
       (.I0(\r_Clk_Count_reg_n_0_[1] ),
        .I1(\r_Clk_Count_reg_n_0_[0] ),
        .I2(\r_Clk_Count_reg_n_0_[2] ),
        .O(\r_Clk_Count[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_Clk_Count[6]_i_8 
       (.I0(\r_Clk_Count_reg_n_0_[3] ),
        .I1(\r_Clk_Count_reg_n_0_[5] ),
        .I2(\r_Clk_Count_reg_n_0_[4] ),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[0] ),
        .I5(\r_Clk_Count_reg_n_0_[1] ),
        .O(\r_Clk_Count[6]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[0]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[1]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[2]_i_1__0_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[3]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[4]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[5]_i_1_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(i_Clk),
        .CE(\r_Clk_Count[6]_i_1_n_0 ),
        .D(\r_Clk_Count[6]_i_2_n_0 ),
        .Q(\r_Clk_Count_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_RX_Byte[0]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(r_Bit_Index[1]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[0]),
        .O(\r_RX_Byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_RX_Byte[1]_i_1 
       (.I0(r_RX_Data),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_RX_Byte[1]_i_2_n_0 ),
        .I3(r_Bit_Index[0]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[1]),
        .O(\r_RX_Byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_RX_Byte[1]_i_2 
       (.I0(r_Bit_Index[1]),
        .I1(r_Bit_Index[2]),
        .O(\r_RX_Byte[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[2]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(r_Bit_Index[1]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[2]),
        .O(\r_RX_Byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \r_RX_Byte[3]_i_1 
       (.I0(r_RX_Data),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_RX_Byte[3]_i_2_n_0 ),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[3]),
        .O(\r_RX_Byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_RX_Byte[3]_i_2 
       (.I0(r_Bit_Index[0]),
        .I1(r_Bit_Index[1]),
        .O(\r_RX_Byte[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \r_RX_Byte[4]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(r_Bit_Index[2]),
        .I3(r_Bit_Index[1]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[4]),
        .O(\r_RX_Byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_RX_Byte[5]_i_1 
       (.I0(r_RX_Data),
        .I1(r_RX_DV_i_2_n_0),
        .I2(\r_RX_Byte[5]_i_2_n_0 ),
        .I3(r_Bit_Index[0]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[5]),
        .O(\r_RX_Byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_RX_Byte[5]_i_2 
       (.I0(r_Bit_Index[2]),
        .I1(r_Bit_Index[1]),
        .O(\r_RX_Byte[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \r_RX_Byte[6]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[6]_i_2_n_0 ),
        .I2(r_Bit_Index[1]),
        .I3(r_Bit_Index[2]),
        .I4(\r_RX_Byte[7]_i_3_n_0 ),
        .I5(o_RX_Byte[6]),
        .O(\r_RX_Byte[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \r_RX_Byte[6]_i_2 
       (.I0(\r_Clk_Count_reg_n_0_[6] ),
        .I1(\r_RX_Byte[6]_i_3_n_0 ),
        .I2(r_Bit_Index[0]),
        .O(\r_RX_Byte[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8880)) 
    \r_RX_Byte[6]_i_3 
       (.I0(\r_Clk_Count_reg_n_0_[4] ),
        .I1(\r_Clk_Count_reg_n_0_[2] ),
        .I2(\r_Clk_Count_reg_n_0_[0] ),
        .I3(\r_Clk_Count_reg_n_0_[1] ),
        .I4(\r_Clk_Count_reg_n_0_[3] ),
        .I5(\r_Clk_Count_reg_n_0_[5] ),
        .O(\r_RX_Byte[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \r_RX_Byte[7]_i_1 
       (.I0(r_RX_Data),
        .I1(\r_RX_Byte[7]_i_2_n_0 ),
        .I2(r_RX_DV_i_2_n_0),
        .I3(\r_RX_Byte[7]_i_3_n_0 ),
        .I4(o_RX_Byte[7]),
        .O(\r_RX_Byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_RX_Byte[7]_i_2 
       (.I0(r_Bit_Index[1]),
        .I1(r_Bit_Index[0]),
        .I2(r_Bit_Index[2]),
        .O(\r_RX_Byte[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \r_RX_Byte[7]_i_3 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[1]),
        .O(\r_RX_Byte[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[0]_i_1_n_0 ),
        .Q(o_RX_Byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[1]_i_1_n_0 ),
        .Q(o_RX_Byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[2]_i_1_n_0 ),
        .Q(o_RX_Byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[3] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[3]_i_1_n_0 ),
        .Q(o_RX_Byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[4] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[4]_i_1_n_0 ),
        .Q(o_RX_Byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[5] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[5]_i_1_n_0 ),
        .Q(o_RX_Byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[6] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[6]_i_1_n_0 ),
        .Q(o_RX_Byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_RX_Byte_reg[7] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_RX_Byte[7]_i_1_n_0 ),
        .Q(o_RX_Byte[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF02000)) 
    r_RX_DV_i_1
       (.I0(r_RX_DV_i_2_n_0),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(o_RX_Done),
        .O(r_RX_DV_i_1_n_0));
  LUT6 #(
    .INIT(64'hFEEEAAAA00000000)) 
    r_RX_DV_i_2
       (.I0(\r_Clk_Count_reg_n_0_[5] ),
        .I1(\r_Clk_Count_reg_n_0_[3] ),
        .I2(r_RX_DV_i_3_n_0),
        .I3(\r_Clk_Count_reg_n_0_[2] ),
        .I4(\r_Clk_Count_reg_n_0_[4] ),
        .I5(\r_Clk_Count_reg_n_0_[6] ),
        .O(r_RX_DV_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    r_RX_DV_i_3
       (.I0(\r_Clk_Count_reg_n_0_[0] ),
        .I1(\r_Clk_Count_reg_n_0_[1] ),
        .O(r_RX_DV_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_DV_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(r_RX_DV_i_1_n_0),
        .Q(o_RX_Done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_R_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(i_RX_Serial),
        .Q(r_RX_Data_R),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    r_RX_Data_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(r_RX_Data_R),
        .Q(r_RX_Data),
        .R(1'b0));
endmodule

module DemoInterconnect_uart_transceiver_0_0_UART_TX
   (o_TX_Active,
    o_TX_Done,
    o_TX_Serial,
    i_Clk,
    i_TX_Load,
    i_TX_Byte);
  output o_TX_Active;
  output o_TX_Done;
  output o_TX_Serial;
  input i_Clk;
  input i_TX_Load;
  input [7:0]i_TX_Byte;

  wire \/FSM_sequential_r_SM_Main[0]_i_1_n_0 ;
  wire \/FSM_sequential_r_SM_Main[2]_i_1_n_0 ;
  wire \FSM_sequential_r_SM_Main[0]_i_2__0_n_0 ;
  wire \FSM_sequential_r_SM_Main[1]_i_1__0_n_0 ;
  wire i_Clk;
  wire [7:0]i_TX_Byte;
  wire i_TX_Load;
  wire o_TX_Active;
  wire o_TX_Active_i_1_n_0;
  wire o_TX_Done;
  wire o_TX_Serial;
  wire o_TX_Serial_i_1_n_0;
  wire o_TX_Serial_i_2_n_0;
  wire o_TX_Serial_i_3_n_0;
  wire o_TX_Serial_i_4_n_0;
  wire [2:2]r_Bit_Index;
  wire \r_Bit_Index[0]_i_1_n_0 ;
  wire \r_Bit_Index[1]_i_1__0_n_0 ;
  wire \r_Bit_Index[2]_i_1_n_0 ;
  wire \r_Bit_Index_reg_n_0_[0] ;
  wire \r_Bit_Index_reg_n_0_[1] ;
  wire \r_Bit_Index_reg_n_0_[2] ;
  wire [6:0]r_Clk_Count;
  wire \r_Clk_Count[0]_i_1__0_n_0 ;
  wire \r_Clk_Count[1]_i_1__0_n_0 ;
  wire \r_Clk_Count[2]_i_1_n_0 ;
  wire \r_Clk_Count[3]_i_1__0_n_0 ;
  wire \r_Clk_Count[3]_i_2_n_0 ;
  wire \r_Clk_Count[4]_i_1__0_n_0 ;
  wire \r_Clk_Count[4]_i_2__0_n_0 ;
  wire \r_Clk_Count[5]_i_1__0_n_0 ;
  wire \r_Clk_Count[6]_i_1__0_n_0 ;
  wire \r_Clk_Count[6]_i_2__0_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]r_SM_Main;
  wire \r_TX_Data[7]_i_1_n_0 ;
  wire \r_TX_Data_reg_n_0_[0] ;
  wire \r_TX_Data_reg_n_0_[1] ;
  wire \r_TX_Data_reg_n_0_[2] ;
  wire \r_TX_Data_reg_n_0_[3] ;
  wire \r_TX_Data_reg_n_0_[4] ;
  wire \r_TX_Data_reg_n_0_[5] ;
  wire \r_TX_Data_reg_n_0_[6] ;
  wire \r_TX_Data_reg_n_0_[7] ;
  wire r_TX_Done_i_1_n_0;
  wire r_TX_Done_i_2_n_0;
  wire r_TX_Done_i_3_n_0;

  LUT6 #(
    .INIT(64'h3030013330300100)) 
    \/FSM_sequential_r_SM_Main[0]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[0]_i_2__0_n_0 ),
        .I1(r_SM_Main[2]),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[0]),
        .I5(i_TX_Load),
        .O(\/FSM_sequential_r_SM_Main[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \/FSM_sequential_r_SM_Main[2]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .O(\/FSM_sequential_r_SM_Main[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_r_SM_Main[0]_i_2__0 
       (.I0(\r_Bit_Index_reg_n_0_[2] ),
        .I1(\r_Bit_Index_reg_n_0_[0] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .O(\FSM_sequential_r_SM_Main[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h00A6)) 
    \FSM_sequential_r_SM_Main[1]_i_1__0 
       (.I0(r_SM_Main[1]),
        .I1(r_SM_Main[0]),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[2]),
        .O(\FSM_sequential_r_SM_Main[1]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_tx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\/FSM_sequential_r_SM_Main[0]_i_1_n_0 ),
        .Q(r_SM_Main[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_tx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_SM_Main[1]_i_1__0_n_0 ),
        .Q(r_SM_Main[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s_idle:000,s_tx_start_bit:001,s_tx_data_bits:010,s_tx_stop_bit:011,s_cleanup:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_SM_Main_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\/FSM_sequential_r_SM_Main[2]_i_1_n_0 ),
        .Q(r_SM_Main[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04404040)) 
    \__4/i_ 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(\r_Bit_Index_reg_n_0_[2] ),
        .I3(\r_Bit_Index_reg_n_0_[1] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .O(r_Bit_Index));
  LUT5 #(
    .INIT(32'hFFF20002)) 
    o_TX_Active_i_1
       (.I0(i_TX_Load),
        .I1(r_SM_Main[2]),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(o_TX_Active),
        .O(o_TX_Active_i_1_n_0));
  FDRE o_TX_Active_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(o_TX_Active_i_1_n_0),
        .Q(o_TX_Active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    o_TX_Serial_i_1
       (.I0(r_SM_Main[2]),
        .O(o_TX_Serial_i_1_n_0));
  LUT5 #(
    .INIT(32'hFF00B8FF)) 
    o_TX_Serial_i_2
       (.I0(o_TX_Serial_i_3_n_0),
        .I1(\r_Bit_Index_reg_n_0_[2] ),
        .I2(o_TX_Serial_i_4_n_0),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[0]),
        .O(o_TX_Serial_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_3
       (.I0(\r_TX_Data_reg_n_0_[7] ),
        .I1(\r_TX_Data_reg_n_0_[6] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_TX_Data_reg_n_0_[5] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_TX_Data_reg_n_0_[4] ),
        .O(o_TX_Serial_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    o_TX_Serial_i_4
       (.I0(\r_TX_Data_reg_n_0_[3] ),
        .I1(\r_TX_Data_reg_n_0_[2] ),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_TX_Data_reg_n_0_[1] ),
        .I4(\r_Bit_Index_reg_n_0_[0] ),
        .I5(\r_TX_Data_reg_n_0_[0] ),
        .O(o_TX_Serial_i_4_n_0));
  FDRE o_TX_Serial_reg
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(o_TX_Serial_i_2_n_0),
        .Q(o_TX_Serial),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFC000000020)) 
    \r_Bit_Index[0]_i_1 
       (.I0(\FSM_sequential_r_SM_Main[0]_i_2__0_n_0 ),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[0]),
        .I5(\r_Bit_Index_reg_n_0_[0] ),
        .O(\r_Bit_Index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0E0E0A4E0)) 
    \r_Bit_Index[1]_i_1__0 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[1]),
        .I2(\r_Bit_Index_reg_n_0_[1] ),
        .I3(\r_Bit_Index_reg_n_0_[0] ),
        .I4(r_TX_Done_i_2_n_0),
        .I5(r_SM_Main[0]),
        .O(\r_Bit_Index[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEA0000002A)) 
    \r_Bit_Index[2]_i_1 
       (.I0(r_Bit_Index),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[2]),
        .I4(r_SM_Main[0]),
        .I5(\r_Bit_Index_reg_n_0_[2] ),
        .O(\r_Bit_Index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[0] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[0]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[1] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[1]_i_1__0_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Bit_Index_reg[2] 
       (.C(i_Clk),
        .CE(1'b1),
        .D(\r_Bit_Index[2]_i_1_n_0 ),
        .Q(\r_Bit_Index_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \r_Clk_Count[0]_i_1__0 
       (.I0(r_Clk_Count[0]),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[1]),
        .I3(r_SM_Main[0]),
        .O(\r_Clk_Count[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h60606000)) 
    \r_Clk_Count[1]_i_1__0 
       (.I0(r_Clk_Count[0]),
        .I1(r_Clk_Count[1]),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[0]),
        .O(\r_Clk_Count[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7800780078000000)) 
    \r_Clk_Count[2]_i_1 
       (.I0(r_Clk_Count[0]),
        .I1(r_Clk_Count[1]),
        .I2(r_Clk_Count[2]),
        .I3(r_TX_Done_i_2_n_0),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[0]),
        .O(\r_Clk_Count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \r_Clk_Count[3]_i_1__0 
       (.I0(r_Clk_Count[1]),
        .I1(r_Clk_Count[0]),
        .I2(r_Clk_Count[2]),
        .I3(r_Clk_Count[3]),
        .I4(r_TX_Done_i_2_n_0),
        .I5(\r_Clk_Count[3]_i_2_n_0 ),
        .O(\r_Clk_Count[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_Clk_Count[3]_i_2 
       (.I0(r_SM_Main[0]),
        .I1(r_SM_Main[1]),
        .O(\r_Clk_Count[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h60606000)) 
    \r_Clk_Count[4]_i_1__0 
       (.I0(\r_Clk_Count[4]_i_2__0_n_0 ),
        .I1(r_Clk_Count[4]),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[0]),
        .O(\r_Clk_Count[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \r_Clk_Count[4]_i_2__0 
       (.I0(r_Clk_Count[3]),
        .I1(r_Clk_Count[1]),
        .I2(r_Clk_Count[0]),
        .I3(r_Clk_Count[2]),
        .O(\r_Clk_Count[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h60606000)) 
    \r_Clk_Count[5]_i_1__0 
       (.I0(\r_Clk_Count[6]_i_2__0_n_0 ),
        .I1(r_Clk_Count[5]),
        .I2(r_TX_Done_i_2_n_0),
        .I3(r_SM_Main[1]),
        .I4(r_SM_Main[0]),
        .O(\r_Clk_Count[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7800780078000000)) 
    \r_Clk_Count[6]_i_1__0 
       (.I0(\r_Clk_Count[6]_i_2__0_n_0 ),
        .I1(r_Clk_Count[5]),
        .I2(r_Clk_Count[6]),
        .I3(r_TX_Done_i_2_n_0),
        .I4(r_SM_Main[1]),
        .I5(r_SM_Main[0]),
        .O(\r_Clk_Count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \r_Clk_Count[6]_i_2__0 
       (.I0(r_Clk_Count[4]),
        .I1(r_Clk_Count[2]),
        .I2(r_Clk_Count[0]),
        .I3(r_Clk_Count[1]),
        .I4(r_Clk_Count[3]),
        .O(\r_Clk_Count[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[0] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[0]_i_1__0_n_0 ),
        .Q(r_Clk_Count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[1] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[1]_i_1__0_n_0 ),
        .Q(r_Clk_Count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[2] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[2]_i_1_n_0 ),
        .Q(r_Clk_Count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[3] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[3]_i_1__0_n_0 ),
        .Q(r_Clk_Count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[4] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[4]_i_1__0_n_0 ),
        .Q(r_Clk_Count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[5] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[5]_i_1__0_n_0 ),
        .Q(r_Clk_Count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Clk_Count_reg[6] 
       (.C(i_Clk),
        .CE(o_TX_Serial_i_1_n_0),
        .D(\r_Clk_Count[6]_i_1__0_n_0 ),
        .Q(r_Clk_Count[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0010)) 
    \r_TX_Data[7]_i_1 
       (.I0(r_SM_Main[2]),
        .I1(r_SM_Main[0]),
        .I2(i_TX_Load),
        .I3(r_SM_Main[1]),
        .O(\r_TX_Data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[0] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[0]),
        .Q(\r_TX_Data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[1] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[1]),
        .Q(\r_TX_Data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[2] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[2]),
        .Q(\r_TX_Data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[3] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[3]),
        .Q(\r_TX_Data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[4] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[4]),
        .Q(\r_TX_Data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[5] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[5]),
        .Q(\r_TX_Data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[6] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[6]),
        .Q(\r_TX_Data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_TX_Data_reg[7] 
       (.C(i_Clk),
        .CE(\r_TX_Data[7]_i_1_n_0 ),
        .D(i_TX_Byte[7]),
        .Q(\r_TX_Data_reg_n_0_[7] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFA100A)) 
    r_TX_Done_i_1
       (.I0(r_SM_Main[2]),
        .I1(r_TX_Done_i_2_n_0),
        .I2(r_SM_Main[0]),
        .I3(r_SM_Main[1]),
        .I4(o_TX_Done),
        .O(r_TX_Done_i_1_n_0));
  LUT4 #(
    .INIT(16'h1FFF)) 
    r_TX_Done_i_2
       (.I0(r_Clk_Count[4]),
        .I1(r_Clk_Count[5]),
        .I2(r_Clk_Count[6]),
        .I3(r_TX_Done_i_3_n_0),
        .O(r_TX_Done_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEEEEE)) 
    r_TX_Done_i_3
       (.I0(r_Clk_Count[3]),
        .I1(r_Clk_Count[5]),
        .I2(r_Clk_Count[1]),
        .I3(r_Clk_Count[0]),
        .I4(r_Clk_Count[2]),
        .O(r_TX_Done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_TX_Done_reg
       (.C(i_Clk),
        .CE(1'b1),
        .D(r_TX_Done_i_1_n_0),
        .Q(o_TX_Done),
        .R(1'b0));
endmodule

module DemoInterconnect_uart_transceiver_0_0_uart_top
   (o_RX_Byte,
    o_RX_Done,
    o_TX_Active,
    o_TX_Done,
    o_TX_Serial,
    i_TX_Load,
    i_Clk,
    i_RX_Serial,
    i_TX_Byte);
  output [7:0]o_RX_Byte;
  output o_RX_Done;
  output o_TX_Active;
  output o_TX_Done;
  output o_TX_Serial;
  input i_TX_Load;
  input i_Clk;
  input i_RX_Serial;
  input [7:0]i_TX_Byte;

  wire i_Clk;
  wire i_RX_Serial;
  wire [7:0]i_TX_Byte;
  wire i_TX_Load;
  wire [7:0]o_RX_Byte;
  wire o_RX_Done;
  wire o_TX_Active;
  wire o_TX_Done;
  wire o_TX_Serial;

  DemoInterconnect_uart_transceiver_0_0_UART_RX uart_rx_inst
       (.i_Clk(i_Clk),
        .i_RX_Serial(i_RX_Serial),
        .o_RX_Byte(o_RX_Byte),
        .o_RX_Done(o_RX_Done));
  DemoInterconnect_uart_transceiver_0_0_UART_TX uart_tx_inst
       (.i_Clk(i_Clk),
        .i_TX_Byte(i_TX_Byte),
        .i_TX_Load(i_TX_Load),
        .o_TX_Active(o_TX_Active),
        .o_TX_Done(o_TX_Done),
        .o_TX_Serial(o_TX_Serial));
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
