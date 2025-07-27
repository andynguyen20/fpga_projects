set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { led_yellow[0] }]; #IO_L18N_T2_34 Schematic=LD10_G
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { led_yellow[1] }]; #IO_L17P_T2_34 Schematic=LD10_B

set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { led_red }]; #IO_L8N_T1_34 Schematic=LD11_R

set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ct }]; #IO_L19N_T3_VREF_34 Schematic=SW0
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { cl }]; #IO_L15N_T2_DQS_34 Schematic=SW1
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { ot }]; #IO_L19P_T3_34 Schematic=SW2
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { ol }]; #IO_L21N_T3_DQS_AD14N_35 Schematic=SW3