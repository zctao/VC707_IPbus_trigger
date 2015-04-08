`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 01:08:52 PM
// Design Name: 
// Module Name: Memory
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


module Memory #(parameter RAM_WIDTH = 36, parameter RAM_ADDR_BITS = 9, parameter INIT_FILE = "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/empty.txt" )(
    // Output
	output reg [RAM_WIDTH-1:0] output_data,
	// Input
	input wire clock,
	input wire [RAM_ADDR_BITS-1:0] write_address,
	input wire write_enable,
	input wire [RAM_ADDR_BITS-1:0] read_address,
	input wire [RAM_WIDTH-1:0] input_data
    );
    
    (* RAM_STYLE="block" *)
    reg [RAM_WIDTH-1:0] RAM [(2**RAM_ADDR_BITS)-1:0];
    
    //  The following code is only necessary if you wish to initialize the RAM 
    //  contents via an external file (use $readmemb for binary data)
    initial
        $readmemh(INIT_FILE, RAM, 0, 2**RAM_ADDR_BITS-1);
    
    always @(posedge clock) begin
      if (write_enable)
         RAM[write_address] <= input_data;
      output_data <= RAM[read_address];
    end
        

endmodule
