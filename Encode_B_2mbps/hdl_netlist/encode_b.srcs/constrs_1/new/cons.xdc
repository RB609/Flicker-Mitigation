set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk}];

set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { gateway_in }]; #IO_0_15 Sch=ja[1]
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { gateway_out }]; #IO_L4P_T0_15 Sch=ja[2]