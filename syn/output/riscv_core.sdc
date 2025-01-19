###################################################################

# Created by write_sdc on Sat Jan  6 03:44:58 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_max_area 0
create_clock [get_ports clk_i]  -period 3.5  -waveform {0 1.75}
set_clock_uncertainty 0.035  [get_clocks clk_i]
set_false_path -hold   -from [list [get_ports rst_i] [get_ports {mem_d_data_rd_i[31]}] [get_ports    \
{mem_d_data_rd_i[30]}] [get_ports {mem_d_data_rd_i[29]}] [get_ports            \
{mem_d_data_rd_i[28]}] [get_ports {mem_d_data_rd_i[27]}] [get_ports            \
{mem_d_data_rd_i[26]}] [get_ports {mem_d_data_rd_i[25]}] [get_ports            \
{mem_d_data_rd_i[24]}] [get_ports {mem_d_data_rd_i[23]}] [get_ports            \
{mem_d_data_rd_i[22]}] [get_ports {mem_d_data_rd_i[21]}] [get_ports            \
{mem_d_data_rd_i[20]}] [get_ports {mem_d_data_rd_i[19]}] [get_ports            \
{mem_d_data_rd_i[18]}] [get_ports {mem_d_data_rd_i[17]}] [get_ports            \
{mem_d_data_rd_i[16]}] [get_ports {mem_d_data_rd_i[15]}] [get_ports            \
{mem_d_data_rd_i[14]}] [get_ports {mem_d_data_rd_i[13]}] [get_ports            \
{mem_d_data_rd_i[12]}] [get_ports {mem_d_data_rd_i[11]}] [get_ports            \
{mem_d_data_rd_i[10]}] [get_ports {mem_d_data_rd_i[9]}] [get_ports             \
{mem_d_data_rd_i[8]}] [get_ports {mem_d_data_rd_i[7]}] [get_ports              \
{mem_d_data_rd_i[6]}] [get_ports {mem_d_data_rd_i[5]}] [get_ports              \
{mem_d_data_rd_i[4]}] [get_ports {mem_d_data_rd_i[3]}] [get_ports              \
{mem_d_data_rd_i[2]}] [get_ports {mem_d_data_rd_i[1]}] [get_ports              \
{mem_d_data_rd_i[0]}] [get_ports mem_d_accept_i] [get_ports mem_d_ack_i]       \
[get_ports mem_d_error_i] [get_ports {mem_d_resp_tag_i[10]}] [get_ports        \
{mem_d_resp_tag_i[9]}] [get_ports {mem_d_resp_tag_i[8]}] [get_ports            \
{mem_d_resp_tag_i[7]}] [get_ports {mem_d_resp_tag_i[6]}] [get_ports            \
{mem_d_resp_tag_i[5]}] [get_ports {mem_d_resp_tag_i[4]}] [get_ports            \
{mem_d_resp_tag_i[3]}] [get_ports {mem_d_resp_tag_i[2]}] [get_ports            \
{mem_d_resp_tag_i[1]}] [get_ports {mem_d_resp_tag_i[0]}] [get_ports            \
mem_i_accept_i] [get_ports mem_i_valid_i] [get_ports mem_i_error_i] [get_ports \
{mem_i_inst_i[31]}] [get_ports {mem_i_inst_i[30]}] [get_ports                  \
{mem_i_inst_i[29]}] [get_ports {mem_i_inst_i[28]}] [get_ports                  \
{mem_i_inst_i[27]}] [get_ports {mem_i_inst_i[26]}] [get_ports                  \
{mem_i_inst_i[25]}] [get_ports {mem_i_inst_i[24]}] [get_ports                  \
{mem_i_inst_i[23]}] [get_ports {mem_i_inst_i[22]}] [get_ports                  \
{mem_i_inst_i[21]}] [get_ports {mem_i_inst_i[20]}] [get_ports                  \
{mem_i_inst_i[19]}] [get_ports {mem_i_inst_i[18]}] [get_ports                  \
{mem_i_inst_i[17]}] [get_ports {mem_i_inst_i[16]}] [get_ports                  \
{mem_i_inst_i[15]}] [get_ports {mem_i_inst_i[14]}] [get_ports                  \
{mem_i_inst_i[13]}] [get_ports {mem_i_inst_i[12]}] [get_ports                  \
{mem_i_inst_i[11]}] [get_ports {mem_i_inst_i[10]}] [get_ports                  \
{mem_i_inst_i[9]}] [get_ports {mem_i_inst_i[8]}] [get_ports {mem_i_inst_i[7]}] \
[get_ports {mem_i_inst_i[6]}] [get_ports {mem_i_inst_i[5]}] [get_ports         \
{mem_i_inst_i[4]}] [get_ports {mem_i_inst_i[3]}] [get_ports {mem_i_inst_i[2]}] \
[get_ports {mem_i_inst_i[1]}] [get_ports {mem_i_inst_i[0]}] [get_ports intr_i] \
[get_ports {reset_vector_i[31]}] [get_ports {reset_vector_i[30]}] [get_ports   \
{reset_vector_i[29]}] [get_ports {reset_vector_i[28]}] [get_ports              \
{reset_vector_i[27]}] [get_ports {reset_vector_i[26]}] [get_ports              \
{reset_vector_i[25]}] [get_ports {reset_vector_i[24]}] [get_ports              \
{reset_vector_i[23]}] [get_ports {reset_vector_i[22]}] [get_ports              \
{reset_vector_i[21]}] [get_ports {reset_vector_i[20]}] [get_ports              \
{reset_vector_i[19]}] [get_ports {reset_vector_i[18]}] [get_ports              \
{reset_vector_i[17]}] [get_ports {reset_vector_i[16]}] [get_ports              \
{reset_vector_i[15]}] [get_ports {reset_vector_i[14]}] [get_ports              \
{reset_vector_i[13]}] [get_ports {reset_vector_i[12]}] [get_ports              \
{reset_vector_i[11]}] [get_ports {reset_vector_i[10]}] [get_ports              \
{reset_vector_i[9]}] [get_ports {reset_vector_i[8]}] [get_ports                \
{reset_vector_i[7]}] [get_ports {reset_vector_i[6]}] [get_ports                \
{reset_vector_i[5]}] [get_ports {reset_vector_i[4]}] [get_ports                \
{reset_vector_i[3]}] [get_ports {reset_vector_i[2]}] [get_ports                \
{reset_vector_i[1]}] [get_ports {reset_vector_i[0]}] [get_ports                \
{cpu_id_i[31]}] [get_ports {cpu_id_i[30]}] [get_ports {cpu_id_i[29]}]          \
[get_ports {cpu_id_i[28]}] [get_ports {cpu_id_i[27]}] [get_ports               \
{cpu_id_i[26]}] [get_ports {cpu_id_i[25]}] [get_ports {cpu_id_i[24]}]          \
[get_ports {cpu_id_i[23]}] [get_ports {cpu_id_i[22]}] [get_ports               \
{cpu_id_i[21]}] [get_ports {cpu_id_i[20]}] [get_ports {cpu_id_i[19]}]          \
[get_ports {cpu_id_i[18]}] [get_ports {cpu_id_i[17]}] [get_ports               \
{cpu_id_i[16]}] [get_ports {cpu_id_i[15]}] [get_ports {cpu_id_i[14]}]          \
[get_ports {cpu_id_i[13]}] [get_ports {cpu_id_i[12]}] [get_ports               \
{cpu_id_i[11]}] [get_ports {cpu_id_i[10]}] [get_ports {cpu_id_i[9]}]           \
[get_ports {cpu_id_i[8]}] [get_ports {cpu_id_i[7]}] [get_ports {cpu_id_i[6]}]  \
[get_ports {cpu_id_i[5]}] [get_ports {cpu_id_i[4]}] [get_ports {cpu_id_i[3]}]  \
[get_ports {cpu_id_i[2]}] [get_ports {cpu_id_i[1]}] [get_ports {cpu_id_i[0]}]]
set_false_path -hold   -to [list [get_ports {mem_d_addr_o[31]}] [get_ports {mem_d_addr_o[30]}]       \
[get_ports {mem_d_addr_o[29]}] [get_ports {mem_d_addr_o[28]}] [get_ports       \
{mem_d_addr_o[27]}] [get_ports {mem_d_addr_o[26]}] [get_ports                  \
{mem_d_addr_o[25]}] [get_ports {mem_d_addr_o[24]}] [get_ports                  \
{mem_d_addr_o[23]}] [get_ports {mem_d_addr_o[22]}] [get_ports                  \
{mem_d_addr_o[21]}] [get_ports {mem_d_addr_o[20]}] [get_ports                  \
{mem_d_addr_o[19]}] [get_ports {mem_d_addr_o[18]}] [get_ports                  \
{mem_d_addr_o[17]}] [get_ports {mem_d_addr_o[16]}] [get_ports                  \
{mem_d_addr_o[15]}] [get_ports {mem_d_addr_o[14]}] [get_ports                  \
{mem_d_addr_o[13]}] [get_ports {mem_d_addr_o[12]}] [get_ports                  \
{mem_d_addr_o[11]}] [get_ports {mem_d_addr_o[10]}] [get_ports                  \
{mem_d_addr_o[9]}] [get_ports {mem_d_addr_o[8]}] [get_ports {mem_d_addr_o[7]}] \
[get_ports {mem_d_addr_o[6]}] [get_ports {mem_d_addr_o[5]}] [get_ports         \
{mem_d_addr_o[4]}] [get_ports {mem_d_addr_o[3]}] [get_ports {mem_d_addr_o[2]}] \
[get_ports {mem_d_addr_o[1]}] [get_ports {mem_d_addr_o[0]}] [get_ports         \
{mem_d_data_wr_o[31]}] [get_ports {mem_d_data_wr_o[30]}] [get_ports            \
{mem_d_data_wr_o[29]}] [get_ports {mem_d_data_wr_o[28]}] [get_ports            \
{mem_d_data_wr_o[27]}] [get_ports {mem_d_data_wr_o[26]}] [get_ports            \
{mem_d_data_wr_o[25]}] [get_ports {mem_d_data_wr_o[24]}] [get_ports            \
{mem_d_data_wr_o[23]}] [get_ports {mem_d_data_wr_o[22]}] [get_ports            \
{mem_d_data_wr_o[21]}] [get_ports {mem_d_data_wr_o[20]}] [get_ports            \
{mem_d_data_wr_o[19]}] [get_ports {mem_d_data_wr_o[18]}] [get_ports            \
{mem_d_data_wr_o[17]}] [get_ports {mem_d_data_wr_o[16]}] [get_ports            \
{mem_d_data_wr_o[15]}] [get_ports {mem_d_data_wr_o[14]}] [get_ports            \
{mem_d_data_wr_o[13]}] [get_ports {mem_d_data_wr_o[12]}] [get_ports            \
{mem_d_data_wr_o[11]}] [get_ports {mem_d_data_wr_o[10]}] [get_ports            \
{mem_d_data_wr_o[9]}] [get_ports {mem_d_data_wr_o[8]}] [get_ports              \
{mem_d_data_wr_o[7]}] [get_ports {mem_d_data_wr_o[6]}] [get_ports              \
{mem_d_data_wr_o[5]}] [get_ports {mem_d_data_wr_o[4]}] [get_ports              \
{mem_d_data_wr_o[3]}] [get_ports {mem_d_data_wr_o[2]}] [get_ports              \
{mem_d_data_wr_o[1]}] [get_ports {mem_d_data_wr_o[0]}] [get_ports mem_d_rd_o]  \
[get_ports {mem_d_wr_o[3]}] [get_ports {mem_d_wr_o[2]}] [get_ports             \
{mem_d_wr_o[1]}] [get_ports {mem_d_wr_o[0]}] [get_ports mem_d_cacheable_o]     \
[get_ports {mem_d_req_tag_o[10]}] [get_ports {mem_d_req_tag_o[9]}] [get_ports  \
{mem_d_req_tag_o[8]}] [get_ports {mem_d_req_tag_o[7]}] [get_ports              \
{mem_d_req_tag_o[6]}] [get_ports {mem_d_req_tag_o[5]}] [get_ports              \
{mem_d_req_tag_o[4]}] [get_ports {mem_d_req_tag_o[3]}] [get_ports              \
{mem_d_req_tag_o[2]}] [get_ports {mem_d_req_tag_o[1]}] [get_ports              \
{mem_d_req_tag_o[0]}] [get_ports mem_d_invalidate_o] [get_ports mem_d_flush_o] \
[get_ports mem_i_rd_o] [get_ports mem_i_flush_o] [get_ports                    \
mem_i_invalidate_o] [get_ports {mem_i_pc_o[31]}] [get_ports {mem_i_pc_o[30]}]  \
[get_ports {mem_i_pc_o[29]}] [get_ports {mem_i_pc_o[28]}] [get_ports           \
{mem_i_pc_o[27]}] [get_ports {mem_i_pc_o[26]}] [get_ports {mem_i_pc_o[25]}]    \
[get_ports {mem_i_pc_o[24]}] [get_ports {mem_i_pc_o[23]}] [get_ports           \
{mem_i_pc_o[22]}] [get_ports {mem_i_pc_o[21]}] [get_ports {mem_i_pc_o[20]}]    \
[get_ports {mem_i_pc_o[19]}] [get_ports {mem_i_pc_o[18]}] [get_ports           \
{mem_i_pc_o[17]}] [get_ports {mem_i_pc_o[16]}] [get_ports {mem_i_pc_o[15]}]    \
[get_ports {mem_i_pc_o[14]}] [get_ports {mem_i_pc_o[13]}] [get_ports           \
{mem_i_pc_o[12]}] [get_ports {mem_i_pc_o[11]}] [get_ports {mem_i_pc_o[10]}]    \
[get_ports {mem_i_pc_o[9]}] [get_ports {mem_i_pc_o[8]}] [get_ports             \
{mem_i_pc_o[7]}] [get_ports {mem_i_pc_o[6]}] [get_ports {mem_i_pc_o[5]}]       \
[get_ports {mem_i_pc_o[4]}] [get_ports {mem_i_pc_o[3]}] [get_ports             \
{mem_i_pc_o[2]}] [get_ports {mem_i_pc_o[1]}] [get_ports {mem_i_pc_o[0]}]]
set_input_delay -clock clk_i  -max 0.07  [get_ports rst_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[31]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[30]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[29]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[28]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[27]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[26]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[25]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[24]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[23]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[22]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[21]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[20]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[19]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[18]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[17]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[16]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[15]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[14]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[13]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[12]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[11]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[10]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[9]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[8]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[7]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[6]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[5]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[4]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[3]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[2]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[1]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_rd_i[0]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_d_accept_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_d_ack_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_d_error_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[10]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[9]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[8]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[7]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[6]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[5]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[4]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[3]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[2]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[1]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_d_resp_tag_i[0]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_i_accept_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_i_valid_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports mem_i_error_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[31]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[30]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[29]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[28]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[27]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[26]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[25]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[24]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[23]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[22]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[21]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[20]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[19]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[18]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[17]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[16]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[15]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[14]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[13]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[12]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[11]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[10]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[9]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[8]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[7]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[6]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[5]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[4]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[3]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[2]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[1]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {mem_i_inst_i[0]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports intr_i]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[31]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[30]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[29]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[28]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[27]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[26]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[25]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[24]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[23]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[22]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[21]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[20]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[19]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[18]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[17]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[16]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[15]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[14]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[13]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[12]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[11]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[10]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[9]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[8]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[7]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[6]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[5]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[4]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[3]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[2]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[1]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {reset_vector_i[0]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[31]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[30]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[29]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[28]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[27]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[26]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[25]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[24]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[23]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[22]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[21]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[20]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[19]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[18]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[17]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[16]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[15]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[14]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[13]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[12]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[11]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[10]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[9]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[8]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[7]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[6]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[5]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[4]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[3]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[2]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[1]}]
set_input_delay -clock clk_i  -max 0.07  [get_ports {cpu_id_i[0]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[31]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[30]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[29]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[28]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[27]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[26]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[25]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[24]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[23]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[22]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[21]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[20]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[19]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[18]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[17]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[16]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[15]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[14]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[13]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[12]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[11]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[10]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[9]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[8]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[7]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[6]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[5]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[4]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[3]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[2]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[1]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_addr_o[0]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[31]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[30]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[29]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[28]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[27]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[26]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[25]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[24]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[23]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[22]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[21]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[20]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[19]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[18]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[17]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[16]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[15]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[14]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[13]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[12]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[11]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[10]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[9]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[8]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[7]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[6]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[5]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[4]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[3]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[2]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[1]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_data_wr_o[0]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_d_rd_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_wr_o[3]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_wr_o[2]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_wr_o[1]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_wr_o[0]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_d_cacheable_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[10]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[9]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[8]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[7]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[6]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[5]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[4]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[3]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[2]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[1]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_d_req_tag_o[0]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_d_invalidate_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_d_flush_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_i_rd_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_i_flush_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports mem_i_invalidate_o]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[31]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[30]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[29]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[28]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[27]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[26]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[25]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[24]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[23]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[22]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[21]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[20]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[19]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[18]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[17]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[16]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[15]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[14]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[13]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[12]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[11]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[10]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[9]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[8]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[7]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[6]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[5]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[4]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[3]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[2]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[1]}]
set_output_delay -clock clk_i  -max 0.07  [get_ports {mem_i_pc_o[0]}]
