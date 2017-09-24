# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_IF00_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_CTRL_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PACKET_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.C_IF00_DATA_WIDTH { PARAM_VALUE.C_IF00_DATA_WIDTH } {
	# Procedure called to update C_IF00_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_IF00_DATA_WIDTH { PARAM_VALUE.C_IF00_DATA_WIDTH } {
	# Procedure called to validate C_IF00_DATA_WIDTH
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

proc update_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH PARAM_VALUE.C_M00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_DATA_WIDTH}
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

