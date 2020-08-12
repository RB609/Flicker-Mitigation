`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Encode_B_struct
module encode_b_struct (
  input [1-1:0] gateway_in,
  input clk_5,
  input ce_5,
  input clk_6,
  input ce_6,
  input clk_30,
  input ce_30,
  output [1-1:0] gateway_out
);
  wire [5-1:0] serial_to_parallel_dout_net;
  wire [16-1:0] mux_y_net;
  wire clk_net;
  wire [1-1:0] gateway_in_net;
  wire [2-1:0] concat_y_net;
  wire src_clk_net;
  wire [1-1:0] parallel_to_serial_dout_net;
  wire src_ce_net;
  wire [1-1:0] mcode_bit2_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire ce_net;
  wire [1-1:0] mcode_bit1_net;
  wire [1-1:0] slice2_y_net;
  wire [16-1:0] constant2_op_net;
  wire [16-1:0] constant1_op_net;
  wire [1-1:0] slice_y_net;
  wire [1-1:0] slice1_y_net;
  wire [1-1:0] logical1_y_net;
  wire [16-1:0] constant_op_net;
  wire [1-1:0] logical3_y_net;
  wire [1-1:0] logical2_y_net;
  wire [1-1:0] slice3_y_net;
  wire [6-1:0] concat1_y_net;
  wire [1-1:0] mcode_flag_net;
  wire [1-1:0] slice4_y_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] logical4_y_net;
  assign gateway_in_net = gateway_in;
  assign gateway_out = parallel_to_serial_dout_net;
  assign dest_clk_net = clk_5;
  assign dest_ce_net = ce_5;
  assign src_clk_net = clk_6;
  assign src_ce_net = ce_6;
  assign clk_net = clk_30;
  assign ce_net = ce_30;
  sysgen_concat_cf3df4d709 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(mcode_bit1_net),
    .in1(mcode_bit2_net),
    .y(concat_y_net)
  );
  sysgen_concat_0220f7da85 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(logical_y_net),
    .in1(logical1_y_net),
    .in2(logical2_y_net),
    .in3(logical3_y_net),
    .in4(logical4_y_net),
    .in5(mcode_flag_net),
    .y(concat1_y_net)
  );
  sysgen_constant_268b65cbf9 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_f910979084 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_f21c27b47c constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_logical_c3d95aa4fd logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice_y_net),
    .d1(mcode_flag_net),
    .y(logical_y_net)
  );
  sysgen_logical_c3d95aa4fd logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice1_y_net),
    .d1(mcode_flag_net),
    .y(logical1_y_net)
  );
  sysgen_logical_c3d95aa4fd logical2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice2_y_net),
    .d1(mcode_flag_net),
    .y(logical2_y_net)
  );
  sysgen_logical_c3d95aa4fd logical3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice3_y_net),
    .d1(mcode_flag_net),
    .y(logical3_y_net)
  );
  sysgen_logical_c3d95aa4fd logical4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice4_y_net),
    .d1(mcode_flag_net),
    .y(logical4_y_net)
  );
  sysgen_mcode_block_dd56acb2aa mcode (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .i0(slice_y_net),
    .i1(slice1_y_net),
    .i2(slice2_y_net),
    .i3(slice3_y_net),
    .i4(slice4_y_net),
    .counter(mux_y_net),
    .flag(mcode_flag_net),
    .bit1(mcode_bit1_net),
    .bit2(mcode_bit2_net)
  );
  sysgen_mux_6be7a08cac mux (
    .clr(1'b0),
    .sel(concat_y_net),
    .d0(constant_op_net),
    .d1(constant2_op_net),
    .d2(constant1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_y_net)
  );
  encode_b_xls2p #(
    .din_arith(`xlUnsigned),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(`xlUnsigned),
    .dout_bin_pt(0),
    .dout_width(5),
    .latency(1),
    .lsb_first(0),
    .num_inputs(5)
  )
  serial_to_parallel (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .din(gateway_in_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .dout(serial_to_parallel_dout_net)
  );
  encode_b_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  slice (
    .x(serial_to_parallel_dout_net),
    .y(slice_y_net)
  );
  encode_b_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  slice1 (
    .x(serial_to_parallel_dout_net),
    .y(slice1_y_net)
  );
  encode_b_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  slice2 (
    .x(serial_to_parallel_dout_net),
    .y(slice2_y_net)
  );
  encode_b_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  slice3 (
    .x(serial_to_parallel_dout_net),
    .y(slice3_y_net)
  );
  encode_b_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  slice4 (
    .x(serial_to_parallel_dout_net),
    .y(slice4_y_net)
  );
  encode_b_xlp2s #(
    .din_arith(`xlUnsigned),
    .din_bin_pt(0),
    .din_width(6),
    .dout_arith(`xlUnsigned),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(1),
    .lsb_first(0),
    .num_outputs(6)
  )
  parallel_to_serial (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .din(concat1_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .dout(parallel_to_serial_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module encode_b_default_clock_driver (
  input encode_b_sysclk,
  input encode_b_sysce,
  input encode_b_sysclr,
  output encode_b_clk5,
  output encode_b_ce5,
  output encode_b_clk6,
  output encode_b_ce6,
  output encode_b_clk30,
  output encode_b_ce30
);
  xlclockdriver #(
    .period(5),
    .log_2_period(3)
  )
  clockdriver_x1 (
    .sysclk(encode_b_sysclk),
    .sysce(encode_b_sysce),
    .sysclr(encode_b_sysclr),
    .clk(encode_b_clk5),
    .ce(encode_b_ce5)
  );
  xlclockdriver #(
    .period(6),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(encode_b_sysclk),
    .sysce(encode_b_sysce),
    .sysclr(encode_b_sysclr),
    .clk(encode_b_clk6),
    .ce(encode_b_ce6)
  );
  xlclockdriver #(
    .period(30),
    .log_2_period(5)
  )
  clockdriver (
    .sysclk(encode_b_sysclk),
    .sysce(encode_b_sysce),
    .sysclr(encode_b_sysclr),
    .clk(encode_b_clk30),
    .ce(encode_b_ce30)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "encode_b,sysgen_core_2018_3,{,compilation=HDL Netlist,block_icon_display=Default,family=artix7,part=xc7a35t,speed=-1,package=csg324,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=8.33333e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=inf,concat=2,constant=3,logical=5,mcode=1,mux=1,p2s=1,s2p=1,slice=5,}" *)
module encode_b (
  input [1-1:0] gateway_in,
  input clk,
  output [1-1:0] gateway_out
);
  wire ce_5_net;
  wire clk_6_net;
  wire clk_30_net;
  wire ce_6_net;
  wire ce_30_net;
  wire clk_5_net;
  encode_b_default_clock_driver encode_b_default_clock_driver (
    .encode_b_sysclk(clk),
    .encode_b_sysce(1'b1),
    .encode_b_sysclr(1'b0),
    .encode_b_clk5(clk_5_net),
    .encode_b_ce5(ce_5_net),
    .encode_b_clk6(clk_6_net),
    .encode_b_ce6(ce_6_net),
    .encode_b_clk30(clk_30_net),
    .encode_b_ce30(ce_30_net)
  );
  encode_b_struct encode_b_struct (
    .gateway_in(gateway_in),
    .clk_5(clk_5_net),
    .ce_5(ce_5_net),
    .clk_6(clk_6_net),
    .ce_6(ce_6_net),
    .clk_30(clk_30_net),
    .ce_30(ce_30_net),
    .gateway_out(gateway_out)
  );
endmodule
