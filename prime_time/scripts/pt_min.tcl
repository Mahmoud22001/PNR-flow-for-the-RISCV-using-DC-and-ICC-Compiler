# Set your top module name as design
set design riscv_core

# Set the link_library Synopsys application variables
set_app_var search_path "/home/IC/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM \
			 /home/IC/Desktop/RISCV/rtl"
set link_path  "* NangateOpenCellLibrary_ff1p25v0c.db"

# Read post PnR Netlist
read_verilog	../pnr/output/${design}_icc.v

current_design $design
# Link 
link

# Read the timing constraints file form synthesis step and parasitics from pnr
read_sdc  ../syn/output/${design}.sdc

#check setup
read_parasitics ../pnr/output/RISCV.spef.min 

#update Timing and report
set timing_save_pin_arrival_and_required true 
update_timing 


#fixing

fix_eco_timing -type hold -method insert_buffer -buffer_list {BUF_X4}


write_changes -format icctcl -output ./eco1_min.tcl
save_session ${design}_min_session

report_constraint -all_violators -significant_digits 4 > ./output/${design}_const_min.rpt
report_timing -delay_type min > ./output/setup.rpt

write_sdf ./${design}_min.sdf
