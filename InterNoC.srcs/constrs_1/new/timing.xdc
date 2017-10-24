## LEDs
set_false_path -to [get_ports {LED0_pll_aclk LED1_pll_uart}];

## SPI MASTERS
create_generated_clock -name m_spi_0_sck -source [get_pins DemoInterconnect_i/axi_spi_master_0/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk"];
create_generated_clock -name m_spi_1_sck -source [get_pins DemoInterconnect_i/axi_spi_master_1/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_1"];
create_generated_clock -name m_spi_2_sck -source [get_pins DemoInterconnect_i/axi_spi_master_2/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_2"];
create_generated_clock -name m_spi_3_sck -source [get_pins DemoInterconnect_i/axi_spi_master_3/U0/axi_spi_master_v1_0_S00_AXI_inst/spi_master_inst/o_sclk_reg/Q] -divide_by 4 -master_clock [get_clocks -filter {NAME=~"aclk_DemoInterconnect_clk_wiz_0_0"} ] -add [get_ports "m_spi_sclk_3"];

set dev_tsu           0.357;            # Destination device setup time requirement
set dev_thd           0.000;            # Destination device hold time requirement
set dev_tsu_en        0.56;            # Destination device setup time requirement
set dev_thd_en        0.1;            # Destination device hold time requirement
set dev_tco_max       0.263;            # Maximum clock to out delay (external device)
set dev_tco_min       0.076;            # Minimum clock to out delay (external device)
set trce_dly_max      10;            # Maximum board trace delay
set trce_dly_min      8;            # Minimum board trace delay

set_output_delay    -clock m_spi_0_sck -max [expr $trce_dly_max + $dev_tsu]    [get_ports -filter { NAME =~  "m_spi_mosi" }];
set_output_delay    -clock m_spi_0_sck -min [expr $trce_dly_min - $dev_thd]    [get_ports -filter { NAME =~  "m_spi_mosi" }];
set_output_delay    -clock m_spi_0_sck -max [expr $trce_dly_max + $dev_tsu_en] [get_ports -filter { NAME =~  "m_spi_ss" }];
set_output_delay    -clock m_spi_0_sck -min [expr $trce_dly_min - $dev_thd_en] [get_ports -filter { NAME =~  "m_spi_ss" }];
set_input_delay     -clock m_spi_0_sck -max [expr $dev_tco_max + $trce_dly_max]    [get_ports -filter { NAME =~  "m_spi_miso" }];
set_input_delay     -clock m_spi_0_sck -min [expr $dev_tco_min + $trce_dly_min]    [get_ports -filter { NAME =~  "m_spi_miso" }];

set_output_delay    -clock m_spi_1_sck -max [expr $trce_dly_max + $dev_tsu]    [get_ports -filter { NAME =~  "m_spi_mosi_1" }];
set_output_delay    -clock m_spi_1_sck -min [expr $trce_dly_min - $dev_thd]    [get_ports -filter { NAME =~  "m_spi_mosi_1" }];
set_output_delay    -clock m_spi_1_sck -max [expr $trce_dly_max + $dev_tsu_en] [get_ports -filter { NAME =~  "m_spi_ss_1" }];
set_output_delay    -clock m_spi_1_sck -min [expr $trce_dly_min - $dev_thd_en] [get_ports -filter { NAME =~  "m_spi_ss_1" }];
set_input_delay     -clock m_spi_1_sck -max [expr $dev_tco_max + $trce_dly_max]    [get_ports -filter { NAME =~  "m_spi_miso_1" }];
set_input_delay     -clock m_spi_1_sck -min [expr $dev_tco_min + $trce_dly_min]    [get_ports -filter { NAME =~  "m_spi_miso_1" }];

set_output_delay    -clock m_spi_2_sck -max [expr $trce_dly_max + $dev_tsu]    [get_ports -filter { NAME =~  "m_spi_mosi_2" }];
set_output_delay    -clock m_spi_2_sck -min [expr $trce_dly_min - $dev_thd]    [get_ports -filter { NAME =~  "m_spi_mosi_2" }];
set_output_delay    -clock m_spi_2_sck -max [expr $trce_dly_max + $dev_tsu_en] [get_ports -filter { NAME =~  "m_spi_ss_2" }];
set_output_delay    -clock m_spi_2_sck -min [expr $trce_dly_min - $dev_thd_en] [get_ports -filter { NAME =~  "m_spi_ss_2" }];
set_input_delay     -clock m_spi_2_sck -max [expr $dev_tco_max + $trce_dly_max]    [get_ports -filter { NAME =~  "m_spi_miso_2" }];
set_input_delay     -clock m_spi_2_sck -min [expr $dev_tco_min + $trce_dly_min]    [get_ports -filter { NAME =~  "m_spi_miso_2" }];

set_output_delay    -clock m_spi_3_sck -max [expr $trce_dly_max + $dev_tsu]    [get_ports -filter { NAME =~  "m_spi_mosi_3" }];
set_output_delay    -clock m_spi_3_sck -min [expr $trce_dly_min - $dev_thd]    [get_ports -filter { NAME =~  "m_spi_mosi_3" }];
set_output_delay    -clock m_spi_3_sck -max [expr $trce_dly_max + $dev_tsu_en] [get_ports -filter { NAME =~  "m_spi_ss_3" }];
set_output_delay    -clock m_spi_3_sck -min [expr $trce_dly_min - $dev_thd_en] [get_ports -filter { NAME =~  "m_spi_ss_3" }];
set_input_delay     -clock m_spi_3_sck -max [expr $dev_tco_max + $trce_dly_max]    [get_ports -filter { NAME =~  "m_spi_miso_3" }];
set_input_delay     -clock m_spi_3_sck -min [expr $dev_tco_min + $trce_dly_min]    [get_ports -filter { NAME =~  "m_spi_miso_3" }];
## UART SLAVE
set_output_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -max $trce_dly_max [get_ports -filter { NAME =~  "UART_TX_*" }];
set_output_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -min $trce_dly_min [get_ports -filter { NAME =~  "UART_TX_*" }];
set_input_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -max $trce_dly_max [get_ports -filter { NAME =~  "UART_RX_*" }];
set_input_delay    -clock [get_clocks -filter {NAME=~"uart_DemoInterconnect_clk_wiz_0_0"} ] -min $trce_dly_min [get_ports -filter { NAME =~  "UART_RX_*" }];

## IO REGISTERS
set_property IOB TRUE [all_inputs];
set_property IOB TRUE [all_outputs];