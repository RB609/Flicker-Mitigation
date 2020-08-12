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
module sysgen_concat_caf3d13566 (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  input [(1 - 1):0] in2,
  input [(1 - 1):0] in3,
  input [(1 - 1):0] in4,
  output [(5 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] in0_1_23;
  wire [(1 - 1):0] in1_1_27;
  wire [(1 - 1):0] in2_1_31;
  wire [(1 - 1):0] in3_1_35;
  wire [(1 - 1):0] in4_1_39;
  wire [(5 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_counter_68152bc319 (
  input [(1 - 1):0] en,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire en_1_45;
  wire [(1 - 1):0] count_reg_20_23_next;
  wire [(1 - 1):0] count_reg_20_23;
  wire count_reg_20_23_en;
  wire [(1 - 1):0] count_reg_20_23_reg_i;
  wire [(1 - 1):0] count_reg_20_23_reg_o;
  wire count_reg_20_23_reg_ce;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b1;
  wire [(2 - 1):0] cast_52_19;
  localparam [(2 - 1):0] const_value_x_000004 = 2'b01;
  wire [(2 - 1):0] count_reg_52_7_addsub;
  reg [(2 - 1):0] count_reg_join_44_1;
  reg count_reg_join_44_1_en;
  wire [(1 - 1):0] cast_count_reg_20_23_next;
  assign en_1_45 = en;
  assign count_reg_20_23_reg_i = count_reg_20_23_next;
  assign count_reg_20_23 = count_reg_20_23_reg_o;
  assign count_reg_20_23_reg_ce = (ce && count_reg_20_23_en);
  defparam count_reg_20_23_reg_inst.init_index = 2;
  defparam count_reg_20_23_reg_inst.init_value = 1'b1;
  defparam count_reg_20_23_reg_inst.latency = 1;
  defparam count_reg_20_23_reg_inst.width = 1;
  synth_reg_w_init count_reg_20_23_reg_inst(.ce(count_reg_20_23_reg_ce), .clk(clk), .clr(clr), .i(count_reg_20_23_reg_i), .o(count_reg_20_23_reg_o));
  assign cast_52_19 = {1'b0, count_reg_20_23};
  assign count_reg_52_7_addsub = cast_52_19 + const_value_x_000004;
  always @(count_reg_52_7_addsub or en_1_45)
    begin:proc_if_44_1
      if (en_1_45)
        begin
          count_reg_join_44_1_en = 1'b1;
        end
      else 
        begin
          count_reg_join_44_1_en = 1'b0;
        end
      count_reg_join_44_1 = count_reg_52_7_addsub;
    end
  assign cast_count_reg_20_23_next = {count_reg_join_44_1[0:0]};
  assign count_reg_20_23_next = cast_count_reg_20_23_next;
  assign count_reg_20_23_en = count_reg_join_44_1_en;
  assign op = count_reg_20_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mcode_block_bbf148ba9b (
  input [(1 - 1):0] i0,
  input [(1 - 1):0] i1,
  input [(1 - 1):0] i2,
  input [(1 - 1):0] i3,
  input [(1 - 1):0] i4,
  input [(1 - 1):0] i5,
  input [(1 - 1):0] index,
  output [(1 - 1):0] a0,
  output [(1 - 1):0] a1,
  output [(1 - 1):0] a2,
  output [(1 - 1):0] a3,
  output [(1 - 1):0] a4,
  output [(1 - 1):0] flag,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] i0_1_39;
  wire [(1 - 1):0] i1_1_42;
  wire [(1 - 1):0] i2_1_45;
  wire [(1 - 1):0] i3_1_48;
  wire [(1 - 1):0] i4_1_51;
  wire [(1 - 1):0] i5_1_54;
  wire [(1 - 1):0] index_1_57;
  wire [(5 - 1):0] cast_4_7;
  wire [(5 - 1):0] cast_4_10;
  wire [(5 - 1):0] cast_4_13;
  wire [(5 - 1):0] cast_4_16;
  wire [(5 - 1):0] cast_4_19;
  wire [(5 - 1):0] sum_4_1_addsub;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  wire rel_14_8;
  reg [(1 - 1):0] index_join_14_5;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  wire rel_22_15;
  reg [(1 - 1):0] a0_join_22_12;
  localparam [(1 - 1):0] const_value_x_000007 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000008 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000009 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000010 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000011 = 1'b0;
  wire rel_27_16;
  reg [(1 - 1):0] a1_join_27_13;
  localparam [(1 - 1):0] const_value_x_000012 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000013 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000014 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000015 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000016 = 1'b0;
  wire rel_32_15;
  reg [(1 - 1):0] a2_join_32_12;
  localparam [(1 - 1):0] const_value_x_000017 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000018 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000019 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000020 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000021 = 1'b0;
  wire rel_37_15;
  reg [(1 - 1):0] a3_join_37_12;
  localparam [(1 - 1):0] const_value_x_000022 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000023 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000024 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000025 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000026 = 1'b0;
  wire rel_42_15;
  reg [(1 - 1):0] a4_join_42_12;
  localparam [(1 - 1):0] const_value_x_000027 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000028 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000029 = 1'b1;
  wire rel_21_12;
  reg [(1 - 1):0] a1_join_21_9;
  reg [(1 - 1):0] a3_join_21_9;
  reg [(1 - 1):0] a0_join_21_9;
  reg [(1 - 1):0] a4_join_21_9;
  reg [(1 - 1):0] a2_join_21_9;
  localparam [(1 - 1):0] const_value_x_000030 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000031 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000032 = 1'b0;
  wire rel_56_15;
  reg [(1 - 1):0] a0_join_56_12;
  localparam [(1 - 1):0] const_value_x_000033 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000034 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000035 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000036 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000037 = 1'b0;
  wire rel_61_16;
  reg [(1 - 1):0] a1_join_61_13;
  localparam [(1 - 1):0] const_value_x_000038 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000039 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000040 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000041 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000042 = 1'b0;
  wire rel_66_15;
  reg [(1 - 1):0] a2_join_66_12;
  localparam [(1 - 1):0] const_value_x_000043 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000044 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000045 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000046 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000047 = 1'b0;
  wire rel_71_15;
  reg [(1 - 1):0] a3_join_71_12;
  localparam [(1 - 1):0] const_value_x_000048 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000049 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000050 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000051 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000052 = 1'b0;
  wire rel_76_15;
  reg [(1 - 1):0] a4_join_76_12;
  localparam [(1 - 1):0] const_value_x_000053 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000054 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000055 = 1'b0;
  wire rel_55_12;
  reg [(1 - 1):0] a1_join_55_9;
  reg [(1 - 1):0] a3_join_55_9;
  reg [(1 - 1):0] a0_join_55_9;
  reg [(1 - 1):0] a4_join_55_9;
  reg [(1 - 1):0] a2_join_55_9;
  localparam [(1 - 1):0] const_value_x_000056 = 1'b0;
  wire rel_20_8;
  reg [(1 - 1):0] a1_join_20_5;
  reg [(1 - 1):0] a0_join_20_5;
  reg [(1 - 1):0] a3_join_20_5;
  reg [(1 - 1):0] a4_join_20_5;
  reg [(1 - 1):0] a2_join_20_5;
  localparam [(2 - 1):0] const_value_x_000057 = 2'b10;
  localparam [(5 - 1):0] const_value_x_000058 = 5'b00010;
  wire rel_6_4;
  localparam [(2 - 1):0] const_value_x_000059 = 2'b11;
  localparam [(5 - 1):0] const_value_x_000060 = 5'b00011;
  wire rel_6_16;
  wire bool_6_4;
  reg [(1 - 1):0] a1_join_6_1;
  reg [(1 - 1):0] a3_join_6_1;
  reg [(1 - 1):0] a0_join_6_1;
  reg [(1 - 1):0] a4_join_6_1;
  reg [(1 - 1):0] a2_join_6_1;
  reg [(1 - 1):0] index_join_6_1;
  reg flag_join_6_1;
  assign i0_1_39 = i0;
  assign i1_1_42 = i1;
  assign i2_1_45 = i2;
  assign i3_1_48 = i3;
  assign i4_1_51 = i4;
  assign i5_1_54 = i5;
  assign index_1_57 = index;
  assign cast_4_7 = {4'b0000, i0_1_39};
  assign cast_4_10 = {4'b0000, i1_1_42};
  assign cast_4_13 = {4'b0000, i2_1_45};
  assign cast_4_16 = {4'b0000, i3_1_48};
  assign cast_4_19 = {4'b0000, i4_1_51};
  assign sum_4_1_addsub = cast_4_7 + cast_4_10 + cast_4_13 + cast_4_16 + cast_4_19;
  assign rel_14_8 = index_1_57 == const_value_x_000001;
  always @(rel_14_8)
    begin:proc_if_14_5
      if (rel_14_8)
        begin
          index_join_14_5 = const_value_x_000002;
        end
      else 
        begin
          index_join_14_5 = const_value_x_000003;
        end
    end
  assign rel_22_15 = i0_1_39 == const_value_x_000006;
  always @(rel_22_15)
    begin:proc_if_22_12
      if (rel_22_15)
        begin
          a0_join_22_12 = const_value_x_000007;
        end
      else 
        begin
          a0_join_22_12 = const_value_x_000008;
        end
    end
  assign rel_27_16 = i1_1_42 == const_value_x_000011;
  always @(rel_27_16)
    begin:proc_if_27_13
      if (rel_27_16)
        begin
          a1_join_27_13 = const_value_x_000012;
        end
      else 
        begin
          a1_join_27_13 = const_value_x_000013;
        end
    end
  assign rel_32_15 = i2_1_45 == const_value_x_000016;
  always @(rel_32_15)
    begin:proc_if_32_12
      if (rel_32_15)
        begin
          a2_join_32_12 = const_value_x_000017;
        end
      else 
        begin
          a2_join_32_12 = const_value_x_000018;
        end
    end
  assign rel_37_15 = i3_1_48 == const_value_x_000021;
  always @(rel_37_15)
    begin:proc_if_37_12
      if (rel_37_15)
        begin
          a3_join_37_12 = const_value_x_000022;
        end
      else 
        begin
          a3_join_37_12 = const_value_x_000023;
        end
    end
  assign rel_42_15 = i4_1_51 == const_value_x_000026;
  always @(rel_42_15)
    begin:proc_if_42_12
      if (rel_42_15)
        begin
          a4_join_42_12 = const_value_x_000027;
        end
      else 
        begin
          a4_join_42_12 = const_value_x_000028;
        end
    end
  assign rel_21_12 = i5_1_54 == const_value_x_000029;
  always @(a0_join_22_12 or a1_join_27_13 or a2_join_32_12 or a3_join_37_12 or a4_join_42_12 or i0_1_39 or i1_1_42 or i2_1_45 or i3_1_48 or i4_1_51 or rel_21_12)
    begin:proc_if_21_9
      if (rel_21_12)
        begin
          a1_join_21_9 = a1_join_27_13;
          a3_join_21_9 = a3_join_37_12;
          a0_join_21_9 = a0_join_22_12;
          a4_join_21_9 = a4_join_42_12;
          a2_join_21_9 = a2_join_32_12;
        end
      else 
        begin
          a1_join_21_9 = i1_1_42;
          a3_join_21_9 = i3_1_48;
          a0_join_21_9 = i0_1_39;
          a4_join_21_9 = i4_1_51;
          a2_join_21_9 = i2_1_45;
        end
    end
  assign rel_56_15 = i0_1_39 == const_value_x_000032;
  always @(rel_56_15)
    begin:proc_if_56_12
      if (rel_56_15)
        begin
          a0_join_56_12 = const_value_x_000033;
        end
      else 
        begin
          a0_join_56_12 = const_value_x_000034;
        end
    end
  assign rel_61_16 = i1_1_42 == const_value_x_000037;
  always @(rel_61_16)
    begin:proc_if_61_13
      if (rel_61_16)
        begin
          a1_join_61_13 = const_value_x_000038;
        end
      else 
        begin
          a1_join_61_13 = const_value_x_000039;
        end
    end
  assign rel_66_15 = i2_1_45 == const_value_x_000042;
  always @(rel_66_15)
    begin:proc_if_66_12
      if (rel_66_15)
        begin
          a2_join_66_12 = const_value_x_000043;
        end
      else 
        begin
          a2_join_66_12 = const_value_x_000044;
        end
    end
  assign rel_71_15 = i3_1_48 == const_value_x_000047;
  always @(rel_71_15)
    begin:proc_if_71_12
      if (rel_71_15)
        begin
          a3_join_71_12 = const_value_x_000048;
        end
      else 
        begin
          a3_join_71_12 = const_value_x_000049;
        end
    end
  assign rel_76_15 = i4_1_51 == const_value_x_000052;
  always @(rel_76_15)
    begin:proc_if_76_12
      if (rel_76_15)
        begin
          a4_join_76_12 = const_value_x_000053;
        end
      else 
        begin
          a4_join_76_12 = const_value_x_000054;
        end
    end
  assign rel_55_12 = i5_1_54 == const_value_x_000055;
  always @(a0_join_56_12 or a1_join_61_13 or a2_join_66_12 or a3_join_71_12 or a4_join_76_12 or i0_1_39 or i1_1_42 or i2_1_45 or i3_1_48 or i4_1_51 or rel_55_12)
    begin:proc_if_55_9
      if (rel_55_12)
        begin
          a1_join_55_9 = a1_join_61_13;
          a3_join_55_9 = a3_join_71_12;
          a0_join_55_9 = a0_join_56_12;
          a4_join_55_9 = a4_join_76_12;
          a2_join_55_9 = a2_join_66_12;
        end
      else 
        begin
          a1_join_55_9 = i1_1_42;
          a3_join_55_9 = i3_1_48;
          a0_join_55_9 = i0_1_39;
          a4_join_55_9 = i4_1_51;
          a2_join_55_9 = i2_1_45;
        end
    end
  assign rel_20_8 = index_join_14_5 == const_value_x_000056;
  always @(a0_join_21_9 or a0_join_55_9 or a1_join_21_9 or a1_join_55_9 or a2_join_21_9 or a2_join_55_9 or a3_join_21_9 or a3_join_55_9 or a4_join_21_9 or a4_join_55_9 or rel_20_8)
    begin:proc_if_20_5
      if (rel_20_8)
        begin
          a1_join_20_5 = a1_join_21_9;
          a0_join_20_5 = a0_join_21_9;
          a3_join_20_5 = a3_join_21_9;
          a4_join_20_5 = a4_join_21_9;
          a2_join_20_5 = a2_join_21_9;
        end
      else 
        begin
          a1_join_20_5 = a1_join_55_9;
          a0_join_20_5 = a0_join_55_9;
          a3_join_20_5 = a3_join_55_9;
          a4_join_20_5 = a4_join_55_9;
          a2_join_20_5 = a2_join_55_9;
        end
    end
  assign rel_6_4 = sum_4_1_addsub == const_value_x_000058;
  assign rel_6_16 = sum_4_1_addsub == const_value_x_000060;
  assign bool_6_4 = rel_6_4 || rel_6_16;
  always @(a0_join_20_5 or a1_join_20_5 or a2_join_20_5 or a3_join_20_5 or a4_join_20_5 or bool_6_4 or i0_1_39 or i1_1_42 or i2_1_45 or i3_1_48 or i4_1_51 or index_1_57 or index_join_14_5)
    begin:proc_if_6_1
      if (bool_6_4)
        begin
          a1_join_6_1 = i1_1_42;
          a3_join_6_1 = i3_1_48;
          a0_join_6_1 = i0_1_39;
          a4_join_6_1 = i4_1_51;
          a2_join_6_1 = i2_1_45;
          index_join_6_1 = index_1_57;
          flag_join_6_1 = 1'b0;
        end
      else 
        begin
          a1_join_6_1 = a1_join_20_5;
          a3_join_6_1 = a3_join_20_5;
          a0_join_6_1 = a0_join_20_5;
          a4_join_6_1 = a4_join_20_5;
          a2_join_6_1 = a2_join_20_5;
          index_join_6_1 = index_join_14_5;
          flag_join_6_1 = 1'b1;
        end
    end
  assign a0 = a0_join_6_1;
  assign a1 = a1_join_6_1;
  assign a2 = a2_join_6_1;
  assign a3 = a3_join_6_1;
  assign a4 = a4_join_6_1;
  assign flag = flag_join_6_1;
endmodule
`timescale 1 ns / 10 ps


module  decode_a_xlp2s  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);


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
   	   p2s_bit_reverse_decode_a_xlp2s # (din_width, dout_width, num_outputs) reverse_input(.din(din), .dout(din_temp));
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
module p2s_bit_reverse_decode_a_xlp2s (din, dout);
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
`timescale 1 ns / 10 ps
module  decode_a_xls2p  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);

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

module  decode_a_xlslice  (x, y);

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
