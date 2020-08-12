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
module sysgen_concat_57ef5461e6 (
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
module sysgen_logical_e16e76389c (
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


module  decode_b_xlp2s  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);


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
   	   p2s_bit_reverse_decode_b_xlp2s # (din_width, dout_width, num_outputs) reverse_input(.din(din), .dout(din_temp));
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
module p2s_bit_reverse_decode_b_xlp2s (din, dout);
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
module  decode_b_xls2p  (din, src_ce, src_clr, src_clk, dest_ce, dest_clr, dest_clk, rst, en, dout);

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

module  decode_b_xlslice  (x, y);

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
