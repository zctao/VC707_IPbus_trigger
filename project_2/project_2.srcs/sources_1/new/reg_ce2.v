// reg32_ce2
//
// This module provides a 32-bit register with 2 clock enables.
// It also has a reset.

module reg32_ce2(in, reset, clk_en1, clk_en2, out, clk);
	input [31:0] in;
	input reset;
	output [31:0] out;
	input clk;
	input clk_en1, clk_en2;

	reg [31:0] out;
 
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			out <= 32'b0;
		end
		else if (clk_en1 & clk_en2) begin
			out <= in;
		end
	end

endmodule