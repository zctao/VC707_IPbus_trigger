`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 01:45:43 PM
// Design Name: 
// Module Name: TrackPars
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


module TrackletParameters(
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
    
    input [5:0] read_add,
    output [53:0] data_out
    );

    assign io_sel_spy_1       = io_sel && (io_addr[23:21] == 3'b000);
    assign io_sel_spy_2       = io_sel && (io_addr[23:21] == 3'b001);
    // no IPbus here yet
    //assign io_rd_data[31:0] = 32'h00000000;
    //assign io_rd_ack = 1'b0;
    
    reg [53:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg [4:0] BX_pipe_spy;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
       BX_pipe_spy = 5'b11111;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
           BX_pipe_spy <= 5'b11111;
       end
       if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           BX_pipe_spy <= BX_pipe_spy + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
    end
        
    always @(posedge clk) begin
        if(data_in > 0)
            data_in_dly <= data_in;
        else
            data_in_dly <= 0;
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
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
    end

    Memory #(54) Tracklet(
        // Output
        .output_data(data_out),
        // Input
        .clock(clk),
        .write_address({BX_pipe-3'b011,wr_add}),
        .write_enable(wr_en),
        .read_address({BX_pipe-3'b111,read_add}),
        .input_data(data_in_dly)
    );
    
    wire [53:0] data_out_spy;
    
    Memory #(54,11) Tracklet_spy(
        // Output
        .output_data(data_out_spy),
        // Input
        .clock(clk),
        .write_address({BX_pipe_spy-3'b011,wr_add}),
        .write_enable(wr_en),
        .read_address(io_addr[10:0]),
        .input_data(data_in_dly)
    );
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // readback mux
    // If a particular register or memory is addressed, connect that register's or memory's signals
    // to the 'io_rd_data' output. At the same time, assert 'io_rd_ack' to tell downstream muxes to
    // use the 'io_rd_data' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
    assign io_rd_data[31:0] = io_rd_data_reg[31:0];
    // Assert 'io_rd_ack' if chip select for this module is asserted during a 'read' operation.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_sel & io_rd_en;
    end
    // Route the selected memory to the 'rdbk' output.
    always @(posedge io_clk) begin
        if (io_sel_spy_1) io_rd_data_reg <= data_out_spy[31:0];
        if (io_sel_spy_2) io_rd_data_reg <= data_out_spy[53:32];
        //if (io_sel_data_in1) io_rd_data_reg <= data_out_spy[35:4];
    end

    
endmodule
