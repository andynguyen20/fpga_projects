set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L22P_T3_34  Schematic=LD10_R
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L18N_T2_34 Schematic=LD10_G
set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L17P_T2_34 Schematic=LD10_B

set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { mbtn }]; #IO_L18N_T2_AD13N_35 Sch=VGA_R7_CON

set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; #IO_L8P_T1_34 Schematic=BTN0
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; #IO_L4N_T0_34 Schematic=BTN1
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { btn[2] }]; #IO_L24P_T3_34 Schematic=BTN2