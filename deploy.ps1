rm *.bit
vivado -mode batch -source build.tcl
vivado -mode batch -source program.tcl
