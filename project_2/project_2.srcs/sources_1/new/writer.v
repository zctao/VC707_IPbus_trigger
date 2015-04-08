`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 04:44:35 PM
// Design Name: 
// Module Name: writer
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


module writer(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 12 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    output reg [31:0] data_out1,
    output reg [31:0] data_out2,
    output reg [31:0] data_out3,
    
    input read_en  
    );
    
    wire io_sel_data_in1, io_sel_data_in2, io_sel_data_in3;
    
    assign io_sel_data_in1  = io_sel && (io_addr[2:0] == 3'b011);
    assign io_sel_data_in2  = io_sel && (io_addr[2:0] == 3'b100);
    assign io_sel_data_in3  = io_sel && (io_addr[2:0] == 3'b101);
    
    always @ (posedge io_clk) begin
        if (io_wr_en && io_sel_data_in1) data_out1 <= io_wr_data;
        if (io_wr_en && io_sel_data_in2) data_out2 <= io_wr_data;
        if (io_wr_en && io_sel_data_in3) data_out3 <= io_wr_data;
    end
    
endmodule
