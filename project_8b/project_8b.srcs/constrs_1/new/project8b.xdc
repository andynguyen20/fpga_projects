set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }];

set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { rst1 }]; #IO_L19N_T3_VREF_34 Schematic=SW0
set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { rst2 }]; #IO_L15N_T2_DQS_34 Schematic=SW1

set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L22P_T3_34  Schematic=LD10_R