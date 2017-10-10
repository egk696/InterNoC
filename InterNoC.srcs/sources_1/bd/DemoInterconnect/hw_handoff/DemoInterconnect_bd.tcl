
################################################################
# This is a generated script based on design: DemoInterconnect
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source DemoInterconnect_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tfgg484-2
}


# CHANGE DESIGN NAME HERE
set design_name DemoInterconnect

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set UART_RX_0 [ create_bd_port -dir I -type data UART_RX_0 ]
  set UART_RX_1 [ create_bd_port -dir I -type data UART_RX_1 ]
  set UART_TX_0 [ create_bd_port -dir O UART_TX_0 ]
  set UART_TX_1 [ create_bd_port -dir O -type data UART_TX_1 ]
  set m_spi_miso [ create_bd_port -dir I -type data m_spi_miso ]
  set m_spi_miso_1 [ create_bd_port -dir I -type data m_spi_miso_1 ]
  set m_spi_miso_2 [ create_bd_port -dir I -type data m_spi_miso_2 ]
  set m_spi_miso_3 [ create_bd_port -dir I -type data m_spi_miso_3 ]
  set m_spi_mosi [ create_bd_port -dir O -type data m_spi_mosi ]
  set m_spi_mosi_1 [ create_bd_port -dir O -type data m_spi_mosi_1 ]
  set m_spi_mosi_2 [ create_bd_port -dir O -type data m_spi_mosi_2 ]
  set m_spi_mosi_3 [ create_bd_port -dir O -type data m_spi_mosi_3 ]
  set m_spi_sclk [ create_bd_port -dir O -type clk m_spi_sclk ]
  set m_spi_sclk_1 [ create_bd_port -dir O -type clk m_spi_sclk_1 ]
  set m_spi_sclk_2 [ create_bd_port -dir O -type clk m_spi_sclk_2 ]
  set m_spi_sclk_3 [ create_bd_port -dir O -type clk m_spi_sclk_3 ]
  set m_spi_ss [ create_bd_port -dir O -type ce m_spi_ss ]
  set m_spi_ss_1 [ create_bd_port -dir O -type ce m_spi_ss_1 ]
  set m_spi_ss_2 [ create_bd_port -dir O -type ce m_spi_ss_2 ]
  set m_spi_ss_3 [ create_bd_port -dir O -type ce m_spi_ss_3 ]
  set pll_aclk [ create_bd_port -dir O -type clk pll_aclk ]
  set pll_lock [ create_bd_port -dir O pll_lock ]
  set pll_uart [ create_bd_port -dir O pll_uart ]
  set sys_clk [ create_bd_port -dir I -type clk sys_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $sys_clk
  set sys_resetn [ create_bd_port -dir I -type rst sys_resetn ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
CONFIG.M00_HAS_REGSLICE {3} \
CONFIG.M01_HAS_REGSLICE {3} \
CONFIG.M02_HAS_REGSLICE {3} \
CONFIG.M03_HAS_REGSLICE {3} \
CONFIG.NUM_MI {4} \
CONFIG.NUM_SI {3} \
CONFIG.S00_HAS_REGSLICE {3} \
CONFIG.S01_HAS_REGSLICE {3} \
CONFIG.S02_HAS_REGSLICE {3} \
 ] $axi_interconnect_0

  # Create instance: axi_spi_master_0, and set properties
  set axi_spi_master_0 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:axi_spi_master:1.0 axi_spi_master_0 ]
  set_property -dict [ list \
CONFIG.SPI_CLK_DIV {8} \
 ] $axi_spi_master_0

  # Create instance: axi_spi_master_1, and set properties
  set axi_spi_master_1 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:axi_spi_master:1.0 axi_spi_master_1 ]
  set_property -dict [ list \
CONFIG.SPI_CLK_DIV {8} \
 ] $axi_spi_master_1

  # Create instance: axi_spi_master_2, and set properties
  set axi_spi_master_2 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:axi_spi_master:1.0 axi_spi_master_2 ]
  set_property -dict [ list \
CONFIG.SPI_CLK_DIV {8} \
 ] $axi_spi_master_2

  # Create instance: axi_spi_master_3, and set properties
  set axi_spi_master_3 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:axi_spi_master:1.0 axi_spi_master_3 ]
  set_property -dict [ list \
CONFIG.SPI_CLK_DIV {8} \
 ] $axi_spi_master_3

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKOUT1_DRIVES {BUFGCE} \
CONFIG.CLKOUT1_JITTER {130.958} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_DRIVES {BUFGCE} \
CONFIG.CLKOUT2_JITTER {209.588} \
CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {10} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_DRIVES {BUFGCE} \
CONFIG.CLKOUT3_JITTER {209.588} \
CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {10} \
CONFIG.CLKOUT3_USED {false} \
CONFIG.CLKOUT4_DRIVES {BUFGCE} \
CONFIG.CLKOUT5_DRIVES {BUFGCE} \
CONFIG.CLKOUT6_DRIVES {BUFGCE} \
CONFIG.CLKOUT7_DRIVES {BUFGCE} \
CONFIG.CLK_OUT1_PORT {aclk} \
CONFIG.CLK_OUT2_PORT {uart} \
CONFIG.CLK_OUT3_PORT {clk_out3} \
CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_CLKOUT1_DIVIDE {100} \
CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: interface_axi_master_0, and set properties
  set interface_axi_master_0 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:interface_axi_master:1.0 interface_axi_master_0 ]

  # Create instance: interface_axi_master_1, and set properties
  set interface_axi_master_1 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:interface_axi_master:1.0 interface_axi_master_1 ]

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]

  # Create instance: uart_transceiver_0, and set properties
  set uart_transceiver_0 [ create_bd_cell -type ip -vlnv ekyr:user:uart_transceiver:1.0 uart_transceiver_0 ]

  # Create instance: uart_transceiver_1, and set properties
  set uart_transceiver_1 [ create_bd_cell -type ip -vlnv ekyr:user:uart_transceiver:1.0 uart_transceiver_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_spi_master_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins axi_spi_master_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins axi_spi_master_2/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_interconnect_0/M03_AXI] [get_bd_intf_pins axi_spi_master_3/S00_AXI]
  connect_bd_intf_net -intf_net interface_axi_master_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins interface_axi_master_0/M00_AXI]
  connect_bd_intf_net -intf_net interface_axi_master_1_M00_AXI [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins interface_axi_master_1/M00_AXI]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins jtag_axi_0/M_AXI]

  # Create port connections
  connect_bd_net -net UART_RX_0_1 [get_bd_ports UART_RX_0] [get_bd_pins uart_transceiver_0/i_RX_Serial]
  connect_bd_net -net UART_RX_1_1 [get_bd_ports UART_RX_1] [get_bd_pins uart_transceiver_1/i_RX_Serial]
  connect_bd_net -net axi_spi_master_0_m_spi_mosi [get_bd_ports m_spi_mosi] [get_bd_pins axi_spi_master_0/m_spi_mosi]
  connect_bd_net -net axi_spi_master_0_m_spi_sclk [get_bd_ports m_spi_sclk] [get_bd_pins axi_spi_master_0/m_spi_sclk]
  connect_bd_net -net axi_spi_master_0_m_spi_ss [get_bd_ports m_spi_ss] [get_bd_pins axi_spi_master_0/m_spi_ss]
  connect_bd_net -net axi_spi_master_1_m_spi_mosi [get_bd_ports m_spi_mosi_1] [get_bd_pins axi_spi_master_1/m_spi_mosi]
  connect_bd_net -net axi_spi_master_1_m_spi_sclk [get_bd_ports m_spi_sclk_1] [get_bd_pins axi_spi_master_1/m_spi_sclk]
  connect_bd_net -net axi_spi_master_1_m_spi_ss [get_bd_ports m_spi_ss_1] [get_bd_pins axi_spi_master_1/m_spi_ss]
  connect_bd_net -net axi_spi_master_2_m_spi_mosi [get_bd_ports m_spi_mosi_2] [get_bd_pins axi_spi_master_2/m_spi_mosi]
  connect_bd_net -net axi_spi_master_2_m_spi_sclk [get_bd_ports m_spi_sclk_2] [get_bd_pins axi_spi_master_2/m_spi_sclk]
  connect_bd_net -net axi_spi_master_2_m_spi_ss [get_bd_ports m_spi_ss_2] [get_bd_pins axi_spi_master_2/m_spi_ss]
  connect_bd_net -net axi_spi_master_3_m_spi_mosi [get_bd_ports m_spi_mosi_3] [get_bd_pins axi_spi_master_3/m_spi_mosi]
  connect_bd_net -net axi_spi_master_3_m_spi_sclk [get_bd_ports m_spi_sclk_3] [get_bd_pins axi_spi_master_3/m_spi_sclk]
  connect_bd_net -net axi_spi_master_3_m_spi_ss [get_bd_ports m_spi_ss_3] [get_bd_pins axi_spi_master_3/m_spi_ss]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports pll_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_spi_master_0/s00_axi_aclk] [get_bd_pins axi_spi_master_1/s00_axi_aclk] [get_bd_pins axi_spi_master_2/s00_axi_aclk] [get_bd_pins axi_spi_master_3/s00_axi_aclk] [get_bd_pins clk_wiz_0/aclk] [get_bd_pins interface_axi_master_0/m00_axi_aclk] [get_bd_pins interface_axi_master_1/m00_axi_aclk] [get_bd_pins jtag_axi_0/aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_ports pll_lock] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_spi_master_0/s00_axi_aresetn] [get_bd_pins axi_spi_master_1/s00_axi_aresetn] [get_bd_pins axi_spi_master_2/s00_axi_aresetn] [get_bd_pins axi_spi_master_3/s00_axi_aresetn] [get_bd_pins clk_wiz_0/locked] [get_bd_pins interface_axi_master_0/m00_axi_aresetn] [get_bd_pins interface_axi_master_1/m00_axi_aresetn] [get_bd_pins jtag_axi_0/aresetn]
  connect_bd_net -net clk_wiz_0_uart [get_bd_ports pll_uart] [get_bd_pins clk_wiz_0/uart] [get_bd_pins uart_transceiver_0/i_Clk] [get_bd_pins uart_transceiver_1/i_Clk]
  connect_bd_net -net interface_axi_master_0_if00_data_out [get_bd_pins interface_axi_master_0/if00_data_out] [get_bd_pins uart_transceiver_0/i_TX_Byte]
  connect_bd_net -net interface_axi_master_0_if00_load_out [get_bd_pins interface_axi_master_0/if00_load_out] [get_bd_pins uart_transceiver_0/i_TX_Load]
  connect_bd_net -net interface_axi_master_1_if00_data_out [get_bd_pins interface_axi_master_1/if00_data_out] [get_bd_pins uart_transceiver_1/i_TX_Byte]
  connect_bd_net -net interface_axi_master_1_if00_load_out [get_bd_pins interface_axi_master_1/if00_load_out] [get_bd_pins uart_transceiver_1/i_TX_Load]
  connect_bd_net -net m_spi_miso_1 [get_bd_ports m_spi_miso] [get_bd_pins axi_spi_master_0/m_spi_miso]
  connect_bd_net -net m_spi_miso_1_1 [get_bd_ports m_spi_miso_1] [get_bd_pins axi_spi_master_1/m_spi_miso]
  connect_bd_net -net m_spi_miso_2_1 [get_bd_ports m_spi_miso_2] [get_bd_pins axi_spi_master_2/m_spi_miso]
  connect_bd_net -net m_spi_miso_3_1 [get_bd_ports m_spi_miso_3] [get_bd_pins axi_spi_master_3/m_spi_miso]
  connect_bd_net -net resetn_1 [get_bd_ports sys_resetn] [get_bd_pins clk_wiz_0/resetn]
  connect_bd_net -net sys_clk_1 [get_bd_ports sys_clk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net uart_transceiver_0_o_RX_Byte [get_bd_pins interface_axi_master_0/if00_data_in] [get_bd_pins uart_transceiver_0/o_RX_Byte]
  connect_bd_net -net uart_transceiver_0_o_RX_Done [get_bd_pins interface_axi_master_0/if00_load_in] [get_bd_pins uart_transceiver_0/o_RX_Done]
  connect_bd_net -net uart_transceiver_0_o_TX_Active [get_bd_pins interface_axi_master_0/if00_send_busy] [get_bd_pins uart_transceiver_0/o_TX_Active]
  connect_bd_net -net uart_transceiver_0_o_TX_Done [get_bd_pins interface_axi_master_0/if00_send_done] [get_bd_pins uart_transceiver_0/o_TX_Done]
  connect_bd_net -net uart_transceiver_0_o_TX_Serial [get_bd_ports UART_TX_0] [get_bd_pins uart_transceiver_0/o_TX_Serial]
  connect_bd_net -net uart_transceiver_1_o_RX_Byte [get_bd_pins interface_axi_master_1/if00_data_in] [get_bd_pins uart_transceiver_1/o_RX_Byte]
  connect_bd_net -net uart_transceiver_1_o_RX_Done [get_bd_pins interface_axi_master_1/if00_load_in] [get_bd_pins uart_transceiver_1/o_RX_Done]
  connect_bd_net -net uart_transceiver_1_o_TX_Active [get_bd_pins interface_axi_master_1/if00_send_busy] [get_bd_pins uart_transceiver_1/o_TX_Active]
  connect_bd_net -net uart_transceiver_1_o_TX_Done [get_bd_pins interface_axi_master_1/if00_send_done] [get_bd_pins uart_transceiver_1/o_TX_Done]
  connect_bd_net -net uart_transceiver_1_o_TX_Serial [get_bd_ports UART_TX_1] [get_bd_pins uart_transceiver_1/o_TX_Serial]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs axi_spi_master_0/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00010000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs axi_spi_master_1/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00020000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs axi_spi_master_2/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs axi_spi_master_3/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_3_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_0/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00010000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_1/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00020000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_2/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_3/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_3_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_0/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00010000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_1/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00020000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_2/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_3/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_3_S00_AXI_reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port m_spi_ss_2 -pg 1 -y 910 -defaultsOSRD
preplace port m_spi_ss -pg 1 -y 420 -defaultsOSRD
preplace port m_spi_ss_3 -pg 1 -y 720 -defaultsOSRD
preplace port m_spi_sclk -pg 1 -y 440 -defaultsOSRD
preplace port m_spi_miso_1 -pg 1 -y 690 -defaultsOSRD
preplace port pll_uart -pg 1 -y 170 -defaultsOSRD
preplace port m_spi_miso_2 -pg 1 -y 900 -defaultsOSRD
preplace port m_spi_sclk_1 -pg 1 -y 600 -defaultsOSRD
preplace port pll_lock -pg 1 -y 260 -defaultsOSRD
preplace port m_spi_miso_3 -pg 1 -y 710 -defaultsOSRD
preplace port m_spi_sclk_2 -pg 1 -y 930 -defaultsOSRD
preplace port m_spi_mosi -pg 1 -y 400 -defaultsOSRD
preplace port sys_clk -pg 1 -y 830 -defaultsOSRD
preplace port m_spi_sclk_3 -pg 1 -y 740 -defaultsOSRD
preplace port m_spi_mosi_1 -pg 1 -y 560 -defaultsOSRD
preplace port m_spi_mosi_2 -pg 1 -y 890 -defaultsOSRD
preplace port sys_resetn -pg 1 -y 810 -defaultsOSRD
preplace port pll_aclk -pg 1 -y 190 -defaultsOSRD
preplace port m_spi_mosi_3 -pg 1 -y 700 -defaultsOSRD
preplace port UART_TX_0 -pg 1 -y 130 -defaultsOSRD
preplace port UART_TX_1 -pg 1 -y 150 -defaultsOSRD
preplace port UART_RX_0 -pg 1 -y 100 -defaultsOSRD
preplace port UART_RX_1 -pg 1 -y 310 -defaultsOSRD
preplace port m_spi_ss_1 -pg 1 -y 580 -defaultsOSRD
preplace port m_spi_miso -pg 1 -y 210 -defaultsOSRD
preplace inst axi_spi_master_0 -pg 1 -lvl 4 -y 420 -defaultsOSRD
preplace inst axi_spi_master_1 -pg 1 -lvl 4 -y 580 -defaultsOSRD
preplace inst axi_spi_master_2 -pg 1 -lvl 4 -y 910 -defaultsOSRD
preplace inst interface_axi_master_0 -pg 1 -lvl 2 -y 90 -defaultsOSRD
preplace inst axi_spi_master_3 -pg 1 -lvl 4 -y 720 -defaultsOSRD
preplace inst interface_axi_master_1 -pg 1 -lvl 2 -y 310 -defaultsOSRD
preplace inst jtag_axi_0 -pg 1 -lvl 2 -y 520 -defaultsOSRD
preplace inst uart_transceiver_0 -pg 1 -lvl 1 -y 110 -defaultsOSRD
preplace inst uart_transceiver_1 -pg 1 -lvl 1 -y 320 -defaultsOSRD
preplace inst axi_interconnect_0 -pg 1 -lvl 3 -y 450 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 3 -y 820 -defaultsOSRD
preplace netloc m_spi_miso_3_1 1 0 4 NJ 710 NJ 710 NJ 710 NJ
preplace netloc uart_transceiver_0_o_RX_Byte 1 1 1 280
preplace netloc UART_RX_0_1 1 0 1 NJ
preplace netloc interface_axi_master_0_if00_load_out 1 0 3 20 420 NJ 420 600
preplace netloc clk_wiz_0_locked 1 1 4 320 940 680 940 1000 260 NJ
preplace netloc axi_spi_master_2_m_spi_ss 1 4 1 NJ
preplace netloc axi_spi_master_1_m_spi_sclk 1 4 1 NJ
preplace netloc axi_spi_master_1_m_spi_mosi 1 4 1 NJ
preplace netloc axi_spi_master_2_m_spi_mosi 1 4 1 NJ
preplace netloc axi_spi_master_1_m_spi_ss 1 4 1 NJ
preplace netloc m_spi_miso_1_1 1 0 4 NJ 690 NJ 690 NJ 690 940J
preplace netloc interface_axi_master_1_if00_load_out 1 0 3 10 450 NJ 450 610
preplace netloc axi_interconnect_0_M02_AXI 1 3 1 960
preplace netloc axi_spi_master_0_m_spi_sclk 1 4 1 NJ
preplace netloc m_spi_miso_1 1 0 4 NJ 210 NJ 210 NJ 210 1010J
preplace netloc uart_transceiver_1_o_TX_Active 1 1 1 N
preplace netloc uart_transceiver_0_o_TX_Serial 1 1 4 300J 190 640J 130 NJ 130 NJ
preplace netloc interface_axi_master_0_if00_data_out 1 0 3 30 430 NJ 430 630
preplace netloc sys_clk_1 1 0 3 NJ 830 NJ 830 NJ
preplace netloc jtag_axi_0_M_AXI 1 2 1 660
preplace netloc m_spi_miso_2_1 1 0 4 NJ 900 NJ 900 NJ 900 NJ
preplace netloc axi_spi_master_0_m_spi_mosi 1 4 1 NJ
preplace netloc UART_RX_1_1 1 0 1 NJ
preplace netloc uart_transceiver_0_o_TX_Done 1 1 1 290
preplace netloc axi_spi_master_3_m_spi_sclk 1 4 1 NJ
preplace netloc uart_transceiver_1_o_RX_Done 1 1 1 N
preplace netloc uart_transceiver_1_o_TX_Done 1 1 1 300
preplace netloc resetn_1 1 0 3 NJ 810 NJ 810 NJ
preplace netloc interface_axi_master_1_M00_AXI 1 2 1 N
preplace netloc clk_wiz_0_clk_out1 1 1 4 310 460 670 190 990 190 NJ
preplace netloc axi_interconnect_0_M00_AXI 1 3 1 980
preplace netloc interface_axi_master_1_if00_data_out 1 0 3 40 440 NJ 440 620
preplace netloc axi_interconnect_0_M01_AXI 1 3 1 980
preplace netloc interface_axi_master_0_M00_AXI 1 2 1 660
preplace netloc axi_spi_master_3_m_spi_ss 1 4 1 NJ
preplace netloc uart_transceiver_0_o_RX_Done 1 1 1 290
preplace netloc axi_spi_master_3_m_spi_mosi 1 4 1 NJ
preplace netloc axi_spi_master_2_m_spi_sclk 1 4 1 NJ
preplace netloc uart_transceiver_1_o_RX_Byte 1 1 1 280
preplace netloc clk_wiz_0_uart 1 0 5 10 200 NJ 200 NJ 200 970 200 1230J
preplace netloc axi_interconnect_0_M03_AXI 1 3 1 950
preplace netloc axi_spi_master_0_m_spi_ss 1 4 1 NJ
preplace netloc uart_transceiver_1_o_TX_Serial 1 1 4 280J 410 650J 150 NJ 150 NJ
preplace netloc uart_transceiver_0_o_TX_Active 1 1 1 310
levelinfo -pg 1 -10 160 460 810 1120 1250 -top 0 -bot 990
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


