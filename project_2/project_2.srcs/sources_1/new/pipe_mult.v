`timescale 1ns / 1ps
// pipe_mult
//
// This module provides a generic pipelined multiplier.
// The widths are determined by parameters.
//
// The inputs are signed numbers. Their width is determined
// by the parameters AWIDTH and BWIDTH.
//
// The pipe_in and pipe_out bits are for the pipeline chain.
// The latency is a tunable number of clock periods.(STAGES parameter.)


module pipe_mult #(
      parameter STAGES=3, AWIDTH=25, BWIDTH=18, PWIDTH=AWIDTH+BWIDTH
)
(
 //inputs
 input wire           clk, // fast processing clock
 input wire           pipe_in, // the incoming pipeline enable bit 
 input wire signed [AWIDTH-1:0]  a, // the input to the DSP slice
 input wire signed [BWIDTH-1:0]  b, // the input to the DSP slice
 // outputs
 output wire          pipe_out, // the pipeline enable bit
 //  to be passed to the next stage
 output wire signed [PWIDTH-1:0] p   // the product
 );

   // the pipeline
   reg [STAGES-1:0] pipe;
   (* mult_style = "pipe_block" *)
   reg signed [PWIDTH-1:0] res[STAGES-1:0];
   reg signed [AWIDTH-1:0] a_pipe;
   reg signed [BWIDTH-1:0] b_pipe;
 
   // initial stage
   always @(posedge clk ) begin
     pipe[0] <= pipe_in;
     a_pipe  <= a;
     b_pipe  <= b;
     res[0] <= a_pipe * b_pipe;
   end

   genvar c;
   generate
      for (c = 1; c < STAGES; c = c + 1) begin: test
          always @(posedge clk) begin
             pipe[c] <= pipe[c-1];
             res[c] <= res[c-1];
          end
      end
   endgenerate 
 
   assign pipe_out = pipe[STAGES-1];
   assign p = res[STAGES-1];

endmodule
