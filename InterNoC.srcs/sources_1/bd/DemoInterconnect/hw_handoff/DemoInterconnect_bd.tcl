
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
set scripts_vivado_version 2017.3
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
variable design_name
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
  variable design_name

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
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {209.588} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {10} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {209.588} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_OUT1_PORT {aclk} \
   CONFIG.CLK_OUT2_PORT {uart} \
   CONFIG.CLK_OUT3_PORT {clk_out3} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {100} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: interconnect, and set properties
  set interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.M01_HAS_REGSLICE {3} \
   CONFIG.M02_HAS_REGSLICE {3} \
   CONFIG.M03_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {7} \
   CONFIG.NUM_SI {3} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $interconnect

  # Create instance: interface_axi_master_0, and set properties
  set interface_axi_master_0 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:interface_axi_master:1.0 interface_axi_master_0 ]

  # Create instance: interface_axi_master_1, and set properties
  set interface_axi_master_1 [ create_bd_cell -type ip -vlnv ekyr.kth.se:user:interface_axi_master:1.0 interface_axi_master_1 ]

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]

  # Create instance: master_comm_mutex, and set properties
  set master_comm_mutex [ create_bd_cell -type ip -vlnv xilinx.com:ip:mutex:2.1 master_comm_mutex ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_CLKS {0} \
   CONFIG.C_ENABLE_HW_PROT {1} \
   CONFIG.C_ENABLE_USER {1} \
   CONFIG.C_NUM_AXI {3} \
 ] $master_comm_mutex

  # Create instance: uart_transceiver_0, and set properties
  set uart_transceiver_0 [ create_bd_cell -type ip -vlnv ekyr:user:uart_transceiver:1.0 uart_transceiver_0 ]

  # Create instance: uart_transceiver_1, and set properties
  set uart_transceiver_1 [ create_bd_cell -type ip -vlnv ekyr:user:uart_transceiver:1.0 uart_transceiver_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_spi_master_0/S00_AXI] [get_bd_intf_pins interconnect/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_spi_master_1/S00_AXI] [get_bd_intf_pins interconnect/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_spi_master_2/S00_AXI] [get_bd_intf_pins interconnect/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_spi_master_3/S00_AXI] [get_bd_intf_pins interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins interconnect/M04_AXI] [get_bd_intf_pins master_comm_mutex/S0_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins interconnect/M05_AXI] [get_bd_intf_pins master_comm_mutex/S1_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins interconnect/M06_AXI] [get_bd_intf_pins master_comm_mutex/S2_AXI]
  connect_bd_intf_net -intf_net interface_axi_master_0_M00_AXI [get_bd_intf_pins interconnect/S00_AXI] [get_bd_intf_pins interface_axi_master_0/M00_AXI]
  connect_bd_intf_net -intf_net interface_axi_master_1_M00_AXI [get_bd_intf_pins interconnect/S01_AXI] [get_bd_intf_pins interface_axi_master_1/M00_AXI]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins interconnect/S02_AXI] [get_bd_intf_pins jtag_axi_0/M_AXI]

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
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_ports pll_aclk] [get_bd_pins axi_spi_master_0/s00_axi_aclk] [get_bd_pins axi_spi_master_1/s00_axi_aclk] [get_bd_pins axi_spi_master_2/s00_axi_aclk] [get_bd_pins axi_spi_master_3/s00_axi_aclk] [get_bd_pins clk_wiz_0/aclk] [get_bd_pins interconnect/ACLK] [get_bd_pins interconnect/M00_ACLK] [get_bd_pins interconnect/M01_ACLK] [get_bd_pins interconnect/M02_ACLK] [get_bd_pins interconnect/M03_ACLK] [get_bd_pins interconnect/M04_ACLK] [get_bd_pins interconnect/M05_ACLK] [get_bd_pins interconnect/M06_ACLK] [get_bd_pins interconnect/S00_ACLK] [get_bd_pins interconnect/S01_ACLK] [get_bd_pins interconnect/S02_ACLK] [get_bd_pins interface_axi_master_0/m00_axi_aclk] [get_bd_pins interface_axi_master_1/m00_axi_aclk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins master_comm_mutex/S0_AXI_ACLK] [get_bd_pins master_comm_mutex/S1_AXI_ACLK] [get_bd_pins master_comm_mutex/S2_AXI_ACLK]
  connect_bd_net -net clk_wiz_0_locked [get_bd_ports pll_lock] [get_bd_pins axi_spi_master_0/s00_axi_aresetn] [get_bd_pins axi_spi_master_1/s00_axi_aresetn] [get_bd_pins axi_spi_master_2/s00_axi_aresetn] [get_bd_pins axi_spi_master_3/s00_axi_aresetn] [get_bd_pins clk_wiz_0/locked] [get_bd_pins interconnect/ARESETN] [get_bd_pins interconnect/M00_ARESETN] [get_bd_pins interconnect/M01_ARESETN] [get_bd_pins interconnect/M02_ARESETN] [get_bd_pins interconnect/M03_ARESETN] [get_bd_pins interconnect/M04_ARESETN] [get_bd_pins interconnect/M05_ARESETN] [get_bd_pins interconnect/M06_ARESETN] [get_bd_pins interconnect/S00_ARESETN] [get_bd_pins interconnect/S01_ARESETN] [get_bd_pins interconnect/S02_ARESETN] [get_bd_pins interface_axi_master_0/m00_axi_aresetn] [get_bd_pins interface_axi_master_1/m00_axi_aresetn] [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins master_comm_mutex/S0_AXI_ARESETN] [get_bd_pins master_comm_mutex/S1_AXI_ARESETN] [get_bd_pins master_comm_mutex/S2_AXI_ARESETN]
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
  create_bd_addr_seg -range 0x00010000 -offset 0x00100000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs master_comm_mutex/S0_AXI/Reg] SEG_mutex_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00200000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs master_comm_mutex/S1_AXI/S1_AXI_Reg] SEG_mutex_0_S1_AXI_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00300000 [get_bd_addr_spaces interface_axi_master_0/M00_AXI] [get_bd_addr_segs master_comm_mutex/S2_AXI/S2_AXI_Reg] SEG_mutex_0_S2_AXI_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_0/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00010000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_1/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00020000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_2/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs axi_spi_master_3/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_3_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00100000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs master_comm_mutex/S0_AXI/Reg] SEG_mutex_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00200000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs master_comm_mutex/S1_AXI/S1_AXI_Reg] SEG_mutex_0_S1_AXI_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00300000 [get_bd_addr_spaces interface_axi_master_1/M00_AXI] [get_bd_addr_segs master_comm_mutex/S2_AXI/S2_AXI_Reg] SEG_mutex_0_S2_AXI_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00000000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_0/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00010000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_1/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_1_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00020000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_2/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_2_S00_AXI_reg
  create_bd_addr_seg -range 0x00001000 -offset 0x00030000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs axi_spi_master_3/S00_AXI/S00_AXI_reg] SEG_axi_spi_master_3_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00100000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs master_comm_mutex/S0_AXI/Reg] SEG_mutex_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00200000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs master_comm_mutex/S1_AXI/S1_AXI_Reg] SEG_mutex_0_S1_AXI_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00300000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs master_comm_mutex/S2_AXI/S2_AXI_Reg] SEG_mutex_0_S2_AXI_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


