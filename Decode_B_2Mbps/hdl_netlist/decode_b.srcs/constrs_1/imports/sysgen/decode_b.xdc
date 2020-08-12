set rateCedecode_b5 decode_b_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_b5 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_b5/Q]] IS_ENABLE]]
set rateCedecode_b6 decode_b_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_b6 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_b6/Q]] IS_ENABLE]]
set rateCedecode_b30 decode_b_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsdecode_b30 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCedecode_b30/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b5 -setup 5
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b5 -hold 4
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b6 -setup 1
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b6 -hold 0
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b30 -setup 5
set_multicycle_path -from $rateCellsdecode_b5 -to $rateCellsdecode_b30 -hold 4
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b5 -setup 1
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b5 -hold 0
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b6 -setup 6
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b6 -hold 5
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b30 -setup 6
set_multicycle_path -from $rateCellsdecode_b6 -to $rateCellsdecode_b30 -hold 5
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b5 -setup 5
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b5 -hold 4
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b6 -setup 6
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b6 -hold 5
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b30 -setup 30
set_multicycle_path -from $rateCellsdecode_b30 -to $rateCellsdecode_b30 -hold 29
