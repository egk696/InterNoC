# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_IF00_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_CTRL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_AXI_PACKET_ADDR_OFFSET" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_TIMEOUT_PERIOD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_SELF_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET { PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET } {
	# Procedure called to update C_AXI_PACKET_ADDR_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET { PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET } {
	# Procedure called to validate C_AXI_PACKET_ADDR_OFFSET
	return true
}

proc update_PARAM_VALUE.C_IF00_DATA_WIDTH { PARAM_VALUE.C_IF00_DATA_WIDTH } {
	# Procedure called to update C_IF00_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IF00_DATA_WIDTH { PARAM_VALUE.C_IF00_DATA_WIDTH } {
	# Procedure called to validate C_IF00_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_SELF_ADDR { PARAM_VALUE.C_M00_SELF_ADDR } {
	# Procedure called to update C_M00_SELF_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_SELF_ADDR { PARAM_VALUE.C_M00_SELF_ADDR } {
	# Procedure called to validate C_M00_SELF_ADDR
	return true
}

proc update_PARAM_VALUE.C_PACKET_ADDR_WIDTH { PARAM_VALUE.C_PACKET_ADDR_WIDTH } {
	# Procedure called to update C_PACKET_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PACKET_ADDR_WIDTH { PARAM_VALUE.C_PACKET_ADDR_WIDTH } {
	# Procedure called to validate C_PACKET_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PACKET_CTRL_WIDTH { PARAM_VALUE.C_PACKET_CTRL_WIDTH } {
	# Procedure called to update C_PACKET_CTRL_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PACKET_CTRL_WIDTH { PARAM_VALUE.C_PACKET_CTRL_WIDTH } {
	# Procedure called to validate C_PACKET_CTRL_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PACKET_DATA_WIDTH { PARAM_VALUE.C_PACKET_DATA_WIDTH } {
	# Procedure called to update C_PACKET_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PACKET_DATA_WIDTH { PARAM_VALUE.C_PACKET_DATA_WIDTH } {
	# Procedure called to validate C_PACKET_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PACKET_WIDTH { PARAM_VALUE.C_PACKET_WIDTH } {
	# Procedure called to update C_PACKET_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PACKET_WIDTH { PARAM_VALUE.C_PACKET_WIDTH } {
	# Procedure called to validate C_PACKET_WIDTH
	return true
}

proc update_PARAM_VALUE.C_TIMEOUT_PERIOD { PARAM_VALUE.C_TIMEOUT_PERIOD } {
	# Procedure called to update C_TIMEOUT_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_TIMEOUT_PERIOD { PARAM_VALUE.C_TIMEOUT_PERIOD } {
	# Procedure called to validate C_TIMEOUT_PERIOD
	return true
}


proc update_MODELPARAM_VALUE.C_IF00_DATA_WIDTH { MODELPARAM_VALUE.C_IF00_DATA_WIDTH PARAM_VALUE.C_IF00_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_IF00_DATA_WIDTH}] ${MODELPARAM_VALUE.C_IF00_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PACKET_WIDTH { MODELPARAM_VALUE.C_PACKET_WIDTH PARAM_VALUE.C_PACKET_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PACKET_WIDTH}] ${MODELPARAM_VALUE.C_PACKET_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PACKET_DATA_WIDTH { MODELPARAM_VALUE.C_PACKET_DATA_WIDTH PARAM_VALUE.C_PACKET_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PACKET_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PACKET_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PACKET_CTRL_WIDTH { MODELPARAM_VALUE.C_PACKET_CTRL_WIDTH PARAM_VALUE.C_PACKET_CTRL_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PACKET_CTRL_WIDTH}] ${MODELPARAM_VALUE.C_PACKET_CTRL_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PACKET_ADDR_WIDTH { MODELPARAM_VALUE.C_PACKET_ADDR_WIDTH PARAM_VALUE.C_PACKET_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PACKET_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_PACKET_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET { MODELPARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET}] ${MODELPARAM_VALUE.C_AXI_PACKET_ADDR_OFFSET}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_SELF_ADDR { MODELPARAM_VALUE.C_M00_SELF_ADDR PARAM_VALUE.C_M00_SELF_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_SELF_ADDR}] ${MODELPARAM_VALUE.C_M00_SELF_ADDR}
}

proc update_MODELPARAM_VALUE.C_TIMEOUT_PERIOD { MODELPARAM_VALUE.C_TIMEOUT_PERIOD PARAM_VALUE.C_TIMEOUT_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_TIMEOUT_PERIOD}] ${MODELPARAM_VALUE.C_TIMEOUT_PERIOD}
}

