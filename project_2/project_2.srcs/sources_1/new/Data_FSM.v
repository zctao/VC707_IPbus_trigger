`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:13 11/12/2014 
// Design Name: 
// Module Name:    Data_IO 
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
module Data_FSM(
	output reg [15:0] data,
	output reg last,
	output reg valid,
	output reg [1:0] keep,
	input wire en,
	input wire reset,
	input wire clk,
	input wire [15:0] data_1,
	input wire [15:0] data_2,
	input wire [15:0] data_3
    );

	 
	// State Encoding
	localparam READY = 3'b000,
				  DATA1 = 3'b001,
				  DATA2 = 3'b010,
				  DATA3 = 3'b011,
				  DONE  = 3'b100;
	
	// State reg Declaration
	reg [2:0] state;
	reg [2:0] nextstate;
	
	// sequential always block
   always @(posedge clk) begin
		if (reset) begin
			state <= READY;
		end else
			state <= nextstate;
	end
	
	// comb always block
	always @* begin
		nextstate = state;
		case (state)
			READY: begin
				data = 16'b0;
				last = 1'b0;
				valid = 1'b0;
				keep = 2'b00;
				if (en) begin
					nextstate = DATA1;
				end else begin
					nextstate = READY;
				end
			end
			DATA1: begin
				nextstate = DATA2;
				data = data_1;
				last = 1'b0;
				if (data != 0) begin
					valid = 1'b1;
				end else begin
					valid = 1'b0;
				end
				keep = 2'b11;
			end
			DATA2: begin
				nextstate = DATA3;
				data = data_2;
				last = 1'b0;
				if (data != 0) begin
					valid = 1'b1;
				end else begin
					valid = 1'b0;
				end
				keep = 2'b11;
			end
			DATA3: begin
				nextstate = DONE;
				data = data_3;
				last = 1'b1;
				if (data != 0) begin
					valid = 1'b1;
				end else begin
					valid = 1'b0;
				end
				keep = 2'b11;
			end
			DONE: begin
				nextstate = DONE;
				data = 16'b0;
				last = 1'b0;
				valid = 1'b0;
				keep = 2'b0;
			end
		endcase
				
	end

endmodule