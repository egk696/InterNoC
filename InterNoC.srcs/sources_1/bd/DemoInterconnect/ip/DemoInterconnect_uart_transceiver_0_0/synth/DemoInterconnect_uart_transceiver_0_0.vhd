-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: ekyr:user:uart_transceiver:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DemoInterconnect_uart_transceiver_0_0 IS
  PORT (
    i_Clk : IN STD_LOGIC;
    i_RX_Serial : IN STD_LOGIC;
    o_RX_Done : OUT STD_LOGIC;
    o_RX_Byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_TX_Load : IN STD_LOGIC;
    i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_TX_Active : OUT STD_LOGIC;
    o_TX_Serial : OUT STD_LOGIC;
    o_TX_Done : OUT STD_LOGIC
  );
END DemoInterconnect_uart_transceiver_0_0;

ARCHITECTURE DemoInterconnect_uart_transceiver_0_0_arch OF DemoInterconnect_uart_transceiver_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF DemoInterconnect_uart_transceiver_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT uart_top IS
    GENERIC (
      CLK_FREQ : INTEGER;
      BAUD_RATE : INTEGER
    );
    PORT (
      i_Clk : IN STD_LOGIC;
      i_RX_Serial : IN STD_LOGIC;
      o_RX_Done : OUT STD_LOGIC;
      o_RX_Byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_TX_Load : IN STD_LOGIC;
      i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_TX_Active : OUT STD_LOGIC;
      o_TX_Serial : OUT STD_LOGIC;
      o_TX_Done : OUT STD_LOGIC
    );
  END COMPONENT uart_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF DemoInterconnect_uart_transceiver_0_0_arch: ARCHITECTURE IS "uart_top,Vivado 2017.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF DemoInterconnect_uart_transceiver_0_0_arch : ARCHITECTURE IS "DemoInterconnect_uart_transceiver_0_0,uart_top,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_Clk: SIGNAL IS "XIL_INTERFACENAME i_Clk, FREQ_HZ 12000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF i_Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_Clk CLK";
BEGIN
  U0 : uart_top
    GENERIC MAP (
      CLK_FREQ => 12000000,
      BAUD_RATE => 115200
    )
    PORT MAP (
      i_Clk => i_Clk,
      i_RX_Serial => i_RX_Serial,
      o_RX_Done => o_RX_Done,
      o_RX_Byte => o_RX_Byte,
      i_TX_Load => i_TX_Load,
      i_TX_Byte => i_TX_Byte,
      o_TX_Active => o_TX_Active,
      o_TX_Serial => o_TX_Serial,
      o_TX_Done => o_TX_Done
    );
END DemoInterconnect_uart_transceiver_0_0_arch;
