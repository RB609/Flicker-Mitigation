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
module sysgen_concat_eab3c22517 (
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
module sysgen_counter_0295ecefb9 (
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
module sysgen_mcode_block_c8f2fcc048 (
  input [(1 - 1):0] i0,
  input [(1 - 1):0] i1,
  input [(1 - 1):0] i2,
  input [(1 - 1):0] i3,
  input [(1 - 1):0] i4,
  input [(1 - 1):0] index,
  output [(1 - 1):0] a0,
  output [(1 - 1):0] a1,
  output [(1 - 1):0] a2,
  output [(1 - 1):0] a3,
  output [(1 - 1):0] a4,
  output [(1 - 1):0] a5,
  output [(1 - 1):0] flag,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] i0_4_42;
  wire [(1 - 1):0] i1_4_45;
  wire [(1 - 1):0] i2_4_48;
  wire [(1 - 1):0] i3_4_51;
  wire [(1 - 1):0] i4_4_54;
  wire [(1 - 1):0] index_4_58;
  localparam [(1 - 1):0] const_value = 1'b0;
  wire [(5 - 1):0] cast_10_7;
  wire [(5 - 1):0] cast_10_10;
  wire [(5 - 1):0] cast_10_13;
  wire [(5 - 1):0] cast_10_16;
  wire [(5 - 1):0] cast_10_19;
  wire [(5 - 1):0] sum_10_1_addsub;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(2 - 1):0] const_value_x_000004 = 2'b10;
  localparam [(5 - 1):0] const_value_x_000005 = 5'b00010;
  wire rel_12_8;
  reg [(1 - 1):0] a5_join_12_5;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000007 = 1'b0;
  reg [(1 - 1):0] a4_join_12_5;
  reg [(1 - 1):0] a0_join_12_5;
  reg [(1 - 1):0] a1_join_12_5;
  reg [(1 - 1):0] a2_join_12_5;
  reg [(1 - 1):0] a3_join_12_5;
  reg [(1 - 1):0] y_join_12_5;
  localparam [(1 - 1):0] const_value_x_000008 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000009 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000010 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000011 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000012 = 1'b0;
  wire rel_31_8;
  reg [(1 - 1):0] index_join_31_5;
  localparam [(1 - 1):0] const_value_x_000013 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000014 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000015 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000016 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000017 = 1'b0;
  wire rel_38_15;
  reg [(1 - 1):0] a0_join_38_12;
  localparam [(1 - 1):0] const_value_x_000018 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000019 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000020 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000021 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000022 = 1'b0;
  wire rel_43_16;
  reg [(1 - 1):0] a1_join_43_13;
  localparam [(1 - 1):0] const_value_x_000023 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000024 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000025 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000026 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000027 = 1'b0;
  wire rel_48_15;
  reg [(1 - 1):0] a2_join_48_12;
  localparam [(1 - 1):0] const_value_x_000028 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000029 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000030 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000031 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000032 = 1'b0;
  wire rel_53_15;
  reg [(1 - 1):0] a3_join_53_12;
  localparam [(1 - 1):0] const_value_x_000033 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000034 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000035 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000036 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000037 = 1'b0;
  wire rel_58_15;
  reg [(1 - 1):0] a4_join_58_12;
  localparam [(1 - 1):0] const_value_x_000038 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000039 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000040 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000041 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000042 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000043 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000044 = 1'b0;
  localparam [(5 - 1):0] const_value_x_000045 = 5'b00000;
  wire rel_37_11;
  localparam [(1 - 1):0] const_value_x_000046 = 1'b1;
  localparam [(5 - 1):0] const_value_x_000047 = 5'b00001;
  wire rel_37_23;
  wire bool_37_11;
  reg [(1 - 1):0] a5_join_37_8;
  localparam [(1 - 1):0] const_value_x_000048 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000049 = 1'b0;
  reg [(1 - 1):0] a4_join_37_8;
  reg [(1 - 1):0] a0_join_37_8;
  reg [(1 - 1):0] a1_join_37_8;
  reg [(1 - 1):0] a2_join_37_8;
  reg [(1 - 1):0] a3_join_37_8;
  reg [(1 - 1):0] y_join_37_8;
  localparam [(1 - 1):0] const_value_x_000050 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000051 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000052 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000053 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000054 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000055 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000056 = 1'b0;
  wire rel_88_11;
  reg [(1 - 1):0] a0_join_88_8;
  localparam [(1 - 1):0] const_value_x_000057 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000058 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000059 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000060 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000061 = 1'b0;
  wire rel_93_13;
  reg [(1 - 1):0] a1_join_93_10;
  localparam [(1 - 1):0] const_value_x_000062 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000063 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000064 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000065 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000066 = 1'b0;
  wire rel_98_13;
  reg [(1 - 1):0] a2_join_98_10;
  localparam [(1 - 1):0] const_value_x_000067 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000068 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000069 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000070 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000071 = 1'b0;
  wire rel_103_13;
  reg [(1 - 1):0] a3_join_103_10;
  localparam [(1 - 1):0] const_value_x_000072 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000073 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000074 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000075 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000076 = 1'b0;
  wire rel_108_13;
  reg [(1 - 1):0] a4_join_108_10;
  localparam [(1 - 1):0] const_value_x_000077 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000078 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000079 = 1'b0;
  localparam [(5 - 1):0] const_value_x_000080 = 5'b00000;
  wire rel_78_8;
  localparam [(1 - 1):0] const_value_x_000081 = 1'b1;
  localparam [(5 - 1):0] const_value_x_000082 = 5'b00001;
  wire rel_78_20;
  wire bool_78_8;
  reg [(1 - 1):0] a5_join_78_5;
  localparam [(1 - 1):0] const_value_x_000083 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000084 = 1'b0;
  reg [(1 - 1):0] a4_join_78_5;
  reg [(1 - 1):0] a0_join_78_5;
  reg [(1 - 1):0] a1_join_78_5;
  reg [(1 - 1):0] a2_join_78_5;
  reg [(1 - 1):0] a3_join_78_5;
  localparam [(1 - 1):0] const_value_x_000085 = 1'b0;
  wire rel_36_8;
  reg [(1 - 1):0] a5_join_36_5;
  reg [(1 - 1):0] a4_join_36_5;
  reg [(1 - 1):0] a0_join_36_5;
  reg [(1 - 1):0] a1_join_36_5;
  reg [(1 - 1):0] a2_join_36_5;
  reg [(1 - 1):0] a3_join_36_5;
  reg flag_join_36_5;
  localparam [(2 - 1):0] const_value_x_000086 = 2'b10;
  localparam [(5 - 1):0] const_value_x_000087 = 5'b00010;
  wire rel_11_4;
  localparam [(2 - 1):0] const_value_x_000088 = 2'b11;
  localparam [(5 - 1):0] const_value_x_000089 = 5'b00011;
  wire rel_11_16;
  wire bool_11_4;
  reg [(1 - 1):0] a5_join_11_1;
  reg [(1 - 1):0] a4_join_11_1;
  reg [(1 - 1):0] a0_join_11_1;
  reg [(1 - 1):0] a1_join_11_1;
  reg [(1 - 1):0] a2_join_11_1;
  reg [(1 - 1):0] a3_join_11_1;
  reg [(1 - 1):0] index_join_11_1;
  reg flag_join_11_1;
  assign i0_4_42 = i0;
  assign i1_4_45 = i1;
  assign i2_4_48 = i2;
  assign i3_4_51 = i3;
  assign i4_4_54 = i4;
  assign index_4_58 = index;
  assign cast_10_7 = {4'b0000, i0_4_42};
  assign cast_10_10 = {4'b0000, i1_4_45};
  assign cast_10_13 = {4'b0000, i2_4_48};
  assign cast_10_16 = {4'b0000, i3_4_51};
  assign cast_10_19 = {4'b0000, i4_4_54};
  assign sum_10_1_addsub = cast_10_7 + cast_10_10 + cast_10_13 + cast_10_16 + cast_10_19;
  assign rel_12_8 = sum_10_1_addsub == const_value_x_000005;
  always @(i0_4_42 or i1_4_45 or i2_4_48 or i3_4_51 or i4_4_54 or rel_12_8)
    begin:proc_if_12_5
      if (rel_12_8)
        begin
          a5_join_12_5 = const_value_x_000006;
          a4_join_12_5 = i4_4_54;
          a0_join_12_5 = i0_4_42;
          a1_join_12_5 = i1_4_45;
          a2_join_12_5 = i2_4_48;
          a3_join_12_5 = i3_4_51;
          y_join_12_5 = const_value_x_000008;
        end
      else 
        begin
          a5_join_12_5 = const_value_x_000007;
          a4_join_12_5 = i4_4_54;
          a0_join_12_5 = i0_4_42;
          a1_join_12_5 = i1_4_45;
          a2_join_12_5 = i2_4_48;
          a3_join_12_5 = i3_4_51;
          y_join_12_5 = const_value_x_000009;
        end
    end
  assign rel_31_8 = index_4_58 == const_value_x_000012;
  always @(rel_31_8)
    begin:proc_if_31_5
      if (rel_31_8)
        begin
          index_join_31_5 = const_value_x_000013;
        end
      else 
        begin
          index_join_31_5 = const_value_x_000014;
        end
    end
  assign rel_38_15 = i0_4_42 == const_value_x_000017;
  always @(rel_38_15)
    begin:proc_if_38_12
      if (rel_38_15)
        begin
          a0_join_38_12 = const_value_x_000018;
        end
      else 
        begin
          a0_join_38_12 = const_value_x_000019;
        end
    end
  assign rel_43_16 = i1_4_45 == const_value_x_000022;
  always @(rel_43_16)
    begin:proc_if_43_13
      if (rel_43_16)
        begin
          a1_join_43_13 = const_value_x_000023;
        end
      else 
        begin
          a1_join_43_13 = const_value_x_000024;
        end
    end
  assign rel_48_15 = i2_4_48 == const_value_x_000027;
  always @(rel_48_15)
    begin:proc_if_48_12
      if (rel_48_15)
        begin
          a2_join_48_12 = const_value_x_000028;
        end
      else 
        begin
          a2_join_48_12 = const_value_x_000029;
        end
    end
  assign rel_53_15 = i3_4_51 == const_value_x_000032;
  always @(rel_53_15)
    begin:proc_if_53_12
      if (rel_53_15)
        begin
          a3_join_53_12 = const_value_x_000033;
        end
      else 
        begin
          a3_join_53_12 = const_value_x_000034;
        end
    end
  assign rel_58_15 = i4_4_54 == const_value_x_000037;
  always @(rel_58_15)
    begin:proc_if_58_12
      if (rel_58_15)
        begin
          a4_join_58_12 = const_value_x_000038;
        end
      else 
        begin
          a4_join_58_12 = const_value_x_000039;
        end
    end
  assign rel_37_11 = sum_10_1_addsub == const_value_x_000045;
  assign rel_37_23 = sum_10_1_addsub == const_value_x_000047;
  assign bool_37_11 = rel_37_11 || rel_37_23;
  always @(a0_join_38_12 or a1_join_43_13 or a2_join_48_12 or a3_join_53_12 or a4_join_58_12 or bool_37_11 or i0_4_42 or i1_4_45 or i2_4_48 or i3_4_51 or i4_4_54)
    begin:proc_if_37_8
      if (bool_37_11)
        begin
          a5_join_37_8 = const_value_x_000048;
          a4_join_37_8 = a4_join_58_12;
          a0_join_37_8 = a0_join_38_12;
          a1_join_37_8 = a1_join_43_13;
          a2_join_37_8 = a2_join_48_12;
          a3_join_37_8 = a3_join_53_12;
          y_join_37_8 = const_value_x_000050;
        end
      else 
        begin
          a5_join_37_8 = const_value_x_000049;
          a4_join_37_8 = i4_4_54;
          a0_join_37_8 = i0_4_42;
          a1_join_37_8 = i1_4_45;
          a2_join_37_8 = i2_4_48;
          a3_join_37_8 = i3_4_51;
          y_join_37_8 = const_value_x_000051;
        end
    end
  assign rel_88_11 = i0_4_42 == const_value_x_000056;
  always @(rel_88_11)
    begin:proc_if_88_8
      if (rel_88_11)
        begin
          a0_join_88_8 = const_value_x_000057;
        end
      else 
        begin
          a0_join_88_8 = const_value_x_000058;
        end
    end
  assign rel_93_13 = i1_4_45 == const_value_x_000061;
  always @(rel_93_13)
    begin:proc_if_93_10
      if (rel_93_13)
        begin
          a1_join_93_10 = const_value_x_000062;
        end
      else 
        begin
          a1_join_93_10 = const_value_x_000063;
        end
    end
  assign rel_98_13 = i2_4_48 == const_value_x_000066;
  always @(rel_98_13)
    begin:proc_if_98_10
      if (rel_98_13)
        begin
          a2_join_98_10 = const_value_x_000067;
        end
      else 
        begin
          a2_join_98_10 = const_value_x_000068;
        end
    end
  assign rel_103_13 = i3_4_51 == const_value_x_000071;
  always @(rel_103_13)
    begin:proc_if_103_10
      if (rel_103_13)
        begin
          a3_join_103_10 = const_value_x_000072;
        end
      else 
        begin
          a3_join_103_10 = const_value_x_000073;
        end
    end
  assign rel_108_13 = i4_4_54 == const_value_x_000076;
  always @(rel_108_13)
    begin:proc_if_108_10
      if (rel_108_13)
        begin
          a4_join_108_10 = const_value_x_000077;
        end
      else 
        begin
          a4_join_108_10 = const_value_x_000078;
        end
    end
  assign rel_78_8 = sum_10_1_addsub == const_value_x_000080;
  assign rel_78_20 = sum_10_1_addsub == const_value_x_000082;
  assign bool_78_8 = rel_78_8 || rel_78_20;
  always @(a0_join_88_8 or a1_join_93_10 or a2_join_98_10 or a3_join_103_10 or a4_join_108_10 or bool_78_8 or i0_4_42 or i1_4_45 or i2_4_48 or i3_4_51 or i4_4_54)
    begin:proc_if_78_5
      if (bool_78_8)
        begin
          a5_join_78_5 = const_value_x_000083;
          a4_join_78_5 = i4_4_54;
          a0_join_78_5 = i0_4_42;
          a1_join_78_5 = i1_4_45;
          a2_join_78_5 = i2_4_48;
          a3_join_78_5 = i3_4_51;
        end
      else 
        begin
          a5_join_78_5 = const_value_x_000084;
          a4_join_78_5 = a4_join_108_10;
          a0_join_78_5 = a0_join_88_8;
          a1_join_78_5 = a1_join_93_10;
          a2_join_78_5 = a2_join_98_10;
          a3_join_78_5 = a3_join_103_10;
        end
    end
  assign rel_36_8 = index_join_31_5 == const_value_x_000085;
  always @(a0_join_37_8 or a0_join_78_5 or a1_join_37_8 or a1_join_78_5 or a2_join_37_8 or a2_join_78_5 or a3_join_37_8 or a3_join_78_5 or a4_join_37_8 or a4_join_78_5 or a5_join_37_8 or a5_join_78_5 or rel_36_8)
    begin:proc_if_36_5
      if (rel_36_8)
        begin
          a5_join_36_5 = a5_join_37_8;
          a4_join_36_5 = a4_join_37_8;
          a0_join_36_5 = a0_join_37_8;
          a1_join_36_5 = a1_join_37_8;
          a2_join_36_5 = a2_join_37_8;
          a3_join_36_5 = a3_join_37_8;
          flag_join_36_5 = 1'b1;
        end
      else 
        begin
          a5_join_36_5 = a5_join_78_5;
          a4_join_36_5 = a4_join_78_5;
          a0_join_36_5 = a0_join_78_5;
          a1_join_36_5 = a1_join_78_5;
          a2_join_36_5 = a2_join_78_5;
          a3_join_36_5 = a3_join_78_5;
          flag_join_36_5 = 1'b1;
        end
    end
  assign rel_11_4 = sum_10_1_addsub == const_value_x_000087;
  assign rel_11_16 = sum_10_1_addsub == const_value_x_000089;
  assign bool_11_4 = rel_11_4 || rel_11_16;
  always @(a0_join_12_5 or a0_join_36_5 or a1_join_12_5 or a1_join_36_5 or a2_join_12_5 or a2_join_36_5 or a3_join_12_5 or a3_join_36_5 or a4_join_12_5 or a4_join_36_5 or a5_join_12_5 or a5_join_36_5 or bool_11_4 or flag_join_36_5 or index_4_58 or index_join_31_5)
    begin:proc_if_11_1
      if (bool_11_4)
        begin
          a5_join_11_1 = a5_join_12_5;
          a4_join_11_1 = a4_join_12_5;
          a0_join_11_1 = a0_join_12_5;
          a1_join_11_1 = a1_join_12_5;
          a2_join_11_1 = a2_join_12_5;
          a3_join_11_1 = a3_join_12_5;
          index_join_11_1 = index_4_58;
          flag_join_11_1 = 1'b0;
        end
      else 
        begin
          a5_join_11_1 = a5_join_36_5;
          a4_join_11_1 = a4_join_36_5;
          a0_join_11_1 = a0_join_36_5;
          a1_join_11_1 = a1_join_36_5;
          a2_join_11_1 = a2_join_36_5;
          a3_join_11_1 = a3_join_36_5;
          index_join_11_1 = index_join_31_5;
          flag_join_11_1 = flag_join_36_5;
        end
    end
  assign a0 = a0_join_11_1;
  assign a1 = a1_join_11_1;
  assign a2 = a2_join_11_1;
  assign a3 = a3_join_11_1;
  assign a4 = a4_join_11_1;
  assign a5 = a5_join_11_1;
  assign flag = flag_join_11_1;
endmodule
`timescale 1 ns / 10 ps
module  func1_xls2p  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);

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

module  func1_xlslice  (x, y);

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


module  func1_xlp2s  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);


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
   	   p2s_bit_reverse_func1_xlp2s # (din_width, dout_width, num_outputs) reverse_input(.din(din), .dout(din_temp));
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
module p2s_bit_reverse_func1_xlp2s (din, dout);
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
