set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 8.00 [get_ports { clk }];

# set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[0] }];
# set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led[1] }];
# set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led[2] }];
# set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { led[3] }];

# set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }];
# set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }];
# set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }];
# set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }];

set_property -dict { PACKAGE_PIN Y11 IOSTANDARD LVCMOS33 } [get_ports { status_led[r] }];
set_property -dict { PACKAGE_PIN T5 IOSTANDARD LVCMOS33 } [get_ports { status_led[g] }];
set_property -dict { PACKAGE_PIN Y12 IOSTANDARD LVCMOS33 } [get_ports { status_led[b] }];
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33 PULLUP TRUE } [get_ports { data_dir }];
# set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 PULLUP TRUE } [get_ports { output_enable }];

# JB - data bus

set_property -dict { PACKAGE_PIN V8 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[0] }];
set_property -dict { PACKAGE_PIN W8 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[1] }];
set_property -dict { PACKAGE_PIN U7 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[2] }];
set_property -dict { PACKAGE_PIN V7 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[3] }];
set_property -dict { PACKAGE_PIN Y7 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[4] }];
set_property -dict { PACKAGE_PIN Y6 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[5] }];
set_property -dict { PACKAGE_PIN V6 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[6] }];
set_property -dict { PACKAGE_PIN W6 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { data[7] }];

# JC - address bus part 1
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[0] }];
set_property -dict { PACKAGE_PIN W15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[1] }];
set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[2] }];
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[3] }];
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[4] }];
set_property -dict { PACKAGE_PIN Y14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[5] }];
set_property -dict { PACKAGE_PIN T12 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[6] }];
set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[7] }];

# JD - address bus part 2
set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[8] }];
set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[9] }];
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[10] }];
set_property -dict { PACKAGE_PIN R14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[11] }];
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[12] }];
set_property -dict { PACKAGE_PIN U15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[13] }];
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[14] }];
set_property -dict { PACKAGE_PIN V18 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { addr[15] }];

# JE - cartridge pins general
set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { gb_clk }];
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { wr }];
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { rd }];
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { cs }];
set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { rst }]; 
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 PULLDOWN TRUE } [get_ports { vin }];

# clock
# create_clock -period 238.419 -name clk [get_ports { clk }];
