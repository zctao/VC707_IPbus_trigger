`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2015 02:25:42 PM
// Design Name: 
// Module Name: Tracklet_Tracklet_Engine
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


module Tracklet_Tracklet_Engine(
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
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n2;
    wire [5:0] VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_number;
    wire [5:0] VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1;
    VMStubs  VMS_L1D3PHI1Z1n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n2),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_number),
    .read_add(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add),
    .data_out(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1),
    .start(start3),.done(done2_5),.clk(clk),
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
    
    wire [17:0] VMR_L2D3_VMS_L2D3PHI2Z1n1;
    wire VMR_L2D3_VMS_L2D3PHI2Z1_en;
    wire [5:0] VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_number;
    wire [5:0] VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add;
    wire [17:0] VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1;
    VMStubs  VMS_L2D3PHI2Z1n1(
    .data_in(VMR_L2D3_VMS_L2D3PHI2Z1n1),
    .enable(VMR_L2D3_VMS_L2D3PHI2Z1_en),
    .number_out(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_number),
    .read_add(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add),
    .data_out(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1),
    .start(start3),.done(done2_5),.clk(clk),
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
    
    wire [11:0] TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z1_L2D3PHI2Z1(
    .data_in(TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1),
    .number_out(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
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
        
    TrackletEngine #("D:/GLIB Firmware/branches/jectest/prj/viv_1/project_3/tables/TETable_R3L1Z1PHI0_R3L2Z1PHI1_phi.txt","D:/GLIB Firmware/branches/jectest/prj/viv_1/project_3/tables/TETable_R3L1Z1PHI0_R3L2Z1PHI1_z.txt") TE_L1D3PHI1Z1_L2D3PHI2Z1(
    .number_in1(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_number),
    .read_add1(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add),
    .innervmstubin(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1),
    .number_in2(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_number),
    .read_add2(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add),
    .outervmstubin(VMS_L2D3PHI2Z1n1_TE_L1D3PHI1Z1_L2D3PHI2Z1),
    .stubpairout(TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1),
    .start(start3_5),.done(done3),.clk(clk),
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
    
    writer writer1(
    .read_en(en_proc),
    .data_out1(VMR_L1D3_VMS_L1D3PHI1Z1n2),
    .data_out2(VMR_L2D3_VMS_L2D3PHI2Z1n1),
    //.data_out3(LR3_D3_SL3_L1D3),
    
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
    
    wire [31:0] reader_out;       
    reader reader1( 
    .read_add1(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),  
    .number_in1(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .input1(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    
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
    
endmodule
