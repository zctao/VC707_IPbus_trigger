`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 01:49:03 PM
// Design Name: 
// Module Name: TrackProj
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


module TrackletProjections(
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
    output done,
    
    input [53:0] data_in,
    
    output [5:0] number_out,
    input [5:0] read_add,
    output reg [53:0] data_out
    );
    
    // Communication delay parameter
    wire [2:0] rd_BX;
    parameter [7:0] delay = 1;
    parameter [7:0] n_hold = 8'd16;
    parameter NHOLD = 1'b0; 
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

    reg [53:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg [2:0] rd_BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
       data_in_dly = 54'h0;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
       end
       if(start_proj) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
       rd_BX_pipe <= rd_BX;
    end
    
    wire [53:0] pre_data_out;
    reg [5:0] pre_number_out;
    reg [5:0] hold_number_out;
    reg [5:0] pipe_number_out;

    always @(posedge clk) begin
        if(data_in > 0)
            data_in_dly <= data_in;
        else
            data_in_dly <= data_in_dly;
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
            pre_number_out <= wr_add + 1'b1;
            hold_number_out <= pre_number_out;             
        end
        else begin
            if(data_in > 0 & data_in != data_in_dly) begin
                wr_add <= wr_add + 1'b1;
                wr_en <= 1'b1;
            end
            else begin
                wr_add <= wr_add;
                wr_en <= 1'b0;
            end
        end
        if(NHOLD)
            pipe_number_out <= hold_number_out; // Local projection memories have to wait an extra BX to send the number
        else
            pipe_number_out <= pre_number_out;         
        data_out <= pre_data_out;
    end
      
    // The start comes from the tracklet parameter calculation
    // There is an extra delay from the projection calculations
    reg [n_hold:0] hold;
    reg start_proj;
    always @(posedge clk) begin
        hold[0] <= start;
        hold[n_hold:1] <= hold[n_hold-1:0];
        start_proj <= hold[n_hold];
    end     
        
    pipe_delay #(.STAGES(delay), .WIDTH(3)) READ_BX(.pipe_in(start_proj), .pipe_out(done), .clk(clk),
                                                   .val_in(BX_pipe), .val_out(rd_BX));
                                                   
                                                   
    pipe_delay #(.STAGES(delay), .WIDTH(6)) NUM_OUT(.pipe_in(start_proj), .pipe_out(), .clk(clk),
                                                   .val_in(pipe_number_out), .val_out(number_out));

    Memory #(54) Projection(
        // Output
        .output_data(pre_data_out),
        // Input
        .clock(clk),
        .write_address({BX_pipe - 3'd4 + NHOLD,wr_add}),
        .write_enable(wr_en),
        .read_address({rd_BX_pipe-3'd5,read_add}),
        .input_data(data_in_dly)
    );
endmodule
