set rateCefunc15 func1_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsfunc15 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCefunc15/Q]] IS_ENABLE]]
set rateCefunc16 func1_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsfunc16 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCefunc16/Q]] IS_ENABLE]]
set rateCefunc130 func1_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsfunc130 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCefunc130/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc15 -setup 5
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc15 -hold 4
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc16 -setup 1
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc16 -hold 0
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc130 -setup 5
set_multicycle_path -from $rateCellsfunc15 -to $rateCellsfunc130 -hold 4
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc15 -setup 1
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc15 -hold 0
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc16 -setup 6
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc16 -hold 5
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc130 -setup 6
set_multicycle_path -from $rateCellsfunc16 -to $rateCellsfunc130 -hold 5
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc15 -setup 5
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc15 -hold 4
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc16 -setup 6
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc16 -hold 5
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc130 -setup 30
set_multicycle_path -from $rateCellsfunc130 -to $rateCellsfunc130 -hold 29
