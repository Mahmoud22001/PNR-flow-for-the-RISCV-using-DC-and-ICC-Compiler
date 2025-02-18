# Set clock period to constrain path-2-path paths
create_clock -name clk_i -period 3.5 [get_ports clk_i]
set_dont_touch_network [get_clocks clk_i]

# Set input delay to constrain input paths to first register banks; if any 
set_input_delay -max 0.07 -clock [get_clocks clk_i] [remove_from_collection [all_inputs] [get_ports clk_i]]

# Set output delay to constrain output banks of registers to output primary ports; if any 
set_output_delay -max 0.07 -clock [get_clocks clk_i] [all_outputs]

# Estimate any clock non-idealities; such as future clock skews, jitter, and any margin
set_clock_uncertainty 0.035 [get_clocks]

# Disable hold time checking and optimization for all paths in the design
set_false_path -hold -from [remove_from_collection [all_inputs] [get_ports clk_i]]
set_false_path -hold -to [all_outputs]

# Set the maximum area of the design to 0 to get the smallest possible area
set_max_area 0
