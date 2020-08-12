//-----------------------------------------------------------------
// System Generator version 2018.3 Verilog source file.
//
// Copyright(C) 2018 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2018 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module sysgen_concat_cf3df4d709 (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  output [(2 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire in0_1_23;
  wire in1_1_27;
  wire [(2 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_0220f7da85 (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  input [(1 - 1):0] in2,
  input [(1 - 1):0] in3,
  input [(1 - 1):0] in4,
  input [(1 - 1):0] in5,
  output [(6 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] in0_1_23;
  wire [(1 - 1):0] in1_1_27;
  wire [(1 - 1):0] in2_1_31;
  wire [(1 - 1):0] in3_1_35;
  wire [(1 - 1):0] in4_1_39;
  wire [(1 - 1):0] in5_1_43;
  wire [(6 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_268b65cbf9 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f910979084 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b1000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f21c27b47c (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0100000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_c3d95aa4fd (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d0_1_24;
  wire [(1 - 1):0] d1_1_27;
  wire [(1 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 ^ d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mcode_block_dd56acb2aa (
  input [(1 - 1):0] i0,
  input [(1 - 1):0] i1,
  input [(1 - 1):0] i2,
  input [(1 - 1):0] i3,
  input [(1 - 1):0] i4,
  input [(16 - 1):0] counter,
  output [(1 - 1):0] flag,
  output [(1 - 1):0] bit1,
  output [(1 - 1):0] bit2,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] i0_1_40;
  wire [(1 - 1):0] i1_1_43;
  wire [(1 - 1):0] i2_1_46;
  wire [(1 - 1):0] i3_1_49;
  wire [(1 - 1):0] i4_1_52;
  wire [(16 - 1):0] counter_1_55;
  wire [(5 - 1):0] cast_2_7;
  wire [(5 - 1):0] cast_2_10;
  wire [(5 - 1):0] cast_2_13;
  wire [(5 - 1):0] cast_2_16;
  wire [(5 - 1):0] cast_2_19;
  wire [(5 - 1):0] sum_2_1_addsub;
  localparam [(1 - 1):0] const_value = 1'b0;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b00000;
  wire rel_8_8;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b1;
  localparam [(5 - 1):0] const_value_x_000004 = 5'b00001;
  wire rel_8_20;
  wire bool_8_8;
  localparam [(3 - 1):0] const_value_x_000005 = 3'b100;
  localparam [(5 - 1):0] const_value_x_000006 = 5'b00100;
  wire rel_10_12;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b101;
  localparam [(5 - 1):0] const_value_x_000008 = 5'b00101;
  wire rel_10_24;
  wire bool_10_12;
  reg bit1_join_8_5;
  reg bit2_join_8_5;
  localparam [(1 - 1):0] const_value_x_000009 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000010 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000011 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000012 = 1'b0;
  localparam [(5 - 1):0] const_value_x_000013 = 5'b00000;
  wire rel_15_8;
  localparam [(1 - 1):0] const_value_x_000014 = 1'b1;
  localparam [(5 - 1):0] const_value_x_000015 = 5'b00001;
  wire rel_15_20;
  wire bool_15_8;
  localparam [(3 - 1):0] const_value_x_000016 = 3'b100;
  localparam [(5 - 1):0] const_value_x_000017 = 5'b00100;
  wire rel_17_12;
  localparam [(3 - 1):0] const_value_x_000018 = 3'b101;
  localparam [(5 - 1):0] const_value_x_000019 = 5'b00101;
  wire rel_17_24;
  wire bool_17_12;
  reg [(1 - 1):0] flag_join_15_5;
  localparam [(1 - 1):0] const_value_x_000020 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000021 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000022 = 1'b0;
  reg bit2_join_15_5;
  reg bit1_join_15_5;
  localparam [(1 - 1):0] const_value_x_000023 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000024 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000025 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000026 = 1'b0;
  localparam [(5 - 1):0] const_value_x_000027 = 5'b00000;
  wire rel_25_8;
  localparam [(1 - 1):0] const_value_x_000028 = 1'b1;
  localparam [(5 - 1):0] const_value_x_000029 = 5'b00001;
  wire rel_25_20;
  wire bool_25_8;
  localparam [(3 - 1):0] const_value_x_000030 = 3'b100;
  localparam [(5 - 1):0] const_value_x_000031 = 5'b00100;
  wire rel_27_12;
  localparam [(3 - 1):0] const_value_x_000032 = 3'b101;
  localparam [(5 - 1):0] const_value_x_000033 = 5'b00101;
  wire rel_27_24;
  wire bool_27_12;
  reg [(1 - 1):0] flag_join_25_5;
  localparam [(1 - 1):0] const_value_x_000034 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000035 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000036 = 1'b0;
  reg bit2_join_25_5;
  reg bit1_join_25_5;
  localparam [(1 - 1):0] const_value_x_000037 = 1'b0;
  localparam [(16 - 1):0] const_value_x_000038 = 16'b0000000000000000;
  wire rel_6_4;
  localparam [(1 - 1):0] const_value_x_000039 = 1'b1;
  localparam [(16 - 1):0] const_value_x_000040 = 16'b0100000000000000;
  wire rel_14_8;
  reg [(1 - 1):0] flag_join_6_1;
  localparam [(1 - 1):0] const_value_x_000041 = 1'b0;
  reg bit2_join_6_1;
  reg bit1_join_6_1;
  assign i0_1_40 = i0;
  assign i1_1_43 = i1;
  assign i2_1_46 = i2;
  assign i3_1_49 = i3;
  assign i4_1_52 = i4;
  assign counter_1_55 = counter;
  assign cast_2_7 = {4'b0000, i0_1_40};
  assign cast_2_10 = {4'b0000, i1_1_43};
  assign cast_2_13 = {4'b0000, i2_1_46};
  assign cast_2_16 = {4'b0000, i3_1_49};
  assign cast_2_19 = {4'b0000, i4_1_52};
  assign sum_2_1_addsub = cast_2_7 + cast_2_10 + cast_2_13 + cast_2_16 + cast_2_19;
  assign rel_8_8 = sum_2_1_addsub == const_value_x_000002;
  assign rel_8_20 = sum_2_1_addsub == const_value_x_000004;
  assign bool_8_8 = rel_8_8 || rel_8_20;
  assign rel_10_12 = sum_2_1_addsub == const_value_x_000006;
  assign rel_10_24 = sum_2_1_addsub == const_value_x_000008;
  assign bool_10_12 = rel_10_12 || rel_10_24;
  always @(bool_10_12 or bool_8_8)
    begin:proc_if_8_5
      if (bool_8_8)
        begin
          bit1_join_8_5 = 1'b1;
          bit2_join_8_5 = 1'b0;
        end
      else if (bool_10_12)
        begin
          bit1_join_8_5 = 1'b0;
          bit2_join_8_5 = 1'b1;
        end
      else 
        begin
          bit1_join_8_5 = 1'b0;
          bit2_join_8_5 = 1'b0;
        end
    end
  assign rel_15_8 = sum_2_1_addsub == const_value_x_000013;
  assign rel_15_20 = sum_2_1_addsub == const_value_x_000015;
  assign bool_15_8 = rel_15_8 || rel_15_20;
  assign rel_17_12 = sum_2_1_addsub == const_value_x_000017;
  assign rel_17_24 = sum_2_1_addsub == const_value_x_000019;
  assign bool_17_12 = rel_17_12 || rel_17_24;
  always @(bool_15_8 or bool_17_12)
    begin:proc_if_15_5
      if (bool_15_8)
        begin
          flag_join_15_5 = const_value_x_000020;
          bit2_join_15_5 = 1'b0;
          bit1_join_15_5 = 1'b0;
        end
      else if (bool_17_12)
        begin
          flag_join_15_5 = const_value_x_000021;
          bit2_join_15_5 = 1'b0;
          bit1_join_15_5 = 1'b0;
        end
      else 
        begin
          flag_join_15_5 = const_value_x_000022;
          bit2_join_15_5 = 1'b1;
          bit1_join_15_5 = 1'b0;
        end
    end
  assign rel_25_8 = sum_2_1_addsub == const_value_x_000027;
  assign rel_25_20 = sum_2_1_addsub == const_value_x_000029;
  assign bool_25_8 = rel_25_8 || rel_25_20;
  assign rel_27_12 = sum_2_1_addsub == const_value_x_000031;
  assign rel_27_24 = sum_2_1_addsub == const_value_x_000033;
  assign bool_27_12 = rel_27_12 || rel_27_24;
  always @(bool_25_8 or bool_27_12)
    begin:proc_if_25_5
      if (bool_25_8)
        begin
          flag_join_25_5 = const_value_x_000034;
          bit2_join_25_5 = 1'b0;
          bit1_join_25_5 = 1'b0;
        end
      else if (bool_27_12)
        begin
          flag_join_25_5 = const_value_x_000035;
          bit2_join_25_5 = 1'b0;
          bit1_join_25_5 = 1'b0;
        end
      else 
        begin
          flag_join_25_5 = const_value_x_000036;
          bit2_join_25_5 = 1'b0;
          bit1_join_25_5 = 1'b1;
        end
    end
  assign rel_6_4 = counter_1_55 == const_value_x_000038;
  assign rel_14_8 = counter_1_55 == const_value_x_000040;
  always @(bit1_join_15_5 or bit1_join_25_5 or bit1_join_8_5 or bit2_join_15_5 or bit2_join_25_5 or bit2_join_8_5 or flag_join_15_5 or flag_join_25_5 or rel_14_8 or rel_6_4)
    begin:proc_if_6_1
      if (rel_6_4)
        begin
          flag_join_6_1 = const_value_x_000041;
          bit2_join_6_1 = bit2_join_8_5;
          bit1_join_6_1 = bit1_join_8_5;
        end
      else if (rel_14_8)
        begin
          flag_join_6_1 = flag_join_15_5;
          bit2_join_6_1 = bit2_join_15_5;
          bit1_join_6_1 = bit1_join_15_5;
        end
      else 
        begin
          flag_join_6_1 = flag_join_25_5;
          bit2_join_6_1 = bit2_join_25_5;
          bit1_join_6_1 = bit1_join_25_5;
        end
    end
  assign flag = flag_join_6_1;
  assign bit1 = bit1_join_6_1;
  assign bit2 = bit2_join_6_1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_6be7a08cac (
  input [(2 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(16 - 1):0] d2,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(16 - 1):0] d2_1_30;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_18_22_front_din;
  wire [(16 - 1):0] pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign pipe_18_22_back = pipe_18_22[0];
  always @(posedge clk)
    begin:proc_pipe_18_22
      integer i;
      if (((ce == 1'b1) && (pipe_18_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_18_22[0] <= pipe_18_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        default:
          begin
            unregy_join_6_1 = d2_1_30;
          end
      endcase
    end
  assign pipe_18_22_front_din = unregy_join_6_1;
  assign pipe_18_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_18_22_back;
endmodule
`timescale 1 ns / 10 ps
module  encode_b_xls2p  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);

//Parameter Definitions
parameter signed [31:0] dout_width = 8;
parameter signed [31:0] dout_arith = `xlSigned;
parameter signed [31:0] dout_bin_pt = 0;
parameter signed [31:0] din_width = 1;
parameter signed [31:0] din_arith = `xlUnsigned;
parameter signed [31:0] din_bin_pt = 0;
parameter signed [31:0] rst_width = 1;
parameter signed [31:0] rst_bin_pt = 0;
parameter signed [31:0] rst_arith = `xlUnsigned;
parameter signed [31:0] en_width = 1;
parameter signed [31:0] en_bin_pt = 0;
parameter signed [31:0] en_arith = `xlUnsigned;
parameter signed [31:0] lsb_first = 0;
parameter signed [31:0] latency = 0;
parameter signed [31:0] num_inputs = 0;

//Port Declartions
input [din_width-1:0] din;
input src_ce, src_clr, src_clk;
input dest_ce, dest_clr, dest_clk;
input rst, en;
output [dout_width-1:0] dout;


   //Wire Declartions
   wire [din_width-1:0] capture_in [0:num_inputs-1];
   wire [din_width-1:0] i [0:num_inputs-1];
   wire [din_width-1:0] o [0:num_inputs-1];
   wire del_dest_ce;
   wire [dout_width-1:0] dout_temp, dout_hold;
   wire internal_src_ce;
   wire internal_dest_ce;
   wire internal_clr;
   genvar index;


   assign internal_src_ce = src_ce & en;
   assign internal_dest_ce = dest_ce & en;
   assign internal_clr = ((dest_clr | src_clr ) & dest_ce) | rst;

   generate
      for(index=0; index<num_inputs; index=index+1)
   	begin:fd_array
	   synth_reg # (din_width,1)
	     comp ( .i(i[index]),
		    .ce(internal_src_ce),
		    .clr(internal_clr),
		    .clk(src_clk),
		    .o(o[index]));
	   synth_reg_w_init # (din_width, 0, 1'b0, 1)
		  capture ( .i(capture_in[index]),
			    .ce(internal_dest_ce),
			    .clr(internal_clr),
			    .clk(dest_clk),
			    .o(dout_hold[dout_width-1-index*din_width:dout_width-index*din_width-din_width]));
	   if (index == 0)
	     begin:signal_01
		assign i[index] = din;
		assign capture_in[index] = din;
	     end
	   else
	     begin:signal_gt_0
		assign i[index] = o[index-1];
		assign capture_in[index] = o[index-1];
	     end
   	end
   endgenerate

   generate
      if (lsb_first==1)
	begin:lsb_is_first
	   assign dout_temp = dout_hold;
       end
     else
       begin:msb_is_first
	   s2p_bit_reverse # (din_width, dout_width, num_inputs) reverse_input(.din(dout_hold), .dout(dout_temp));
       end
   endgenerate

   generate
      if (latency > 1)
   	begin:latency_gt_0
	   synth_reg # (dout_width, latency-1)
	     data_reg (.i(dout_temp),
		       .ce(internal_dest_ce),
		       .clr(internal_clr),
		       .clk(dest_clk),
		       .o(dout));
   	end
      if (latency <= 1)
     	begin:latency0
	   assign dout = dout_temp;
     	end
   endgenerate

endmodule

//Need to create a new module to avoid ModelSim crashes
module s2p_bit_reverse (din, dout);
   parameter signed [31:0] din_width = 2;
   parameter signed [31:0] dout_width = 8;
   parameter signed [31:0] num_inputs = 4;

   input [dout_width-1:0] din;
   output [dout_width-1:0] dout;
   genvar index;

   generate
      for (index=0; index<num_inputs; index=index+1)
  	begin:u0
   	  assign dout[(num_inputs-index)*din_width-1:(num_inputs-index-1)*din_width] = din[index*din_width+din_width-1:index*din_width];
       end
 endgenerate

endmodule
`timescale 1 ns / 10 ps

module  encode_b_xlslice  (x, y);

//Parameter Definitions
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;

//Port Declartions
input [x_width-1:0] x;
output [y_width-1:0] y;

assign y = x[new_msb:new_lsb];

endmodule
`timescale 1 ns / 10 ps


module  encode_b_xlp2s  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);


//Parameter Definitions
parameter dout_width= 8;
parameter dout_arith= `xlSigned;
parameter dout_bin_pt= 0;
parameter din_width= 1;
parameter din_arith= `xlUnsigned;
parameter din_bin_pt= 0;
parameter rst_width= 1;
parameter rst_bin_pt= 0;
parameter rst_arith= `xlUnsigned;
parameter en_width= 1;
parameter en_bin_pt= 0;
parameter en_arith= `xlUnsigned;
parameter lsb_first= 0;
parameter latency= 0;
parameter num_outputs= 0;

//Port Declartions
input [din_width-1:0] din;
input src_ce, src_clr, src_clk;
input dest_ce, dest_clr, dest_clk;
input rst;
input en;
output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0] i [0:num_outputs-1];
   wire [din_width-1:0] din_temp;
   wire [dout_width-1:0] o [0:num_outputs-1];
   wire [dout_width-1:0] dout_temp;
   wire src_ce_hold;
   wire internal_src_ce;
   wire internal_dest_ce;
   wire internal_clr;
   genvar index, idx, idx1;

   assign internal_src_ce = src_ce_hold & en;
   assign internal_dest_ce = dest_ce & en;
   assign internal_clr = ((dest_clr | src_clr) & dest_ce) | rst;
   assign dout_temp = internal_src_ce ? din_temp[dout_width-1:0]: o[1];

   FDSE src_ce_reg(.Q(src_ce_hold),
		   .D(src_ce),
		   .C(src_clk),
		   .CE(dest_ce),
		   .S(src_clr));

   generate
      if (lsb_first==1)
       	begin:lsb_is_first
   	   assign din_temp = din;
       	end
      else
       	begin:msb_is_first
   	   p2s_bit_reverse_encode_b_xlp2s # (din_width, dout_width, num_outputs) reverse_input(.din(din), .dout(din_temp));
       	end
   endgenerate

   generate
      for(index=0; index<num_outputs; index=index+1)
   	begin:fd_array
	   synth_reg_w_init # (dout_width, 0, 1'b0, 1)
	     capture ( .i(i[index]),
		       .ce(internal_dest_ce),
		       .clr(internal_clr),
		       .clk(dest_clk),
		       .o(o[index]));
   	end
   endgenerate

   generate
      for (idx=0; idx<num_outputs; idx=idx+1)
       	begin:signal_select
	   if (idx < num_outputs-1)
	     begin:signal_0
	       	assign i[idx] = internal_src_ce ? din_temp[idx*dout_width+dout_width-1:idx*dout_width] : o[idx+1];
	     end
	   if (idx == num_outputs-1)
	     begin:signal_1
	       	assign i[idx] = internal_src_ce ? din_temp[idx*dout_width+dout_width-1:idx*dout_width] : o[idx];
	     end
       	end
   endgenerate

   generate
      if (latency > 0)
   	begin:latency_gt_0
	   synth_reg # (dout_width, latency)
	     data_reg (.i(dout_temp),
		       .ce(internal_dest_ce),
		       .clr(internal_clr),
		       .clk(dest_clk),
		       .o(dout));
   	end
      if (latency == 0)
     	begin:latency0
	   assign dout = dout_temp;
     	end
   endgenerate

endmodule

//Need to create a new module to avoid ModelSim crashes
module p2s_bit_reverse_encode_b_xlp2s (din, dout);
   parameter din_width = 8;
   parameter dout_width = 2;
   parameter num_outputs = 4;

   input [din_width-1:0] din;
   output [din_width-1:0] dout;
   genvar index;

   generate
      for (index=0; index<num_outputs; index=index+1)
  	begin:u0
   	  assign dout[(num_outputs-index)*dout_width-1:(num_outputs-index-1)*dout_width] = din[index*dout_width+dout_width-1:index*dout_width];
       end
 endgenerate

endmodule
