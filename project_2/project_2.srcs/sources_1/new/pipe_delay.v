`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:34:02 07/07/2014 
// Design Name: 
// Module Name:    pipe_delay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module pipe_delay #(
 parameter STAGES=3, WIDTH=25
 )
(
    input  wire [WIDTH-1:0] val_in,
    input  wire pipe_in,
    output wire [WIDTH-1:0] val_out,
    output wire pipe_out,
    input wire clk
    );
   // the pipeline
   reg [STAGES-1:0] pipe;
   reg signed [WIDTH-1:0] res[STAGES-1:0];
 
   // initial stage
   always @(posedge clk ) begin
     pipe[0] <= pipe_in;
     res[0] <= val_in;
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
   assign val_out = res[STAGES-1];


endmodule
