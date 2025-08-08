set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }];

set_property -dict { PACKAGE_PIN N20   IOSTANDARD LVCMOS33 } [get_ports { led1[0] }]; #IO_L14P_T2_SRCC_34 Schematic=LD0
set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { led1[1] }]; #IO_L14N_T2_SRCC_34 Schematic=LD1
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { led1[2] }]; #IO_0_34 Schematic=LD2
set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { led1[3] }]; #IO_L15P_T2_DQS_34 Schematic=LD3

set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L22P_T3_34  Schematic=LD10_R

set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ce }]; #IO_L19N_T3_VREF_34 Schematic=SW0

set_property -dict { PACKAGE_PIN U20   IOSTANDARD LVCMOS33 } [get_ports { rst1 }]; #IO_L15N_T2_DQS_34 Schematic=SW1
set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { rst2 }]; #IO_L19P_T3_34 Schematic=SW2