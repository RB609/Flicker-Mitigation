`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block func1_struct
module func1_struct (
  input [1-1:0] gateway_in,
  input clk_5,
  input ce_5,
  input clk_6,
  input ce_6,
  input clk_30,
  input ce_30,
  output [1-1:0] gateway_out1
);
  wire [1-1:0] gateway_in_net;
  wire [1-1:0] parallel_to_serial_dout_net;
  wire clk_net;
  wire src_clk_net;
  wire src_ce_net;
  wire dest_clk_net;
  wire ce_net;
  wire dest_ce_net;
  wire [6-1:0] concat_y_net;
  wire [1-1:0] slice5_y_net;
  wire [1-1:0] slice2_y_net;
  wire [1-1:0] counter_op_net;
  wire [1-1:0] mcode_a0_net;
  wire [1-1:0] mcode_a3_net;
  wire [1-1:0] mcode_a4_net;
  wire [1-1:0] mcode_a5_net;
  wire [1-1:0] mcode_a2_net;
  wire [5-1:0] serial_to_parallel_dout_net;
  wire [1-1:0] mcode_a1_net;
  wire [1-1:0] slice1_y_net;
  wire [1-1:0] mcode_flag_net;
  wire [1-1:0] slice4_y_net;
  wire [1-1:0] slice3_y_net;
  assign gateway_in_net = gateway_in;
  assign gateway_out1 = parallel_to_serial_dout_net;
  assign dest_clk_net = clk_5;
  assign dest_ce_net = ce_5;
  assign src_clk_net = clk_6;
  assign src_ce_net = ce_6;
  assign clk_net = clk_30;
  assign ce_net = ce_30;
  sysgen_concat_eab3c22517 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(mcode_a0_net),
    .in1(mcode_a1_net),
    .in2(mcode_a2_net),
    .in3(mcode_a3_net),
    .in4(mcode_a4_net),
    .in5(mcode_a5_net),
    .y(concat_y_net)
  );
  sysgen_counter_0295ecefb9 counter (
    .clr(1'b0),
    .en(mcode_flag_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_mcode_block_c8f2fcc048 mcode (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .i0(slice4_y_net),
    .i1(slice3_y_net),
    .i2(slice5_y_net),
    .i3(slice2_y_net),
    .i4(slice1_y_net),
    .index(counter_op_net),
    .a0(mcode_a0_net),
    .a1(mcode_a1_net),
    .a2(mcode_a2_net),
    .a3(mcode_a3_net),
    .a4(mcode_a4_net),
    .a5(mcode_a5_net),
    .flag(mcode_flag_net)
  );
  func1_xls2p #(
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
  func1_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(5),
    .y_width(1)
  )
  slice1 (
    .x(serial_to_parallel_dout_net),
    .y(slice1_y_net)
  );
  func1_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(5),
    .y_width(1)
  )
  slice2 (
    .x(serial_to_parallel_dout_net),
    .y(slice2_y_net)
  );
  func1_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(5),
    .y_width(1)
  )
  slice3 (
    .x(serial_to_parallel_dout_net),
    .y(slice3_y_net)
  );
  func1_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(5),
    .y_width(1)
  )
  slice4 (
    .x(serial_to_parallel_dout_net),
    .y(slice4_y_net)
  );
  func1_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(5),
    .y_width(1)
  )
  slice5 (
    .x(serial_to_parallel_dout_net),
    .y(slice5_y_net)
  );
  func1_xlp2s #(
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
    .din(concat_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .dout(parallel_to_serial_dout_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module func1_default_clock_driver (
  input func1_sysclk,
  input func1_sysce,
  input func1_sysclr,
  output func1_clk5,
  output func1_ce5,
  output func1_clk6,
  output func1_ce6,
  output func1_clk30,
  output func1_ce30
);
  xlclockdriver #(
    .period(5),
    .log_2_period(3)
  )
  clockdriver_x1 (
    .sysclk(func1_sysclk),
    .sysce(func1_sysce),
    .sysclr(func1_sysclr),
    .clk(func1_clk5),
    .ce(func1_ce5)
  );
  xlclockdriver #(
    .period(6),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(func1_sysclk),
    .sysce(func1_sysce),
    .sysclr(func1_sysclr),
    .clk(func1_clk6),
    .ce(func1_ce6)
  );
  xlclockdriver #(
    .period(30),
    .log_2_period(5)
  )
  clockdriver (
    .sysclk(func1_sysclk),
    .sysce(func1_sysce),
    .sysclr(func1_sysclr),
    .clk(func1_clk30),
    .ce(func1_ce30)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "func1,sysgen_core_2018_3,{,compilation=HDL Netlist,block_icon_display=Default,family=artix7,part=xc7a35ti,speed=-1L,package=csg324,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=8.33333e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=600,concat=1,counter=1,mcode=1,p2s=1,s2p=1,slice=5,}" *)
module func1 (
  input [1-1:0] gateway_in,
  input clk,
  output [1-1:0] gateway_out1
);
  wire clk_5_net;
  wire clk_30_net;
  wire ce_6_net;
  wire clk_6_net;
  wire ce_30_net;
  wire ce_5_net;
  func1_default_clock_driver func1_default_clock_driver (
    .func1_sysclk(clk),
    .func1_sysce(1'b1),
    .func1_sysclr(1'b0),
    .func1_clk5(clk_5_net),
    .func1_ce5(ce_5_net),
    .func1_clk6(clk_6_net),
    .func1_ce6(ce_6_net),
    .func1_clk30(clk_30_net),
    .func1_ce30(ce_30_net)
  );
  func1_struct func1_struct (
    .gateway_in(gateway_in),
    .clk_5(clk_5_net),
    .ce_5(ce_5_net),
    .clk_6(clk_6_net),
    .ce_6(ce_6_net),
    .clk_30(clk_30_net),
    .ce_30(ce_30_net),
    .gateway_out1(gateway_out1)
  );
endmodule
