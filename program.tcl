open_hw_manager
connect_hw_server
open_hw_target

set_property PROGRAM.FILE {mbc1.bit} [get_hw_devices xc7z020_1]
program_hw_devices [get_hw_devices xc7z020_1]
close_hw_target