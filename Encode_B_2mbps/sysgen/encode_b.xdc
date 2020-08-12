set rateCeencode_b5 encode_b_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsencode_b5 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeencode_b5/Q]] IS_ENABLE]]
set rateCeencode_b6 encode_b_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsencode_b6 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeencode_b6/Q]] IS_ENABLE]]
set rateCeencode_b30 encode_b_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsencode_b30 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeencode_b30/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b5 -setup 5
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b5 -hold 4
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b6 -setup 1
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b6 -hold 0
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b30 -setup 5
set_multicycle_path -from $rateCellsencode_b5 -to $rateCellsencode_b30 -hold 4
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b5 -setup 1
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b5 -hold 0
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b6 -setup 6
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b6 -hold 5
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b30 -setup 6
set_multicycle_path -from $rateCellsencode_b6 -to $rateCellsencode_b30 -hold 5
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b5 -setup 5
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b5 -hold 4
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b6 -setup 6
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b6 -hold 5
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b30 -setup 30
set_multicycle_path -from $rateCellsencode_b30 -to $rateCellsencode_b30 -hold 29
