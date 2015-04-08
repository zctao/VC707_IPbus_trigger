`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 04:30:13 PM
// Design Name: 
// Module Name: Tracklet_VM_Router
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


module Tracklet_VM_Router(
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
    
    wire io_sel_R3_io_block;
    assign io_sel_R3_io_block = io_sel && (io_addr[27:24] == 4'b1000);
    
    
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

    wire [35:0] LR2_D3_SL2_L1D3;
    wire [5:0] SL2_L1D3_VMR_L1D3_number;
    wire [5:0] SL2_L1D3_VMR_L1D3_read_add;
    wire [35:0] SL2_L1D3_VMR_L1D3;
    StubsByLayer  SL2_L1D3(
    .data_in(LR2_D3_SL2_L1D3),
    .number_out(SL2_L1D3_VMR_L1D3_number),
    .read_add(SL2_L1D3_VMR_L1D3_read_add),
    .data_out(SL2_L1D3_VMR_L1D3),
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
    
    wire [35:0] LR3_D3_SL3_L1D3;
    wire [5:0] SL3_L1D3_VMR_L1D3_number;
    wire [5:0] SL3_L1D3_VMR_L1D3_read_add;
    wire [35:0] SL3_L1D3_VMR_L1D3;
    StubsByLayer  SL3_L1D3(
    .data_in(LR3_D3_SL3_L1D3),
    .number_out(SL3_L1D3_VMR_L1D3_number),
    .read_add(SL3_L1D3_VMR_L1D3_read_add),
    .data_out(SL3_L1D3_VMR_L1D3),
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

    wire [35:0] VMR_L1D3_AS_D3L1n1;
    wire [5:0] AS_D3L1n1_TC_L1D3L2D3_read_add;
    wire [35:0] AS_D3L1n1_TC_L1D3L2D3;
    AllStubs  AS_D3L1n1(
    .data_in(VMR_L1D3_AS_D3L1n1),
    .read_add(AS_D3L1n1_TC_L1D3L2D3_read_add),
    .data_out(AS_D3L1n1_TC_L1D3L2D3),
    .start(start3),.done(),.clk(clk),
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
    
    
    wire [35:0] VMR_L1D3_AS_D3L1n2;
    wire [5:0] AS_D3L1n2_MC_L3L4_L1D3_read_add;
    wire [35:0] AS_D3L1n2_MC_L3L4_L1D3;
    AllStubs  AS_D3L1n2(
    .data_in(VMR_L1D3_AS_D3L1n2),
    .read_add_MC(AS_D3L1n2_MC_L3L4_L1D3_read_add),
    .data_out_MC(AS_D3L1n2_MC_L3L4_L1D3),
    .start(start3),.done(done),.clk(clk),
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
    
    
    wire [35:0] VMR_L1D3_AS_D3L1n3;
    wire [5:0] AS_D3L1n3_MC_L5L6_L1D3_read_add;
    wire [35:0] AS_D3L1n3_MC_L5L6_L1D3;
    AllStubs  AS_D3L1n3(
    .data_in(VMR_L1D3_AS_D3L1n3),
    .read_add_MC(AS_D3L1n3_MC_L5L6_L1D3_read_add),
    .data_out_MC(AS_D3L1n3_MC_L5L6_L1D3),
    .start(start3),.done(done),.clk(clk),
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

    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n1;
    wire VMR_L1D3_VMS_L1D3PHI1Z1_en;
    wire [5:0] VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_number;
    wire [5:0] VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1;
    VMStubs  VMS_L1D3PHI1Z1n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n1),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_number),
    .read_add(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_read_add),
    .data_out(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n3;
    wire [5:0] VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_number;
    wire [5:0] VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2;
    VMStubs  VMS_L1D3PHI1Z1n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n3),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_number),
    .read_add(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_read_add),
    .data_out(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n4;
    wire [5:0] VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2;
    VMStubs  VMS_L1D3PHI1Z1n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n4),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_number),
    .read_add(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_read_add),
    .data_out(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n5;
    wire [5:0] VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_number;
    wire [5:0] VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1;
    VMStubs  VMS_L1D3PHI1Z1n5(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n5),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out_ME(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_number),
    .read_add_ME(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_read_add),
    .data_out_ME(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z1n6;
    wire [5:0] VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_number;
    wire [5:0] VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_read_add;
    wire [17:0] VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1;
    VMStubs  VMS_L1D3PHI1Z1n6(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z1n6),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .number_out_ME(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_number),
    .read_add_ME(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_read_add),
    .data_out_ME(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z2n1;
    wire VMR_L1D3_VMS_L1D3PHI1Z2_en;
    wire [5:0] VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_number;
    wire [5:0] VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2;
    VMStubs  VMS_L1D3PHI1Z2n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z2n1),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z2_en),
    .number_out(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_number),
    .read_add(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_read_add),
    .data_out(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z2n2;
    wire [5:0] VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2;
    VMStubs  VMS_L1D3PHI1Z2n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z2n2),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z2_en),
    .number_out(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_number),
    .read_add(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_read_add),
    .data_out(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z2n3;
    wire [5:0] VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_number;
    wire [5:0] VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2;
    VMStubs  VMS_L1D3PHI1Z2n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z2n3),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z2_en),
    .number_out_ME(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_number),
    .read_add_ME(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_read_add),
    .data_out_ME(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI1Z2n4;
    wire [5:0] VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_number;
    wire [5:0] VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_read_add;
    wire [17:0] VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2;
    VMStubs  VMS_L1D3PHI1Z2n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI1Z2n4),
    .enable(VMR_L1D3_VMS_L1D3PHI1Z2_en),
    .number_out_ME(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_number),
    .read_add_ME(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_read_add),
    .data_out_ME(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n1;
    wire VMR_L1D3_VMS_L1D3PHI2Z1_en;
    wire [5:0] VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_number;
    wire [5:0] VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1;
    VMStubs  VMS_L1D3PHI2Z1n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n1),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_number),
    .read_add(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_read_add),
    .data_out(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n2;
    wire [5:0] VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_number;
    wire [5:0] VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1;
    VMStubs  VMS_L1D3PHI2Z1n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n2),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_number),
    .read_add(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_read_add),
    .data_out(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n3;
    wire [5:0] VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2;
    VMStubs  VMS_L1D3PHI2Z1n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n3),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_number),
    .read_add(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_read_add),
    .data_out(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n4;
    wire [5:0] VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2;
    VMStubs  VMS_L1D3PHI2Z1n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n4),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_number),
    .read_add(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_read_add),
    .data_out(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n5;
    wire [5:0] VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_number;
    wire [5:0] VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1;
    VMStubs  VMS_L1D3PHI2Z1n5(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n5),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out_ME(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_number),
    .read_add_ME(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_read_add),
    .data_out_ME(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z1n6;
    wire [5:0] VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_number;
    wire [5:0] VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_read_add;
    wire [17:0] VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1;
    VMStubs  VMS_L1D3PHI2Z1n6(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z1n6),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .number_out_ME(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_number),
    .read_add_ME(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_read_add),
    .data_out_ME(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z2n1;
    wire VMR_L1D3_VMS_L1D3PHI2Z2_en;
    wire [5:0] VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2;
    VMStubs  VMS_L1D3PHI2Z2n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z2n1),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z2_en),
    .number_out(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_number),
    .read_add(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_read_add),
    .data_out(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z2n2;
    wire [5:0] VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2;
    VMStubs  VMS_L1D3PHI2Z2n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z2n2),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z2_en),
    .number_out(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_number),
    .read_add(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_read_add),
    .data_out(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z2n3;
    wire [5:0] VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2;
    VMStubs  VMS_L1D3PHI2Z2n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z2n3),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z2_en),
    .number_out_ME(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_number),
    .read_add_ME(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_read_add),
    .data_out_ME(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI2Z2n4;
    wire [5:0] VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_number;
    wire [5:0] VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_read_add;
    wire [17:0] VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2;
    VMStubs  VMS_L1D3PHI2Z2n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI2Z2n4),
    .enable(VMR_L1D3_VMS_L1D3PHI2Z2_en),
    .number_out_ME(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_number),
    .read_add_ME(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_read_add),
    .data_out_ME(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n1;
    wire VMR_L1D3_VMS_L1D3PHI3Z1_en;
    wire [5:0] VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_number;
    wire [5:0] VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1;
    VMStubs  VMS_L1D3PHI3Z1n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n1),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_number),
    .read_add(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_read_add),
    .data_out(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n2;
    wire [5:0] VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_number;
    wire [5:0] VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1;
    VMStubs  VMS_L1D3PHI3Z1n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n2),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_number),
    .read_add(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_read_add),
    .data_out(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n3;
    wire [5:0] VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2;
    VMStubs  VMS_L1D3PHI3Z1n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n3),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_number),
    .read_add(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_read_add),
    .data_out(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n4;
    wire [5:0] VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_number;
    wire [5:0] VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2;
    VMStubs  VMS_L1D3PHI3Z1n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n4),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_number),
    .read_add(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_read_add),
    .data_out(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n5;
    wire [5:0] VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_number;
    wire [5:0] VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1;
    VMStubs  VMS_L1D3PHI3Z1n5(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n5),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out_ME(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_number),
    .read_add_ME(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_read_add),
    .data_out_ME(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z1n6;
    wire [5:0] VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_number;
    wire [5:0] VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_read_add;
    wire [17:0] VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1;
    VMStubs  VMS_L1D3PHI3Z1n6(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z1n6),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .number_out_ME(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_number),
    .read_add_ME(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_read_add),
    .data_out_ME(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z2n1;
    wire VMR_L1D3_VMS_L1D3PHI3Z2_en;
    wire [5:0] VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2;
    VMStubs  VMS_L1D3PHI3Z2n1(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z2n1),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z2_en),
    .number_out(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_number),
    .read_add(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_read_add),
    .data_out(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z2n2;
    wire [5:0] VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_number;
    wire [5:0] VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2;
    VMStubs  VMS_L1D3PHI3Z2n2(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z2n2),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z2_en),
    .number_out(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_number),
    .read_add(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_read_add),
    .data_out(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z2n3;
    wire [5:0] VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2;
    VMStubs  VMS_L1D3PHI3Z2n3(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z2n3),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z2_en),
    .number_out_ME(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_number),
    .read_add_ME(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_read_add),
    .data_out_ME(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2),
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
    
    
    wire [17:0] VMR_L1D3_VMS_L1D3PHI3Z2n4;
    wire [5:0] VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_number;
    wire [5:0] VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_read_add;
    wire [17:0] VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2;
    VMStubs  VMS_L1D3PHI3Z2n4(
    .data_in(VMR_L1D3_VMS_L1D3PHI3Z2n4),
    .enable(VMR_L1D3_VMS_L1D3PHI3Z2_en),
    .number_out_ME(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_number),
    .read_add_ME(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_read_add),
    .data_out_ME(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2),
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

    
    VMRouter #(1'b1,1'b1) VMR_L1D3(
    .number_in1(SL1_L1D3_VMR_L1D3_number),
    .read_add1(SL1_L1D3_VMR_L1D3_read_add),
    .stubinLink1(SL1_L1D3_VMR_L1D3),
    .number_in2(SL2_L1D3_VMR_L1D3_number),
    .read_add2(SL2_L1D3_VMR_L1D3_read_add),
    .stubinLink2(SL2_L1D3_VMR_L1D3),
    .number_in3(SL3_L1D3_VMR_L1D3_number),
    .read_add3(SL3_L1D3_VMR_L1D3_read_add),
    .stubinLink3(SL3_L1D3_VMR_L1D3),
    .allstuboutn1(VMR_L1D3_AS_D3L1n1),
    .allstuboutn2(VMR_L1D3_AS_D3L1n2),
    .allstuboutn3(VMR_L1D3_AS_D3L1n3),
    .vmstuboutPHI1Z1n1(VMR_L1D3_VMS_L1D3PHI1Z1n1),
    .vmstuboutPHI1Z1n2(VMR_L1D3_VMS_L1D3PHI1Z1n2),
    .vmstuboutPHI1Z1n3(VMR_L1D3_VMS_L1D3PHI1Z1n3),
    .vmstuboutPHI1Z1n4(VMR_L1D3_VMS_L1D3PHI1Z1n4),
    .vmstuboutPHI1Z1n5(VMR_L1D3_VMS_L1D3PHI1Z1n5),
    .vmstuboutPHI1Z1n6(VMR_L1D3_VMS_L1D3PHI1Z1n6),
    .vmstuboutPHI1Z2n1(VMR_L1D3_VMS_L1D3PHI1Z2n1),
    .vmstuboutPHI1Z2n2(VMR_L1D3_VMS_L1D3PHI1Z2n2),
    .vmstuboutPHI1Z2n3(VMR_L1D3_VMS_L1D3PHI1Z2n3),
    .vmstuboutPHI1Z2n4(VMR_L1D3_VMS_L1D3PHI1Z2n4),
    .vmstuboutPHI2Z1n1(VMR_L1D3_VMS_L1D3PHI2Z1n1),
    .vmstuboutPHI2Z1n2(VMR_L1D3_VMS_L1D3PHI2Z1n2),
    .vmstuboutPHI2Z1n3(VMR_L1D3_VMS_L1D3PHI2Z1n3),
    .vmstuboutPHI2Z1n4(VMR_L1D3_VMS_L1D3PHI2Z1n4),
    .vmstuboutPHI2Z1n5(VMR_L1D3_VMS_L1D3PHI2Z1n5),
    .vmstuboutPHI2Z1n6(VMR_L1D3_VMS_L1D3PHI2Z1n6),
    .vmstuboutPHI2Z2n1(VMR_L1D3_VMS_L1D3PHI2Z2n1),
    .vmstuboutPHI2Z2n2(VMR_L1D3_VMS_L1D3PHI2Z2n2),
    .vmstuboutPHI2Z2n3(VMR_L1D3_VMS_L1D3PHI2Z2n3),
    .vmstuboutPHI2Z2n4(VMR_L1D3_VMS_L1D3PHI2Z2n4),
    .vmstuboutPHI3Z1n1(VMR_L1D3_VMS_L1D3PHI3Z1n1),
    .vmstuboutPHI3Z1n2(VMR_L1D3_VMS_L1D3PHI3Z1n2),
    .vmstuboutPHI3Z1n3(VMR_L1D3_VMS_L1D3PHI3Z1n3),
    .vmstuboutPHI3Z1n4(VMR_L1D3_VMS_L1D3PHI3Z1n4),
    .vmstuboutPHI3Z1n5(VMR_L1D3_VMS_L1D3PHI3Z1n5),
    .vmstuboutPHI3Z1n6(VMR_L1D3_VMS_L1D3PHI3Z1n6),
    .vmstuboutPHI3Z2n1(VMR_L1D3_VMS_L1D3PHI3Z2n1),
    .vmstuboutPHI3Z2n2(VMR_L1D3_VMS_L1D3PHI3Z2n2),
    .vmstuboutPHI3Z2n3(VMR_L1D3_VMS_L1D3PHI3Z2n3),
    .vmstuboutPHI3Z2n4(VMR_L1D3_VMS_L1D3PHI3Z2n4),
    .vmstuboutPHI1Z1_en(VMR_L1D3_VMS_L1D3PHI1Z1_en),
    .vmstuboutPHI1Z2_en(VMR_L1D3_VMS_L1D3PHI1Z2_en),
    .vmstuboutPHI2Z1_en(VMR_L1D3_VMS_L1D3PHI2Z1_en),
    .vmstuboutPHI2Z2_en(VMR_L1D3_VMS_L1D3PHI2Z2_en),
    .vmstuboutPHI3Z1_en(VMR_L1D3_VMS_L1D3PHI3Z1_en),
    .vmstuboutPHI3Z2_en(VMR_L1D3_VMS_L1D3PHI3Z2_en),
    .start(start2_5),.done(done2),.clk(clk),
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
    .data_out1(LR1_D3_SL1_L1D3),
    .data_out2(LR2_D3_SL2_L1D3),
    .data_out3(LR3_D3_SL3_L1D3),
    
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
    .read_add1(AS_D3L1n1_TC_L1D3L2D3_read_add),
    .read_add2(AS_D3L1n2_MC_L3L4_L1D3_read_add),
    .read_add3(AS_D3L1n3_MC_L5L6_L1D3_read_add),
    .read_add4(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_read_add),
    .read_add5(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_read_add),
    .read_add6(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_read_add),
    .read_add7(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_read_add),
    .read_add8(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_read_add),
    .read_add9(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_read_add),
    .read_add10(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_read_add),
    .read_add11(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_read_add),
    .read_add12(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_read_add),
    .read_add13(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_read_add),
    .read_add14(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_read_add),
    .read_add15(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_read_add),
    .read_add16(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_read_add),
    .read_add17(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_read_add),
    .read_add18(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_read_add),
    .read_add19(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_read_add),
    .read_add20(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_read_add),
    .read_add21(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_read_add),
    .read_add22(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_read_add),
    .read_add23(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_read_add),
    .read_add24(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_read_add),
    .read_add25(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_read_add),
    .read_add26(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_read_add),
    .read_add27(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_read_add),
    .read_add28(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_read_add),
    .read_add29(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_read_add),
    .read_add30(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_read_add),
    .read_add31(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_read_add),
    .read_add32(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_read_add),
    .read_add33(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_read_add),
    
    
    .number_in1(),
    .number_in2(),
    .number_in3(),
    .number_in4(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1_number),
    .number_in5(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1_number),
    .number_in6(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2_number),
    .number_in7(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2_number),
    .number_in8(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1_number),
    .number_in9(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1_number),
    .number_in10(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2_number),
    .number_in11(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2_number),
    .number_in12(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2_number),
    .number_in13(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2_number),
    .number_in14(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1_number),
    .number_in15(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1_number),
    .number_in16(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2_number),
    .number_in17(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2_number),
    .number_in18(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1_number),
    .number_in19(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1_number),
    .number_in20(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2_number),
    .number_in21(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2_number),
    .number_in22(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2_number),
    .number_in23(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2_number),
    .number_in24(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1_number),
    .number_in25(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1_number),
    .number_in26(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2_number),
    .number_in27(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2_number),
    .number_in28(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1_number),
    .number_in29(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1_number),
    .number_in30(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2_number),
    .number_in31(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2_number),
    .number_in32(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2_number),
    .number_in33(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2_number),
    
    
    .input1(AS_D3L1n1_TC_L1D3L2D3),
    .input2(AS_D3L1n2_MC_L3L4_L1D3),
    .input3(AS_D3L1n3_MC_L5L6_L1D3),
    .input4(VMS_L1D3PHI1Z1n1_TE_L1D3PHI1Z1_L2D3PHI1Z1),
    .input5(VMS_L1D3PHI1Z1n2_TE_L1D3PHI1Z1_L2D3PHI2Z1),
    .input6(VMS_L1D3PHI1Z1n3_TE_L1D3PHI1Z1_L2D3PHI1Z2),
    .input7(VMS_L1D3PHI1Z1n4_TE_L1D3PHI1Z1_L2D3PHI2Z2),
    .input8(VMS_L1D3PHI1Z1n5_ME_L3L4_L1D3PHI1Z1),
    .input9(VMS_L1D3PHI1Z1n6_ME_L5L6_L1D3PHI1Z1),
    .input10(VMS_L1D3PHI1Z2n1_TE_L1D3PHI1Z2_L2D3PHI1Z2),
    .input11(VMS_L1D3PHI1Z2n2_TE_L1D3PHI1Z2_L2D3PHI2Z2),
    .input12(VMS_L1D3PHI1Z2n3_ME_L3L4_L1D3PHI1Z2),
    .input13(VMS_L1D3PHI1Z2n4_ME_L5L6_L1D3PHI1Z2),
    .input14(VMS_L1D3PHI2Z1n1_TE_L1D3PHI2Z1_L2D3PHI2Z1),
    .input15(VMS_L1D3PHI2Z1n2_TE_L1D3PHI2Z1_L2D3PHI3Z1),
    .input16(VMS_L1D3PHI2Z1n3_TE_L1D3PHI2Z1_L2D3PHI2Z2),
    .input17(VMS_L1D3PHI2Z1n4_TE_L1D3PHI2Z1_L2D3PHI3Z2),
    .input18(VMS_L1D3PHI2Z1n5_ME_L3L4_L1D3PHI2Z1),
    .input19(VMS_L1D3PHI2Z1n6_ME_L5L6_L1D3PHI2Z1),
    .input20(VMS_L1D3PHI2Z2n1_TE_L1D3PHI2Z2_L2D3PHI2Z2),
    .input21(VMS_L1D3PHI2Z2n2_TE_L1D3PHI2Z2_L2D3PHI3Z2),
    .input22(VMS_L1D3PHI2Z2n3_ME_L3L4_L1D3PHI2Z2),
    .input23(VMS_L1D3PHI2Z2n4_ME_L5L6_L1D3PHI2Z2),
    .input24(VMS_L1D3PHI3Z1n1_TE_L1D3PHI3Z1_L2D3PHI3Z1),
    .input25(VMS_L1D3PHI3Z1n2_TE_L1D3PHI3Z1_L2D3PHI4Z1),
    .input26(VMS_L1D3PHI3Z1n3_TE_L1D3PHI3Z1_L2D3PHI3Z2),
    .input27(VMS_L1D3PHI3Z1n4_TE_L1D3PHI3Z1_L2D3PHI4Z2),
    .input28(VMS_L1D3PHI3Z1n5_ME_L3L4_L1D3PHI3Z1),
    .input29(VMS_L1D3PHI3Z1n6_ME_L5L6_L1D3PHI3Z1),
    .input30(VMS_L1D3PHI3Z2n1_TE_L1D3PHI3Z2_L2D3PHI3Z2),
    .input31(VMS_L1D3PHI3Z2n2_TE_L1D3PHI3Z2_L2D3PHI4Z2),
    .input32(VMS_L1D3PHI3Z2n3_ME_L3L4_L1D3PHI3Z2),
    .input33(VMS_L1D3PHI3Z2n4_ME_L5L6_L1D3PHI3Z2),    
    
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
