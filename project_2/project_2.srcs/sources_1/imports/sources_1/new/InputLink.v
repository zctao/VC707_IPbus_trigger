`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 11:13:04 AM
// Design Name: 
// Module Name: InputLink
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


module InputLink(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 8 bits already consumed.
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
    
    input read_en,
    output [35:0] data_out
    );
    
    reg [31:0] data_in0;
    reg [31:0] data_in1;
    reg [31:0] data_in_lcd;
    reg [35:0] data_in;
    reg [35:0] data_in_dly;
    reg en_proc_dly;
    reg en_proc_dly2;
    wire test;
    wire wr_en;

    // Address bits "io_addr[31:30] = 2'b01" are consumed when selecting 'slave6'
    // Address bits "io_addr[29:28] = 2'b01" are consumed when selecting 'tracklet_processing'
    // Address bits "io_addr[27:24] = 4'b0001" are consumed when selecting 'R1Link1'
    wire io_sel_data_in0, io_sel_data_in1;
    wire io_sel_spy;
    wire io_sel_lcd;
    assign io_sel_data_in0  = io_sel && (io_addr[2:0] == 3'b011);
    assign io_sel_data_in1  = io_sel && (io_addr[2:0] == 3'b111);
    assign io_sel_spy       = io_sel && (io_addr[2:0] == 3'b000);
    assign io_sel_lcd       = io_sel && (io_addr[2:0] == 3'b001);
    
    // From the IPbus perspective, the goal here is to combine the data from two 32-bit words
    // into a 36-bit word, and write that word into the 'raw_stub' fifo.   
    always @ (posedge io_clk) begin
        if (io_wr_en && io_sel_data_in0) data_in0 <= io_wr_data;
        if (io_wr_en && io_sel_data_in1) data_in1 <= io_wr_data;
        if (io_wr_en && io_sel_lcd)      data_in_lcd <= io_wr_data;
        
        data_in_dly   <= data_in;
        if ( data_in0[31:28] == data_in1[31:28])
          data_in <= {data_in0[15:0],data_in1[19:0]};
        else
            data_in <= 0;
    end
    
    assign test     = data_in != data_in_dly;
    //assign wr_en    = data_in[19:0] != 20'hfffff && data_in != 0 && data_in_dly[38:37] == LINK && test;
    assign wr_en    = test;
            
    // Crossing clock domains
    always @(posedge clk) begin
        en_proc_dly <= en_proc; 
        en_proc_dly2 <= en_proc_dly;
        
     end
    wire raw_stubs_link1_fifo_empty,raw_stubs_link1_fifo_full;
    TP_raw_stub_fifo raw_stubs(.wr_clk(io_clk), .rst(reset), .din(data_in_dly), .wr_en(data_in != data_in_dly & data_in_dly != 0), 
                                .rd_clk(clk), .rd_en(en_proc_dly2 & read_en), .dout(data_out),
                                .empty(raw_stubs_link1_fifo_empty), .full(raw_stubs_link1_fifo_full));
    
   wire [35:0] data_out_spy;
 /*  TP_raw_stub_fifo raw_stubs_spy(.wr_clk(io_clk), .rst(reset), .din(data_in_dly), .wr_en(data_in != data_in_dly & data_in_dly != 0), 
                                .rd_clk(io_clk), .rd_en(io_sel_spy & io_rd_en), .dout(data_out_spy),
                                .empty(raw_stubs_spy_link1_fifo_empty), .full(raw_stubs_spy_link1_fifo_full));
   */ 
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
        if (io_rd_en && io_sel_data_in0) io_rd_data_reg <= data_in0;
        if (io_rd_en && io_sel_lcd) io_rd_data_reg <= data_in_lcd;
        //if (io_sel_data_in1) io_rd_data_reg <= data_out_spy[35:4];
    end

endmodule
