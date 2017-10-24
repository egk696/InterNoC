set_property SRC_FILE_INFO {cfile:D:/Development/FPGA/InterNoC/InterNoC.srcs/constrs_1/new/timing.xdc rfile:../../../InterNoC.srcs/constrs_1/new/timing.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Development/FPGA/InterNoC/InterNoC.srcs/constrs_1/new/pinout.xdc rfile:../../../InterNoC.srcs/constrs_1/new/pinout.xdc id:2} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -to [get_ports {LED0_pll_aclk LED1_pll_uart}];
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name m_spi_0_sck -source [get_pins DemoInterconnect_i/axi_spi_master_0/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk"];
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name m_spi_1_sck -source [get_pins DemoInterconnect_i/axi_spi_master_1/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_1"];
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name m_spi_2_sck -source [get_pins DemoInterconnect_i/axi_spi_master_2/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_2"];
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name m_spi_3_sck -source [get_pins DemoInterconnect_i/axi_spi_master_3/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_3"];
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_0_sck -max [expr 10 + 0.357]    [get_ports -filter { NAME =~  "m_spi_mosi" }];
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_0_sck -min [expr 8 - 0.000]    [get_ports -filter { NAME =~  "m_spi_mosi" }];
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_0_sck -max [expr 10 + 0.56] [get_ports -filter { NAME =~  "m_spi_ss" }];
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_0_sck -min [expr 8 - 0.1] [get_ports -filter { NAME =~  "m_spi_ss" }];
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_0_sck -max [expr 0.263 + 10]    [get_ports -filter { NAME =~  "m_spi_miso" }];
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_0_sck -min [expr 0.076 + 8]    [get_ports -filter { NAME =~  "m_spi_miso" }];
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_1_sck -max [expr 10 + 0.357]    [get_ports -filter { NAME =~  "m_spi_mosi_1" }];
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_1_sck -min [expr 8 - 0.000]    [get_ports -filter { NAME =~  "m_spi_mosi_1" }];
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_1_sck -max [expr 10 + 0.56] [get_ports -filter { NAME =~  "m_spi_ss_1" }];
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_1_sck -min [expr 8 - 0.1] [get_ports -filter { NAME =~  "m_spi_ss_1" }];
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_1_sck -max [expr 0.263 + 10]    [get_ports -filter { NAME =~  "m_spi_miso_1" }];
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_1_sck -min [expr 0.076 + 8]    [get_ports -filter { NAME =~  "m_spi_miso_1" }];
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_2_sck -max [expr 10 + 0.357]    [get_ports -filter { NAME =~  "m_spi_mosi_2" }];
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_2_sck -min [expr 8 - 0.000]    [get_ports -filter { NAME =~  "m_spi_mosi_2" }];
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_2_sck -max [expr 10 + 0.56] [get_ports -filter { NAME =~  "m_spi_ss_2" }];
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_2_sck -min [expr 8 - 0.1] [get_ports -filter { NAME =~  "m_spi_ss_2" }];
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_2_sck -max [expr 0.263 + 10]    [get_ports -filter { NAME =~  "m_spi_miso_2" }];
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_2_sck -min [expr 0.076 + 8]    [get_ports -filter { NAME =~  "m_spi_miso_2" }];
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_3_sck -max [expr 10 + 0.357]    [get_ports -filter { NAME =~  "m_spi_mosi_3" }];
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_3_sck -min [expr 8 - 0.000]    [get_ports -filter { NAME =~  "m_spi_mosi_3" }];
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_3_sck -max [expr 10 + 0.56] [get_ports -filter { NAME =~  "m_spi_ss_3" }];
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock m_spi_3_sck -min [expr 8 - 0.1] [get_ports -filter { NAME =~  "m_spi_ss_3" }];
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_3_sck -max [expr 0.263 + 10]    [get_ports -filter { NAME =~  "m_spi_miso_3" }];
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay     -clock m_spi_3_sck -min [expr 0.076 + 8]    [get_ports -filter { NAME =~  "m_spi_miso_3" }];
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -max 10 [get_ports -filter { NAME =~  "UART_TX_*" }];
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -min 8 [get_ports -filter { NAME =~  "UART_TX_*" }];
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -max 10 [get_ports -filter { NAME =~  "UART_RX_*" }];
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -min 8 [get_ports -filter { NAME =~  "UART_RX_*" }];
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]; #IO_L12P_T1_MRCC_14 Sch=gclk
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { LED0_pll_aclk }]; #IO_L12N_T1_MRCC_16 Sch=led[1]
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { LED1_pll_uart }]; #IO_L13P_T2_MRCC_16 Sch=led[2]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { sys_reset }]; #IO_L19N_T3_VREF_16 Sch=btn[0]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { UART_RX_0 }]; #IO_L8N_T1_AD14N_35 Sch=pio[01]
set_property src_info {type:XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { UART_TX_0 }]; #IO_L8P_T1_AD14P_35 Sch=pio[02]
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { UART_RX_1 }]; #IO_L12P_T1_MRCC_16 Sch=pio[03]
set_property src_info {type:XDC file:2 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { UART_TX_1 }]; #IO_L7N_T1_AD6N_35 Sch=pio[04]
set_property src_info {type:XDC file:2 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports { m_spi_ss_3 }]; #IO_L5P_T0_34 Sch=pio[33]
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports { m_spi_sclk_3 }]; #IO_L6N_T0_VREF_34 Sch=pio[34]
set_property src_info {type:XDC file:2 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports { m_spi_mosi_3 }]; #IO_L6P_T0_34 Sch=pio[35]
set_property src_info {type:XDC file:2 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { m_spi_miso_3 }]; #IO_L12P_T1_MRCC_34 Sch=pio[36]
set_property src_info {type:XDC file:2 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { m_spi_ss_2 }]; #IO_L11N_T1_SRCC_34 Sch=pio[37]
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U4    IOSTANDARD LVCMOS33 } [get_ports { m_spi_sclk_2 }]; #IO_L11P_T1_SRCC_34 Sch=pio[38]
set_property src_info {type:XDC file:2 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { m_spi_mosi_2 }]; #IO_L16N_T2_34 Sch=pio[39]
set_property src_info {type:XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W4    IOSTANDARD LVCMOS33 } [get_ports { m_spi_miso_2 }]; #IO_L12N_T1_MRCC_34 Sch=pio[40]
set_property src_info {type:XDC file:2 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { m_spi_ss_1 }]; #IO_L16P_T2_34 Sch=pio[41]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U2    IOSTANDARD LVCMOS33 } [get_ports { m_spi_sclk_1 }]; #IO_L9N_T1_DQS_34 Sch=pio[42]
set_property src_info {type:XDC file:2 line:77 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { m_spi_mosi_1 }]; #IO_L13N_T2_MRCC_34 Sch=pio[43]
set_property src_info {type:XDC file:2 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports { m_spi_miso_1 }]; #IO_L9P_T1_DQS_34 Sch=pio[44]
set_property src_info {type:XDC file:2 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { m_spi_ss }]; #IO_L19P_T3_34 Sch=pio[45]
set_property src_info {type:XDC file:2 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { m_spi_sclk }]; #IO_L13P_T2_MRCC_34 Sch=pio[46]
set_property src_info {type:XDC file:2 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { m_spi_mosi }]; #IO_L14P_T2_SRCC_34 Sch=pio[47]
set_property src_info {type:XDC file:2 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { m_spi_miso }]; #IO_L14N_T2_SRCC_34 Sch=pio[48]
