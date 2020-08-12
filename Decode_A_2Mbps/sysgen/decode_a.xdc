set rateCedecode_a5 decode_a_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_a5 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_a5/Q]] IS_ENABLE]]
set rateCedecode_a6 decode_a_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_a6 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_a6/Q]] IS_ENABLE]]
set rateCedecode_a30 decode_a_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_a30 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_a30/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a5 -setup 5
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a5 -hold 4
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a6 -setup 1
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a6 -hold 0
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a30 -setup 5
set_multicycle_path -from $rateCellsdecode_a5 -to $rateCellsdecode_a30 -hold 4
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a5 -setup 1
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a5 -hold 0
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a6 -setup 6
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a6 -hold 5
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a30 -setup 6
set_multicycle_path -from $rateCellsdecode_a6 -to $rateCellsdecode_a30 -hold 5
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a5 -setup 5
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a5 -hold 4
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a6 -setup 6
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a6 -hold 5
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a30 -setup 30
set_multicycle_path -from $rateCellsdecode_a30 -to $rateCellsdecode_a30 -hold 29
