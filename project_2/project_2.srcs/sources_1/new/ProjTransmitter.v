`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2015 11:52:43 AM
// Design Name: 
// Module Name: ProjTransmitter
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


module ProjTransceiver(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 16 bits already consumed.
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
    
    input start,
    output reg done,
    
    input [5:0] number_in1,
    output [5:0] read_add1,
    input [53:0] input_L1L2_1,
    input [5:0] number_in2,
    output [5:0] read_add2,
    input [53:0] input_L1L2_2,
    input [5:0] number_in3,
    output [5:0] read_add3,
    input [53:0] input_L1L2_3,
    input [5:0] number_in4,
    output [5:0] read_add4,
    input [53:0] input_L1L2_4,
    input [5:0] number_in5,
    output [5:0] read_add5,
    input [53:0] input_L3L4_1,
    input [5:0] number_in6,
    output [5:0] read_add6,
    input [53:0] input_L3L4_2,
    input [5:0] number_in7,
    output [5:0] read_add7,
    input [53:0] input_L3L4_3,
    input [5:0] number_in8,
    output [5:0] read_add8,
    input [53:0] input_L3L4_4,
    input [5:0] number_in9,
    output [5:0] read_add9,
    input [53:0] input_L5L6_1,
    input [5:0] number_in10,
    output [5:0] read_add10,
    input [53:0] input_L5L6_2,
    input [5:0] number_in11,
    output [5:0] read_add11,
    input [53:0] input_L5L6_3,
    input [5:0] number_in12,
    output [5:0] read_add12,
    input [53:0] input_L5L6_4,
    
    output [53:0] output_L1L2_1,
    output [53:0] output_L1L2_2,
    output [53:0] output_L1L2_3,
    output [53:0] output_L1L2_4,
    output [53:0] output_L3L4_1,
    output [53:0] output_L3L4_2,
    output [53:0] output_L3L4_3,
    output [53:0] output_L3L4_4,
    output [53:0] output_L5L6_1,
    output [53:0] output_L5L6_2,
    output [53:0] output_L5L6_3,
    output [53:0] output_L5L6_4
    
    );
    
    parameter [7:0] n_hold = 8'd3;
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
       end
       if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
    end
    
    reg [n_hold:0] hold;
    always @(posedge clk) begin
       hold[0] <= start;
       hold[n_hold:1] <= hold[n_hold-1:0];
       done <= hold[n_hold];
    end
    
    
    reg [2:0] test_hold1;
    reg [2:0] test_hold2;
    reg [2:0] test_hold3;
    reg [2:0] test_hold4;
    reg [2:0] test_hold5;
    reg [2:0] test_hold6;
    reg [2:0] test_hold7;
    reg [2:0] test_hold8;
    reg [2:0] test_hold9;
    
    always @(posedge clk) begin
        test_hold1 <= BX_pipe;
        test_hold2 <= test_hold1;
        test_hold3 <= test_hold2;
        test_hold4 <= test_hold3;
        test_hold5 <= test_hold4;
        test_hold6 <= test_hold5;
        test_hold7 <= test_hold6;
        test_hold8 <= test_hold7;
        test_hold9 <= test_hold8;
    end
        
    assign output_L1L2_1 = test_hold9 + 1;
    assign output_L1L2_2 = test_hold9 + 2;
    assign output_L1L2_3 = test_hold9 + 3;
    assign output_L1L2_4 = test_hold9 + 4;
    assign output_L3L4_1 = test_hold9 + 5;
    assign output_L3L4_2 = test_hold9 + 6;
    assign output_L3L4_3 = test_hold9 + 7;
    assign output_L3L4_4 = test_hold9 + 8;
    assign output_L5L6_1 = test_hold9 + 9;
    assign output_L5L6_2 = test_hold9 + 10;
    assign output_L5L6_3 = test_hold9 + 11;
    assign output_L5L6_4 = test_hold9 + 12;
    
endmodule
