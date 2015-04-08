`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 11:14:49 AM
// Design Name: 
// Module Name: Tracklet_Layer_Router
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


module Tracklet_Layer_Router(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [27:0] io_addr,        // slave address, memory or register. Top 12 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk
    );
    
    // Address bits "io_addr[31:30] = 2'b01" are consumed when selecting 'slave6'
    // Address bits "io_addr[29:28] = 2'b01" are consumed when selecting 'tracklet_processing'
    wire InputLink_R1Link1_io_sel, TPars_L1L2_io_sel;
    wire InputLink_R1Link2_io_sel, TPars_L3L4_io_sel;
    wire InputLink_R1Link3_io_sel, TPars_L5L6_io_sel;
    wire io_sel_R3_io_block;
    assign InputLink_R1Link1_io_sel = io_sel && (io_addr[27:24] == 4'b0001);
    assign InputLink_R1Link2_io_sel = io_sel && (io_addr[27:24] == 4'b0010);
    assign InputLink_R1Link3_io_sel = io_sel && (io_addr[27:24] == 4'b0011);
    assign TPars_L1L2_io_sel  = io_sel && (io_addr[27:24] == 4'b0100);
    assign TPars_L3L4_io_sel  = io_sel && (io_addr[27:24] == 4'b0101);
    assign TPars_L5L6_io_sel  = io_sel && (io_addr[27:24] == 4'b0110);
    assign io_sel_R3_io_block = io_sel && (io_addr[27:24] == 4'b1000);
    // data busses for readback
    wire [31:0] InputLink_R1Link1_io_rd_data, TPars_L1L2_io_rd_data;
    wire [31:0] InputLink_R1Link2_io_rd_data, TPars_L3L4_io_rd_data;
    wire [31:0] InputLink_R1Link3_io_rd_data, TPars_L5L6_io_rd_data;

    assign start1 = (clk_cnt == 1);
    assign start2 = done1; 
//    assign start3 = done2; 
//    assign start4 = done3; 
//    assign start5 = done4; 
//    assign start6 = done5; 
//    assign start7 = done6; 
//    assign start8 = done7; 
//    assign start9 = done8; 
//    assign start10 = done9; 
    
    assign start1_5 = (clk_cnt == 1);
    assign start2_5 = done1_5; 
//    assign start3_5 = done2_5; 
//    assign start4_5 = done3_5; 
//    assign start5_5 = done4_5; 
//    assign start6_5 = done5_5; 
//    assign start7_5 = done6_5; 
//    assign start8_5 = done7_5; 
//    assign start9_5 = done8_5; 


    reg [6:0] clk_cnt;
    initial
        clk_cnt = 7'b0;
        
    always @(posedge clk) begin
        if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
        else begin
           clk_cnt <= 7'b0;
        end
    end
    
    wire IL1_D3_LR1_D3_read_en;
    wire [35:0] IL1_D3_LR1_D3;
    InputLink  IL1_D3(
    .read_en(IL1_D3_LR1_D3_read_en),
    .data_out(IL1_D3_LR1_D3),
    .start(),.done(),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(InputLink_R1Link1_io_sel || InputLink_R1Link2_io_sel || InputLink_R1Link3_io_sel),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(InputLink_R1Link1_io_rd_data),
    .io_rd_ack(InputLink_R1Link1_io_rd_ack),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );

    

    wire [35:0] LR1_D3_SL1_L1D3;
    wire [5:0] SL1_L1D3_VMR_L1D3_number;
    wire [5:0] SL1_L1D3_VMR_L1D3_read_add;
    wire [35:0] SL1_L1D3_VMR_L1D3;
    StubsByLayer  SL1_L1D3(
    .data_in(LR1_D3_SL1_L1D3),
    .number_out(SL1_L1D3_VMR_L1D3_number),
    .read_add(SL1_L1D3_VMR_L1D3_read_add),
    .data_out(SL1_L1D3_VMR_L1D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [35:0] LR1_D3_SL1_L2D3;
    wire [5:0] SL1_L2D3_VMR_L2D3_number;
    wire [5:0] SL1_L2D3_VMR_L2D3_read_add;
    wire [35:0] SL1_L2D3_VMR_L2D3;
    StubsByLayer  SL1_L2D3(
    .data_in(LR1_D3_SL1_L2D3),
    .number_out(SL1_L2D3_VMR_L2D3_number),
    .read_add(SL1_L2D3_VMR_L2D3_read_add),
    .data_out(SL1_L2D3_VMR_L2D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [35:0] LR1_D3_SL1_L3D3;
    wire [5:0] SL1_L3D3_VMR_L3D3_number;
    wire [5:0] SL1_L3D3_VMR_L3D3_read_add;
    wire [35:0] SL1_L3D3_VMR_L3D3;
    StubsByLayer  SL1_L3D3(
    .data_in(LR1_D3_SL1_L3D3),
    .number_out(SL1_L3D3_VMR_L3D3_number),
    .read_add(SL1_L3D3_VMR_L3D3_read_add),
    .data_out(SL1_L3D3_VMR_L3D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [35:0] LR1_D3_SL1_L4D3;
    wire [5:0] SL1_L4D3_VMR_L4D3_number;
    wire [5:0] SL1_L4D3_VMR_L4D3_read_add;
    wire [35:0] SL1_L4D3_VMR_L4D3;
    StubsByLayer  SL1_L4D3(
    .data_in(LR1_D3_SL1_L4D3),
    .number_out(SL1_L4D3_VMR_L4D3_number),
    .read_add(SL1_L4D3_VMR_L4D3_read_add),
    .data_out(SL1_L4D3_VMR_L4D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [35:0] LR1_D3_SL1_L5D3;
    wire [5:0] SL1_L5D3_VMR_L5D3_number;
    wire [5:0] SL1_L5D3_VMR_L5D3_read_add;
    wire [35:0] SL1_L5D3_VMR_L5D3;
    StubsByLayer  SL1_L5D3(
    .data_in(LR1_D3_SL1_L5D3),
    .number_out(SL1_L5D3_VMR_L5D3_number),
    .read_add(SL1_L5D3_VMR_L5D3_read_add),
    .data_out(SL1_L5D3_VMR_L5D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [35:0] LR1_D3_SL1_L6D3;
    wire [5:0] SL1_L6D3_VMR_L6D3_number;
    wire [5:0] SL1_L6D3_VMR_L6D3_read_add;
    wire [35:0] SL1_L6D3_VMR_L6D3;
    StubsByLayer  SL1_L6D3(
    .data_in(LR1_D3_SL1_L6D3),
    .number_out(SL1_L6D3_VMR_L6D3_number),
    .read_add(SL1_L6D3_VMR_L6D3_read_add),
    .data_out(SL1_L6D3_VMR_L6D3),
    .start(start2),.done(done1_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    LayerRouter  LR1_D3(
    .stubin(IL1_D3_LR1_D3),
    .read_en(IL1_D3_LR1_D3_read_en),
    .stuboutL1(LR1_D3_SL1_L1D3),
    .stuboutL2(LR1_D3_SL1_L2D3),
    .stuboutL3(LR1_D3_SL1_L3D3),
    .stuboutL4(LR1_D3_SL1_L4D3),
    .stuboutL5(LR1_D3_SL1_L5D3),
    .stuboutL6(LR1_D3_SL1_L6D3),
    .start(start1_5),.done(done1),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [31:0] reader_out;
    
    reader reader1(
    
    .read_add1(SL1_L1D3_VMR_L1D3_read_add),
    .read_add2(SL1_L2D3_VMR_L2D3_read_add),
    .read_add3(SL1_L3D3_VMR_L3D3_read_add),
    .read_add4(SL1_L4D3_VMR_L4D3_read_add),
    .read_add5(SL1_L5D3_VMR_L5D3_read_add),
    .read_add6(SL1_L6D3_VMR_L6D3_read_add),
    
    .number_in1(SL1_L1D3_VMR_L1D3_number),
    .number_in2(SL1_L2D3_VMR_L2D3_number),
    .number_in3(SL1_L3D3_VMR_L3D3_number),
    .number_in4(SL1_L4D3_VMR_L4D3_number),
    .number_in5(SL1_L5D3_VMR_L5D3_number),
    .number_in6(SL1_L6D3_VMR_L6D3_number),
    
    .input1(SL1_L1D3_VMR_L1D3),
    .input2(SL1_L2D3_VMR_L2D3),
    .input3(SL1_L3D3_VMR_L3D3),
    .input4(SL1_L4D3_VMR_L4D3),
    .input5(SL1_L5D3_VMR_L5D3),
    .input6(SL1_L6D3_VMR_L6D3),
    
    .clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(reader_out),
    .io_rd_ack(reader_ack),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );


    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a mux to steer the readback data from one of the segments to the ipbus
    reg [31:0] io_rd_data_reg;
    assign io_rd_data = io_rd_data_reg;
    // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_rd_en & (reader_ack);
    end

    always @(posedge io_clk) begin
        if (reader_ack)    io_rd_data_reg <= reader_out;
    end
    

    
endmodule
