`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:14:20 PM
// Design Name: 
// Module Name: TracksPars
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


module TrackFit(
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
    
    input [125:0] data_in,
    output led_test
    );
    
    assign led_test = data_in[0];
    reg [125:0] data_in_dly;
    wire [125:0] data_out;
    reg wr_en;
    
    always @(posedge clk) begin
        data_in_dly <= data_in;
        if(data_in > 0)
            wr_en <= 1;
        else
            wr_en <= 0;
    end
    
    TP_track_fit_fifo tracks_pars(.wr_clk(clk), .rst(reset), .din(data_in_dly),.wr_en(wr_en),
                                .rd_clk(io_clk), .rd_en(io_sel && io_rd_en), .dout(data_out),
                                .empty(fifo_empty), .full(fifo_full));
    
    
    // Address bits "io_addr[31:30] = 2'b01" are consumed when selecting 'slave6'
    // Address bits "io_addr[29:28] = 2'b01" are consumed when selecting 'tracklet_processing'
    // Address bits "io_addr[27:24] = 4'b0010" are consumed when selecting 'TrackFit'
    wire io_sel_data_reg0, io_sel_data_reg1, io_sel_data_reg2, io_sel_data_reg3;
    assign io_sel_data_reg0 = io_sel && (io_addr[2:0] == 3'b000);
    assign io_sel_data_reg1 = io_sel && (io_addr[2:0] == 3'b001);
    assign io_sel_data_reg2 = io_sel && (io_addr[2:0] == 3'b010);
    assign io_sel_data_reg3 = io_sel && (io_addr[2:0] == 3'b011);

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
        if (io_sel_data_reg0) io_rd_data_reg <= data_out[31:0];
        if (io_sel_data_reg1) io_rd_data_reg <= data_out[63:32];
        if (io_sel_data_reg2) io_rd_data_reg <= data_out[95:64];
        if (io_sel_data_reg3) io_rd_data_reg <= {7'b0, data_out[125:96]};
     end
    
endmodule
