`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Decode_A_struct
module decode_a_struct (
  input [1-1:0] gateway_in,
  input clk_5,
  input ce_5,
  input clk_6,
  input ce_6,
  input clk_30,
  input ce_30,
  output [1-1:0] gateway_out1
);
  wire [6-1:0] serial_to_parallel_dout_net;
  wire [1-1:0] slice7_y_net;
  wire [1-1:0] slice10_y_net;
  wire [1-1:0] slice6_y_net;
  wire [1-1:0] slice9_y_net;
  wire ce_net;
  wire [1-1:0] gateway_in_net;
  wire src_clk_net;
  wire [1-1:0] mcode1_a1_net;
  wire dest_ce_net;
  wire [1-1:0] mcode1_a3_net;
  wire [1-1:0] mcode1_a4_net;
  wire [1-1:0] output_dout_net;
  wire dest_clk_net;
  wire [5-1:0] concat1_y_net;
  wire [1-1:0] mcode1_a0_net;
  wire [1-1:0] mcode1_a2_net;
  wire clk_net;
  wire [1-1:0] counter1_op_net;
  wire [1-1:0] mcode1_flag_net;
  wire src_ce_net;
  wire [1-1:0] slice_y_net;
  wire [1-1:0] slice8_y_net;
  assign gateway_in_net = gateway_in;
  assign gateway_out1 = output_dout_net;
  assign src_clk_net = clk_5;
  assign src_ce_net = ce_5;
  assign dest_clk_net = clk_6;
  assign dest_ce_net = ce_6;
  assign clk_net = clk_30;
  assign ce_net = ce_30;
  sysgen_concat_caf3d13566 concat1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(mcode1_a0_net),
    .in1(mcode1_a1_net),
    .in2(mcode1_a2_net),
    .in3(mcode1_a3_net),
    .in4(mcode1_a4_net),
    .y(concat1_y_net)
  );
  sysgen_counter_68152bc319 counter1 (
    .clr(1'b0),
    .en(mcode1_flag_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter1_op_net)
  );
  sysgen_mcode_block_bbf148ba9b mcode1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .i0(slice_y_net),
    .i1(slice8_y_net),
    .i2(slice7_y_net),
    .i3(slice10_y_net),
    .i4(slice6_y_net),
    .i5(slice9_y_net),
    .index(counter1_op_net),
    .a0(mcode1_a0_net),
    .a1(mcode1_a1_net),
    .a2(mcode1_a2_net),
    .a3(mcode1_a3_net),
    .a4(mcode1_a4_net),
    .flag(mcode1_flag_net)
  );
  decode_a_xlp2s #(
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
  output_x0 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .rst(1'b0),
    .din(concat1_y_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .dest_clk(dest_clk_net),
    .dest_ce(dest_ce_net),
    .dout(output_dout_net)
  );
  decode_a_xls2p #(
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
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .dout(serial_to_parallel_dout_net)
  );
  decode_a_xlslice #(
    .new_lsb(5),
    .new_msb(5),
    .x_width(6),
    .y_width(1)
  )
  slice (
    .x(serial_to_parallel_dout_net),
    .y(slice_y_net)
  );
  decode_a_xlslice #(
    .new_lsb(2),
    .new_msb(2),
    .x_width(6),
    .y_width(1)
  )
  slice10 (
    .x(serial_to_parallel_dout_net),
    .y(slice10_y_net)
  );
  decode_a_xlslice #(
    .new_lsb(1),
    .new_msb(1),
    .x_width(6),
    .y_width(1)
  )
  slice6 (
    .x(serial_to_parallel_dout_net),
    .y(slice6_y_net)
  );
  decode_a_xlslice #(
    .new_lsb(3),
    .new_msb(3),
    .x_width(6),
    .y_width(1)
  )
  slice7 (
    .x(serial_to_parallel_dout_net),
    .y(slice7_y_net)
  );
  decode_a_xlslice #(
    .new_lsb(4),
    .new_msb(4),
    .x_width(6),
    .y_width(1)
  )
  slice8 (
    .x(serial_to_parallel_dout_net),
    .y(slice8_y_net)
  );
  decode_a_xlslice #(
    .new_lsb(0),
    .new_msb(0),
    .x_width(6),
    .y_width(1)
  )
  slice9 (
    .x(serial_to_parallel_dout_net),
    .y(slice9_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module decode_a_default_clock_driver (
  input decode_a_sysclk,
  input decode_a_sysce,
  input decode_a_sysclr,
  output decode_a_clk5,
  output decode_a_ce5,
  output decode_a_clk6,
  output decode_a_ce6,
  output decode_a_clk30,
  output decode_a_ce30
);
  xlclockdriver #(
    .period(5),
    .log_2_period(3)
  )
  clockdriver_x1 (
    .sysclk(decode_a_sysclk),
    .sysce(decode_a_sysce),
    .sysclr(decode_a_sysclr),
    .clk(decode_a_clk5),
    .ce(decode_a_ce5)
  );
  xlclockdriver #(
    .period(6),
    .log_2_period(3)
  )
  clockdriver_x0 (
    .sysclk(decode_a_sysclk),
    .sysce(decode_a_sysce),
    .sysclr(decode_a_sysclr),
    .clk(decode_a_clk6),
    .ce(decode_a_ce6)
  );
  xlclockdriver #(
    .period(30),
    .log_2_period(5)
  )
  clockdriver (
    .sysclk(decode_a_sysclk),
    .sysce(decode_a_sysce),
    .sysclr(decode_a_sysclr),
    .clk(decode_a_clk30),
    .ce(decode_a_ce30)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "decode_a,sysgen_core_2018_3,{,compilation=HDL Netlist,block_icon_display=Default,family=artix7,part=xc7a35t,speed=-1,package=csg324,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-07,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,concat=1,counter=1,mcode=1,p2s=1,s2p=1,slice=6,}" *)
module decode_a (
  input [1-1:0] gateway_in,
  input clk,
  output [1-1:0] gateway_out1
);
  wire clk_5_net;
  wire clk_6_net;
  wire ce_6_net;
  wire clk_30_net;
  wire ce_30_net;
  wire ce_5_net;
  decode_a_default_clock_driver decode_a_default_clock_driver (
    .decode_a_sysclk(clk),
    .decode_a_sysce(1'b1),
    .decode_a_sysclr(1'b0),
    .decode_a_clk5(clk_5_net),
    .decode_a_ce5(ce_5_net),
    .decode_a_clk6(clk_6_net),
    .decode_a_ce6(ce_6_net),
    .decode_a_clk30(clk_30_net),
    .decode_a_ce30(ce_30_net)
  );
  decode_a_struct decode_a_struct (
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
