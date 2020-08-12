`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Decode_B_struct
module decode_b_struct (
  input [1-1:0] gateway_in,
  input clk_5,
  input ce_5,
  input clk_6,
  input ce_6,
  input clk_30,
  input ce_30,
  output [1-1:0] gateway_out
);
  wire [1-1:0] slice1_y_net;
  wire [1-1:0] logical3_y_net;
  wire [1-1:0] logical4_y_net;
  wire [1-1:0] slice5_y_net;
  wire [1-1:0] slice4_y_net;
  wire [1-1:0] slice_y_net;
  wire [1-1:0] slice3_y_net;
  wire [1-1:0] logical1_y_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] logical2_y_net;
  wire [5-1:0] concat_y_net;
  wire [1-1:0] slice2_y_net;
  wire [6-1:0] serial_to_parallel_dout_net;
  wire src_ce_net;
  wire src_clk_net;
  wire [1-1:0] parallel_to_serial_dout_net;
  wire src_clk_net_x0;
  wire [1-1:0] gateway_in_net;
  wire dest_clk_net;
  wire dest_ce_net;
  wire src_ce_net_x0;
  assign gateway_in_net = gateway_in;
  assign gateway_out = parallel_to_serial_dout_net;
  assign src_clk_net = clk_5;
  assign src_ce_net = ce_5;
  assign dest_clk_net = clk_6;
  assign dest_ce_net = ce_6;
  assign src_clk_net_x0 = clk_30;
  assign src_ce_net_x0 = ce_30;
  sysgen_concat_57ef5461e6 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(logical_y_net),
    .in1(logical1_y_net),
    .in2(logical2_y_net),
    .in3(logical3_y_net),
    .in4(logical4_y_net),
    .y(concat_y_net)
  );
  sysgen_logical_e16e76389c logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice_y_net),
    .d1(slice5_y_net),
    .y(logical_y_net)
  );
  sysgen_logical_e16e76389c logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice1_y_net),
    .d1(slice5_y_net),
    .y(logical1_y_net)
  );
  sysgen_logical_e16e76389c logical2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice2_y_net),
    .d1(slice5_y_net),
    .y(logical2_y_net)
  );
  sysgen_logical_e16e76389c logical3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice3_y_net),
    .d1(slice5_y_net),
    .y(logical3_y_net)
  );
  sysgen_logical_e16e76389c logical4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(slice4_y_net),
    .d1(slice5_y_net),
    .y(logical4_y_net)
  );
  decode_b_xlp2s #(
    .din_arith(`xlUnsigned),
    .din_bin_pt(0),
    .din_width(5),
    .dout_arith(`xlUnsigned),
    .dout_bin_pt(0),
    .dout_width(1),
    .latency(0),
    .lsb_first(0),
    .num_outputs(5)
  )
  parallel_to_serial (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .din(concat_y_net),
    .src_clk(src_clk_net_x0),
    .src_ce(src_ce_net_x0),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .dout(parallel_to_serial_dout_net)
  );
  decode_b_xls2p #(
    .din_arith(`xlUnsigned),
    .din_bin_pt(0),
    .din_width(1),
    .dout_arith(`xlUnsigned),
    .dout_bin_pt(0),
    .dout_width(6),
    .latency(1),
    .lsb_first(0),
    .num_inputs(6)
  )
  serial_to_parallel (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .din(gateway_in_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(src_clk_net_x0),
    .dest_ce(src_ce_net_x0),
    .dout(serial_to_parallel_dout_net)
  );
  decode_b_xlslice #(
    .new_lsb(5),
    .new_msb(5),
    .x_width(6),
    .y_width(1)
  )
  slice (
    .x(serial_to_parallel_dout_net),
    .y(slice_y_net)
  );
  decode_b_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(6),
    .y_width(1)
  )
  slice1 (
    .x(serial_to_parallel_dout_net),
    .y(slice1_y_net)
  );
  decode_b_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(6),
    .y_width(1)
  )
  slice2 (
    .x(serial_to_parallel_dout_net),
    .y(slice2_y_net)
  );
  decode_b_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(6),
    .y_width(1)
  )
  slice3 (
    .x(serial_to_parallel_dout_net),
    .y(slice3_y_net)
  );
  decode_b_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(6),
    .y_width(1)
  )
  slice4 (
    .x(serial_to_parallel_dout_net),
    .y(slice4_y_net)
  );
  decode_b_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(6),
    .y_width(1)
  )
  slice5 (
    .x(serial_to_parallel_dout_net),
    .y(slice5_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module decode_b_default_clock_driver (
  input decode_b_sysclk,
  input decode_b_sysce,
  input decode_b_sysclr,
  output decode_b_clk5,
  output decode_b_ce5,
  output decode_b_clk6,
  output decode_b_ce6,
  output decode_b_clk30,
  output decode_b_ce30
);
  xlclockdriver #(
    .period(5),
    .log_2_period(3)
  )
  clockdriver_x1 (
    .sysclk(decode_b_sysclk),
    .sysce(decode_b_sysce),
    .sysclr(decode_b_sysclr),
    .clk(decode_b_clk5),
    .ce(decode_b_ce5)
  );
  xlclockdriver #(
    .period(6),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(decode_b_sysclk),
    .sysce(decode_b_sysce),
    .sysclr(decode_b_sysclr),
    .clk(decode_b_clk6),
    .ce(decode_b_ce6)
  );
  xlclockdriver #(
    .period(30),
    .log_2_period(5)
  )
  clockdriver (
    .sysclk(decode_b_sysclk),
    .sysce(decode_b_sysce),
    .sysclr(decode_b_sysclr),
    .clk(decode_b_clk30),
    .ce(decode_b_ce30)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "decode_b,sysgen_core_2018_3,{,compilation=HDL Netlist,block_icon_display=Default,family=artix7,part=xc7a35t,speed=-1,package=csg324,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-07,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,concat=1,logical=5,p2s=1,s2p=1,slice=6,}" *)
module decode_b (
  input [1-1:0] gateway_in,
  input clk,
  output [1-1:0] gateway_out
);
  wire clk_6_net;
  wire ce_5_net;
  wire ce_6_net;
  wire clk_30_net;
  wire ce_30_net;
  wire clk_5_net;
  decode_b_default_clock_driver decode_b_default_clock_driver (
    .decode_b_sysclk(clk),
    .decode_b_sysce(1'b1),
    .decode_b_sysclr(1'b0),
    .decode_b_clk5(clk_5_net),
    .decode_b_ce5(ce_5_net),
    .decode_b_clk6(clk_6_net),
    .decode_b_ce6(ce_6_net),
    .decode_b_clk30(clk_30_net),
    .decode_b_ce30(ce_30_net)
  );
  decode_b_struct decode_b_struct (
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
