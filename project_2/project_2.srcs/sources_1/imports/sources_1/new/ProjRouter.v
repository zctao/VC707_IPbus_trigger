`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:14:50 PM
// Design Name: 
// Module Name: ProjRouter
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


module ProjectionRouter(
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
    output reg [5:0] read_add1,
    input [53:0] projin,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [53:0] projplusin,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [53:0] projminusin,
    
    
    output reg [53:0] allprojout,
    output [12:0] vmprojoutPHI1Z1,
    output [12:0] vmprojoutPHI2Z1,
    output [12:0] vmprojoutPHI3Z1,
    output [12:0] vmprojoutPHI4Z1,
    output [12:0] vmprojoutPHI1Z2,
    output [12:0] vmprojoutPHI2Z2,
    output [12:0] vmprojoutPHI3Z2,
    output [12:0] vmprojoutPHI4Z2,
    output reg vmprojoutPHI1Z1_en,
    output reg vmprojoutPHI2Z1_en,
    output reg vmprojoutPHI3Z1_en,
    output reg vmprojoutPHI4Z1_en,
    output reg vmprojoutPHI1Z2_en,
    output reg vmprojoutPHI2Z2_en,
    output reg vmprojoutPHI3Z2_en,
    output reg vmprojoutPHI4Z2_en
    
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    parameter ODD = 1'b1;
    parameter zbit = 29;
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
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        index = 6'h0;
    end
    
    always @(posedge clk) begin
        if(first_clk_pipe) begin
            read_add1 <= 6'h3f;
            read_add2 <= 6'h3f;
            read_add3 <= 6'h3f;    
        end
        else begin
            if(read_add1 + 1'b1 < number_in1) begin
                read_add1 <= read_add1 + 1'b1;
            end
            else begin
                read_add1 <= read_add1;
                if(read_add2 + 1'b1 < number_in2) begin
                    read_add2 <= read_add2 + 1'b1;
                end
                else begin
                    read_add2 <= read_add2;
                    if(read_add3 + 1'b1 < number_in3) begin
                        read_add3 <= read_add3 + 1'b1;
                    end
                    else
                        read_add3 <= read_add3;
                end
            end
        end
    end
    ///////////////////////////////////////////////////////////////////////////
      
    reg [5:0] index;
    reg [12:0] vmprojout;
    
    assign vmprojoutPHI1Z1 = vmprojout;
    assign vmprojoutPHI1Z2 = vmprojout;
    assign vmprojoutPHI2Z1 = vmprojout;
    assign vmprojoutPHI2Z2 = vmprojout;
    assign vmprojoutPHI3Z1 = vmprojout;
    assign vmprojoutPHI3Z2 = vmprojout;
    assign vmprojoutPHI4Z1 = vmprojout;
    assign vmprojoutPHI4Z2 = vmprojout;
    
    always @(posedge clk) begin
        index <= read_add1;
        allprojout <= projin;
        if(ODD) begin
            vmprojout <= {index,projin[40:38],projin[zbit-2'd3:zbit-3'd6]};
            if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b001 |allprojout[43:41] == 3'b010))
                vmprojoutPHI1Z1_en <= 1'b1;
            else
                vmprojoutPHI1Z1_en <= 0;
            if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b011 |allprojout[43:41] == 3'b100))
                vmprojoutPHI2Z1_en <= 1'b1;
            else
                vmprojoutPHI2Z1_en <= 0;
            if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b101 |allprojout[43:41] == 3'b110))
                vmprojoutPHI3Z1_en <= 1'b1;
            else
                vmprojoutPHI3Z1_en <= 0;
            if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b001 |allprojout[43:41] == 3'b010))
                vmprojoutPHI1Z2_en <= 1'b1;
            else
                vmprojoutPHI1Z2_en <= 0;
            if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b011 |allprojout[43:41] == 3'b100))
                vmprojoutPHI2Z2_en <= 1'b1;
            else
                vmprojoutPHI2Z2_en <= 0;
            if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b101 |allprojout[43:41] == 3'b110))
                vmprojoutPHI3Z2_en <= 1'b1;
            else
                vmprojoutPHI3Z2_en <= 0;
        end
        else begin
           vmprojout <= {index,!projin[40],projin[39:38],projin[zbit-2'd3:zbit-3'd6]};
           if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b000 |allprojout[43:41] == 3'b001))
               vmprojoutPHI1Z1_en <= 1'b1;
           else
               vmprojoutPHI1Z1_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b010 |allprojout[43:41] == 3'b011))
               vmprojoutPHI2Z1_en <= 1'b1;
           else
               vmprojoutPHI2Z1_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b100 |allprojout[43:41] == 3'b101))
               vmprojoutPHI3Z1_en <= 1'b1;
           else
               vmprojoutPHI3Z1_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b0 & (allprojout[43:41] == 3'b110 |allprojout[43:41] == 3'b111))
               vmprojoutPHI4Z1_en <= 1'b1;
           else
               vmprojoutPHI4Z1_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b000 |allprojout[43:41] == 3'b001))
               vmprojoutPHI1Z2_en <= 1'b1;
           else
               vmprojoutPHI1Z2_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b010 |allprojout[43:41] == 3'b011))
               vmprojoutPHI2Z2_en <= 1'b1;
           else
               vmprojoutPHI2Z2_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b100 |allprojout[43:41] == 3'b101))
               vmprojoutPHI3Z2_en <= 1'b1;
           else
               vmprojoutPHI3Z2_en <= 0;
           if(allprojout[zbit-2'd2] == 1'b1 & (allprojout[43:41] == 3'b110 |allprojout[43:41] == 3'b111))
               vmprojoutPHI4Z2_en <= 1'b1;
           else
               vmprojoutPHI4Z2_en <= 0;
       end
    end
    
endmodule
