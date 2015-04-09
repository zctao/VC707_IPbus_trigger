`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2015 02:36:10 PM
// Design Name: 
// Module Name: Link_Interface
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


module Link_Interface(
        // programming interface
        input wire io_clk,
        input wire io_reset,
        input wire io_sel,
        input wire [15:0] io_addr,
        input wire io_sync,
        input wire io_rd_en,
        input wire io_wr_en,
        input wire [31:0] io_wr_data,
        // outputs
        output wire [31:0] io_rd_data,
        output wire io_rd_ack,

        //Clocks
        input wire clk,                             //clock for data stream from system side        
        input wire aurora_user_clk,                 //aurora user clock
        //reset
        input wire axis_resetn,                     //reset from system side, in sync with clk
        input wire local_axis_resetn,               //reset from aurora side, in sync with aurora user clk
        //enable
        input wire fsm_en,
        //tx ports
        output wire        local_axis_tx_tvalid,
        output wire [0:15] local_axis_tx_tdata,
        output wire [0:1]  local_axis_tx_tkeep,
        output wire        local_axis_tx_tlast,
        input wire         local_axis_tx_tready,
        //rx ports
        input wire         local_axis_rx_tvalid,
        input wire [0:15]  local_axis_rx_tdata,
        input wire [0:1]   local_axis_rx_tkeep,
        input wire         local_axis_rx_tlast
    );
        
    wire txdata1_sel, txdata2_sel, txdata3_sel;
    wire rxdata1_sel, rxdata2_sel, rxdata3_sel;
    wire rxstat1_sel, rxstat2_sel, rxstat3_sel;
    //address assignments
    //tx regs
    assign txdata1_sel = io_sel && (io_addr[3:0] == 4'b0000);
    assign txdata2_sel = io_sel && (io_addr[3:0] == 4'b0001);
    assign txdata3_sel = io_sel && (io_addr[3:0] == 4'b0010);
    //rx regs
    assign rxdata1_sel = io_sel && (io_addr[3:0] == 4'b0011);
    assign rxdata2_sel = io_sel && (io_addr[3:0] == 4'b0100);
    assign rxdata3_sel = io_sel && (io_addr[3:0] == 4'b0101);
    assign rxstat1_sel = io_sel && (io_addr[3:0] == 4'b0110);
    assign rxstat2_sel = io_sel && (io_addr[3:0] == 4'b0111);
    assign rxstat3_sel = io_sel && (io_addr[3:0] == 4'b1000);   

    //TX and RX regs
    reg [15:0] txdata1_reg;
    reg [15:0] txdata2_reg;
    reg [15:0] txdata3_reg;
    reg [15:0] rxdata1_reg;
    reg [15:0] rxdata2_reg;
    reg [15:0] rxdata3_reg;
    reg [15:0] rxstat1_reg;
    reg [15:0] rxstat2_reg;
    reg [15:0] rxstat3_reg;
    
    //TX interface to slave side of transmit FIFO
    wire [0:15] s_axis_tx_tdata;
    wire [0:1] s_axis_tx_tkeep;
    wire s_axis_tx_tvalid;
    wire s_axis_tx_tlast;
    wire s_axis_tx_tready;      //ready signal from tx_fifo. untied for now. Use for state machine enable?
    //RX interface to master side of receive FIFO
    wire [0:15] m_axis_rx_tdata;
    wire [0:1] m_axis_rx_tkeep;
    wire m_axis_rx_tvalid;
    wire m_axis_rx_tlast;
    wire m_axis_rx_tready;
    
    assign m_axis_rx_tready = 1'b1;         //Rx FIFO is always ready to receive data whenever data comes.
    
    wire fsm_rst;
    assign fsm_rst = ~axis_resetn;
    
    wire local_rst;
    assign local_rst = ~local_axis_resetn;
    
    Data_FSM datain_io (
        //outputs
        .data(s_axis_tx_tdata),
        .valid(s_axis_tx_tvalid),
        .keep(s_axis_tx_tkeep),
        .last(s_axis_tx_tlast),
        //inputs
        .en(fsm_en),
        .reset(fsm_rst),
        .clk(clk),
        .data_1(txdata1_reg),
        .data_2(txdata2_reg),
        .data_3(txdata3_reg)
    );
    
    // Connect the transmit FIFO that buffers data crossing clock domains
    link_axis_data_fifo tx_fifo (
      .s_axis_aresetn(axis_resetn),          // input wire axis_resetn
      .s_axis_aclk(clk),                
      .s_axis_tvalid(s_axis_tx_tvalid),          // input wire s_axis_tvalid
      .s_axis_tready(s_axis_tx_tready),          // output wire s_axis_tready
      .s_axis_tdata(s_axis_tx_tdata),            // input wire [31 : 0] s_axis_tdata
      .s_axis_tkeep(s_axis_tx_tkeep),            // input wire [3 : 0] s_axis_tkeep
      .s_axis_tlast(s_axis_tx_tlast),            // input wire s_axis_tlast
      .m_axis_aresetn(local_axis_resetn),          // input wire m_axis_aresetn
      .m_axis_aclk(aurora_user_clk),                // input wire m_axis_aclk
      .m_axis_tvalid(local_axis_tx_tvalid),          // output wire m_axis_tvalid
      .m_axis_tdata(local_axis_tx_tdata),            // output wire [31 : 0] m_axis_tdata
      .m_axis_tkeep(local_axis_tx_tkeep),            // output wire [3 : 0] m_axis_tkeep
      .m_axis_tready(local_axis_tx_tready),            // input wire m_axis_tready
      .m_axis_tlast(local_axis_tx_tlast)             // output wire m_axis_tlast
    );
    
    // Connect the receive FIFO that buffers data crossing clock domains
    link_axis_data_fifo rx_fifo (
      .s_axis_aresetn(local_axis_resetn),          // input wire s_axis_aresetn
      .s_axis_aclk(aurora_user_clk),                // input wire s_axis_aclk
      .s_axis_tvalid(local_axis_rx_tvalid),          // input wire s_axis_tvalid
      .s_axis_tready(local_axis_rx_tready),          // output wire s_axis_tready IGNORED BY AURORA!!!
      .s_axis_tdata(local_axis_rx_tdata),            // input wire [31 : 0] s_axis_tdata
      .s_axis_tkeep(local_axis_rx_tkeep),            // input wire [3 : 0] s_axis_tkeep
      .s_axis_tlast(local_axis_rx_tlast),            // input wire s_axis_tlast
      .m_axis_aresetn(axis_resetn),                 // input wire axis_aresetn
      .m_axis_aclk(clk),                
      .m_axis_tvalid(m_axis_rx_tvalid),          // output wire m_axis_tvalid
      .m_axis_tdata(m_axis_rx_tdata),            // output wire [31 : 0] m_axis_tdata
      .m_axis_tkeep(m_axis_rx_tkeep),            // output wire [3 : 0] m_axis_tkeep
      .m_axis_tready(m_axis_rx_tready),            // input wire m_axis_tready
      .m_axis_tlast(m_axis_rx_tlast)             // output wire m_axis_tlast
    );    
    
    //readout from tx fifo
    always @ (posedge clk) begin
        if (m_axis_rx_tvalid) begin
            rxdata3_reg <= m_axis_rx_tdata;
            rxdata2_reg <= rxdata3_reg;
            rxdata1_reg <= rxdata2_reg;
            
            rxstat3_reg <= {12'b0, m_axis_rx_tvalid, m_axis_rx_tkeep[0:1], m_axis_rx_tlast};
            rxstat2_reg <= rxstat3_reg;
            rxstat1_reg <= rxstat2_reg;
        end
    end

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // write to txdata_regs
    always @ (posedge io_clk) begin
        if (io_wr_en && txdata1_sel) txdata1_reg <= io_wr_data[15:0];
        if (io_wr_en && txdata2_sel) txdata2_reg <= io_wr_data[15:0];
        if (io_wr_en && txdata3_sel) txdata3_reg <= io_wr_data[15:0];
    end    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
    // Route the selected register to the 'io_rd_data' output.
    always @(posedge io_clk) begin
      if (txdata1_sel)  io_rd_data_reg[31:0] <= {16'b0,txdata1_reg};
      if (txdata2_sel)  io_rd_data_reg[31:0] <= {16'b0,txdata2_reg};
      if (txdata3_sel)  io_rd_data_reg[31:0] <= {16'b0,txdata3_reg};
      if (rxdata1_sel)  io_rd_data_reg[31:0] <= {16'b0,rxdata1_reg};
      if (rxdata2_sel)  io_rd_data_reg[31:0] <= {16'b0,rxdata2_reg};
      if (rxdata3_sel)  io_rd_data_reg[31:0] <= {16'b0,rxdata3_reg};
      if (rxstat1_sel)  io_rd_data_reg[31:0] <= {16'b0,rxstat1_reg};
      if (rxstat2_sel)  io_rd_data_reg[31:0] <= {16'b0,rxstat2_reg};
      if (rxstat3_sel)  io_rd_data_reg[31:0] <= {16'b0,rxstat3_reg};
    end
    
endmodule
