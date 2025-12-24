read_verilog mbc1.sv
read_xdc constraints.xdc
synth_design -top mbc1 -part xc7z020clg400-1

opt_design
place_design
route_design

write_bitstream -force mbc1.bit

report_utilization
report_timing_summary