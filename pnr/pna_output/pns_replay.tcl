# reset
set_fp_rail_constraints -remove_all_layers
remove_fp_virtual_pad -all              
set_fp_rail_strategy -reset             
set_fp_block_ring_constraints -remove_all
set_fp_rail_region_constraints  -remove 
# global constraints
set_fp_rail_constraints -set_global 

# layer constraints
set_fp_rail_constraints -add_layer  -layer metal10 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal9 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal8 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal7 -direction horizontal -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 
set_fp_rail_constraints -add_layer  -layer metal6 -direction vertical -max_strap 128 -min_strap 20 -max_width 5.000000 -min_width 2.500000 -spacing minimum 

# ring and strap constraints
set_fp_rail_constraints  -set_ring -nets { VDD VSS } -horizontal_ring_layer { metal7,metal9 } -vertical_ring_layer { metal8,metal10 } -ring_width 5.000000 -ring_spacing 0.800000 -ring_offset 0.800000 -extend_strap core_ring 

# strategies
set_fp_rail_strategy  -use_tluplus true 

# block ring constraints

# regions

# virtual pads
create_fp_virtual_pad -net VDD -point { -0.655500 372.440002 }
create_fp_virtual_pad -net VDD -point { -2.623000 473.442993 }
create_fp_virtual_pad -net VDD -point { -1.311500 305.541901 }
create_fp_virtual_pad -net VDD -point { -2.623000 212.409500 }
create_fp_virtual_pad -net VDD -point { -2.623000 96.977997 }
create_fp_virtual_pad -net VDD -point { 90.509003 -1.401000 }
create_fp_virtual_pad -net VDD -point { 200.694000 -4.024500 }
create_fp_virtual_pad -net VDD -point { 318.748993 -0.089500 }
create_fp_virtual_pad -net VDD -point { 439.427490 -1.401000 }
create_fp_virtual_pad -net VDD -point { 526.001526 60.249500 }
create_fp_virtual_pad -net VDD -point { 527.312988 156.005493 }
create_fp_virtual_pad -net VDD -point { 523.377991 280.619507 }
create_fp_virtual_pad -net VDD -point { 523.377991 426.220490 }
create_fp_virtual_pad -net VDD -point { 443.363007 529.846985 }
create_fp_virtual_pad -net VDD -point { 326.619507 532.470520 }
create_fp_virtual_pad -net VDD -point { 205.940399 532.470520 }
create_fp_virtual_pad -net VDD -point { 64.274498 532.470520 }
create_fp_virtual_pad -net VSS -point { 124.613998 529.846985 }
create_fp_virtual_pad -net VSS -point { -5.246500 531.158508 }
create_fp_virtual_pad -net VSS -point { 267.592010 529.846985 }
create_fp_virtual_pad -net VSS -point { 383.023499 532.470520 }
create_fp_virtual_pad -net VSS -point { 523.377991 531.158508 }
create_fp_virtual_pad -net VSS -point { -2.623000 426.220490 }
create_fp_virtual_pad -net VSS -point { -1.311500 263.566986 }
create_fp_virtual_pad -net VSS -point { -1.967500 139.281006 }
create_fp_virtual_pad -net VSS -point { -2.623000 1.222000 }
create_fp_virtual_pad -net VSS -point { 267.592010 -1.401000 }
create_fp_virtual_pad -net VSS -point { 141.666000 -2.713000 }
create_fp_virtual_pad -net VSS -point { 524.033508 -0.089000 }
create_fp_virtual_pad -net VSS -point { 524.689026 222.903503 }
create_fp_virtual_pad -net VSS -point { 526.000977 106.816002 }
create_fp_virtual_pad -net VSS -point { 524.033508 369.161011 }

# synthesize_fp_rail 
synthesize_fp_rail -nets { VDD VSS } -voltage_supply 1.100000 -power_budget 10.000000  -target_voltage_drop 22.000000  
