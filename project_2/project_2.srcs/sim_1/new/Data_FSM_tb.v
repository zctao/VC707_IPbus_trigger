`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2015 04:26:19 PM
// Design Name: 
// Module Name: Data_FSM_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Data_FSM_tb;

	// Inputs
	reg reset;
	reg clk;
	reg en;
	reg [15:0] data_1;
	reg [15:0] data_2;
	reg [15:0] data_3;

	// Outputs
	wire [15:0] data;
	wire last;
	wire valid;
	wire [1:0] keep;

	// Instantiate the Unit Under Test (UUT)
	Data_FSM uut (
		.data(data), 
		.last(last), 
		.reset(reset), 
		.valid(valid),
		.keep(keep),
		.clk(clk), 
		.en(en), 
		.data_1(data_1), 
		.data_2(data_2), 
		.data_3(data_3)
	);

	initial begin
		// Initialize Inputs
		reset <= 0;
		clk <= 0;
		en <= 0;
		data_1 <= 16'h0;
		data_2 <= 16'h0;
		data_3 <= 16'h0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1'b1;
		#10
		reset = 1'b0;
		#100
		data_1 <= 16'hbeef;
		data_2 <= 16'hbabe;
		data_3 <= 16'h0614;
		#10
		en = 1'b1;
		#50
		en = 1'b0;
		
		
		#100
		data_1 <= 16'h5678;
		data_2 <= 16'h5432;
		data_3 <= 16'hef01;
		
		#10 
		en = 1'b1;
		#30
		en = 1'b0;
		
		#50
		reset = 1'b1;
		#10
		reset = 1'b0;
		
		#10 
		en = 1'b1;
		#30
		en = 1'b0;
	end
	
	always 
			#4 clk = !clk;
      
endmodule