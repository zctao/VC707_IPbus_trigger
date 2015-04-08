`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 03:18:24 PM
// Design Name: 
// Module Name: VMStubs
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


module VMStubs(
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
    
    input [17:0] data_in,
    input enable,
    
    output reg [5:0] number_out,
    input [5:0] read_add,
    output reg [17:0] data_out,
    output reg [5:0] number_out_ME,
    input [5:0] read_add_ME,
    output reg [17:0] data_out_ME
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

    
    reg [17:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    reg [5:0] number_hold0;
    reg [5:0] number_hold1;
    reg [5:0] number_hold2;
    reg [5:0] number_hold3;
    
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
    
    wire [17:0] pre_data_out;
    wire [17:0] pre_data_out_ME;
    
    always @(posedge clk) begin
        data_in_dly <= data_in;
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
            number_out <= wr_add + 1'b1;
            number_hold0 <= number_out;
            number_hold1 <= number_hold0;
            number_hold2 <= number_hold1;
            number_hold3 <= number_hold2;
            number_out_ME <= number_hold1;
        end
        else begin
            if(data_in != 0 & data_in != data_in_dly) begin
                wr_add <= wr_add + 1'b1;
                wr_en <= 1'b1;
            end
            else begin
                wr_add <= wr_add;
                wr_en <= 1'b0;
            end
        end
        data_out <= pre_data_out;
        data_out_ME <= pre_data_out_ME;
    end
    
    assign done = start;

    Memory #(18) VMStub(
        // Output
        .output_data(pre_data_out),
        // Input
        .clock(clk),
        .write_address({BX_pipe-3'b001,wr_add}),
        .write_enable(wr_en & enable),
        .read_address({BX_pipe-3'b010,read_add}),
        .input_data(data_in_dly)
    );
    
    Memory #(18) VMStub_ME(
        // Output
        .output_data(pre_data_out_ME),
        // Input
        .clock(clk),
        .write_address({BX_pipe-3'b001,wr_add}),
        .write_enable(wr_en & enable),
        .read_address({BX_pipe-3'b101,read_add_ME}),
        .input_data(data_in_dly)
    );
    
endmodule
