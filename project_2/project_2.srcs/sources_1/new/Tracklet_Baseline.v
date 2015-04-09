`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 11:01:39 AM
// Design Name: 
// Module Name: Tracklet_processing
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


module Tracklet_Baseline(
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
    output wire led_test,
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    output reg [6:0] lcd,
    
    // links
    output wire txn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    output wire txp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)    
    //clock
    input wire gt_refclk_p,
    input wire gt_refclk_n,
    input wire init_clk
    );

    // Address bits "io_addr[31:30] = 2'b01" are consumed when selecting 'slave6'
    // Address bits "io_addr[29:28] = 2'b01" are consumed when selecting 'tracklet_processing'
    wire InputLink_R1Link1_io_sel, TrackFit_TF_L1L2_sel;
    wire Aurora_test_sel;
    wire lcd_sel;
    assign lcd_sel = io_sel && (io_addr[27:24]==4'b1101);    
    assign InputLink_R1Link1_io_sel = io_sel && (io_addr[27:24] == 4'b0001);
    assign TrackFit_TF_L1L2_io_sel  = io_sel && (io_addr[27:24] == 4'b0010);
    assign Aurora_test_io_sel          = io_sel && (io_addr[27:24] == 4'b1010);
 
    wire [31:0] long_lcd;
    always @(posedge clk) begin
        if(long_lcd[31:7] == 25'h0 )
            lcd <= long_lcd[6:0];
    end
 
    // data busses for readback
    wire [31:0] InputLink_R1Link1_io_rd_data, TrackFit_TF_L1L2_io_rd_data;
    wire [31:0] Aurora_test_io_rd_data;
    wire [31:0] lcd_io_rd_data;
 
    wire [35:0] R1Link1_R1Route1;
    wire [35:0] R1Route1_R1Link1L1;
    wire [35:0] R1Route1_R1Link1L2;
    wire [35:0] R1Route1_R1Link1L3;
    
    wire [5:0] R1Link1L1_R1VMRouteL1_number;
    wire [5:0] R1Link1L1_R1VMRouteL1_read_add;
    wire [35:0] R1Link1L1_R1VMRouteL1;
    wire [5:0] R1Link1L2_R1VMRouteL2_number;
    wire [5:0] R1Link1L2_R1VMRouteL2_read_add;
    wire [35:0] R1Link1L2_R1VMRouteL2;
    wire [5:0] R1Link1L3_R1VMRouteL3_number;
    wire [5:0] R1Link1L3_R1VMRouteL3_read_add;
    wire [35:0] R1Link1L3_R1VMRouteL3;
    
    wire [35:0] R1VMRouteL1_AllStubs_R1L1n1;
    wire [17:0] R1VMRouteL1_VMStub_R1L1PHI1Z2n1;
    wire [35:0] R1VMRouteL2_AllStubs_R1L2n1;
    wire [17:0] R1VMRouteL2_VMStub_R1L2PHI2Z2n1;
    wire [35:0] R1VMRouteL3_AllStubs_R1L3n1;
    wire [17:0] R1VMRouteL3_VMStub_R1L3PHI1Z2n1;
    
    wire [5:0] VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number;
    wire [5:0] VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add;
    wire [17:0] VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2;
    wire [5:0] VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number;
    wire [5:0] VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add;
    wire [17:0] VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2;
    
    wire [11:0] TE_L1PHI1Z2_L2PHI2Z2_StubPairs_L1PHI1Z2_L2PHI2Z2;
    
    wire [5:0] StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_number;
    wire [5:0] StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_read_add;
    wire [11:0] StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2;
    wire [5:0] AllStubs_R1L1n1_TC_L1L2_read_add;
    wire [5:0] AllStubs_R1L2n1_TC_L1L2_read_add;
    wire [35:0] AllStubs_R1L1n1_TC_L1L2;
    wire [35:0] AllStubs_R1L2n1_TC_L1L2;
    
    wire [53:0] TC_L1L2_Tracklet_L1L2;
    wire [53:0] TC_L1L2_Proj_L1L2_L3;
    
    wire [5:0] Proj_L1L2_L3_ProjRouteL3_L1L2_number;
    wire [5:0] Proj_L1L2_L3_ProjRouteL3_L1L2_read_add;
    wire [53:0] Proj_L1L2_L3_ProjRouteL3_L1L2;
    
    wire [53:0] ProjRouteL3_L1L2_AllProj_L3;
    wire [12:0] ProjRouteL3_L1L2_VMProj_L3PHI1Z2;    
    
    wire [5:0] VMProj_L3PHI1Z2_ME_L3PHI1Z2_number;
    wire [5:0] VMProj_L3PHI1Z2_ME_L3PHI1Z2_read_add;
    wire [12:0] VMProj_L3PHI1Z2_ME_L3PHI1Z2;
    wire [5:0] VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_number;
    wire [5:0] VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_read_add;
    wire [17:0] VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2;
    
    wire [11:0] ME_L3PHI1Z2_Match_L3PHI1Z2;
    
    wire [5:0] Match_L3PHI1Z2_ProjCombL3_L1L2_number;
    wire [5:0] Match_L3PHI1Z2_ProjCombL3_L1L2_read_add;
    wire [11:0] Match_L3PHI1Z2_ProjCombL3_L1L2;
    
    wire [5:0] AllStubs_R1L3n1_ProjCombL3_L1L2_read_add;
    wire [35:0] AllStubs_R1L3n1_ProjCombL3_L1L2;
    wire [5:0] AllProj_L3_ProjCombL3_L1L2_read_add;
    wire [53:0] AllProj_L3_ProjCombL3_L1L2;
    
    wire [35:0] ProjCombL3_L1L2_FML3_L1L2;
    
    wire [5:0] FML3_L1L2_TF_L1L2_number;    
    wire [5:0] FML3_L1L2_TF_L1L2_read_add;    
    wire [35:0] FML3_L1L2_TF_L1L2;    
    
    LCD_test lcd_controller(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(lcd_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 8 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(lcd_io_rd_data),        // data returned for read operations
        .io_rd_ack(lcd_io_rd_ack),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
    
        .data_out(long_lcd)       
    );
     
    InputLink R1Link1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(InputLink_R1Link1_io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 8 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(InputLink_R1Link1_io_rd_data),        // data returned for read operations
        .io_rd_ack(InputLink_R1Link1_io_rd_ack),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
    
        .data_out(R1Link1_R1Route1)       
    );
        
    LayerRouter R1Route1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .stubin(R1Link1_R1Route1),
        
        .stuboutL1(R1Route1_R1Link1L1),
        .stuboutL2(R1Route1_R1Link1L2),
        .stuboutL3(R1Route1_R1Link1L3)
    );
    
    StubsByLayer R1Link1L1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1Route1_R1Link1L1),
        .number_out(R1Link1L1_R1VMRouteL1_number),
        .read_add(R1Link1L1_R1VMRouteL1_read_add),
        .data_out(R1Link1L1_R1VMRouteL1)
    );
    
    StubsByLayer R1Link1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1Route1_R1Link1L2),
        .number_out(R1Link1L2_R1VMRouteL2_number),
        .read_add(R1Link1L2_R1VMRouteL2_read_add),
        .data_out(R1Link1L2_R1VMRouteL2)
    );
    
    StubsByLayer R1Link1L3(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1Route1_R1Link1L3),
        .number_out(R1Link1L3_R1VMRouteL3_number),
        .read_add(R1Link1L3_R1VMRouteL3_read_add),
        .data_out(R1Link1L3_R1VMRouteL3)
    );
    
    VMRouter #(1'b1,1'b1) R1VMRouteL1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(R1Link1L1_R1VMRouteL1_number),
        .read_add1(R1Link1L1_R1VMRouteL1_read_add),
        .stubinLink1(R1Link1L1_R1VMRouteL1),
        
        .allstuboutn1(R1VMRouteL1_AllStubs_R1L1n1),
        .vmstuboutPHI1Z2n1(R1VMRouteL1_VMStub_R1L1PHI1Z2n1)       
    );
    
    VMRouter #(1'b1,1'b0) R1VMRouteL2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(R1Link1L2_R1VMRouteL2_number),
        .read_add1(R1Link1L2_R1VMRouteL2_read_add),
        .stubinLink1(R1Link1L2_R1VMRouteL2),
        
        .allstuboutn1(R1VMRouteL2_AllStubs_R1L2n1),
        .vmstuboutPHI2Z2n1(R1VMRouteL2_VMStub_R1L2PHI2Z2n1)       
    );
    
    VMRouter #(1'b1,1'b1) R1VMRouteL3(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(R1Link1L3_R1VMRouteL3_number),
        .read_add1(R1Link1L3_R1VMRouteL3_read_add),
        .stubinLink1(R1Link1L3_R1VMRouteL3),
        
        .allstuboutn1(R1VMRouteL3_AllStubs_R1L3n1),
        .vmstuboutPHI1Z2n1(R1VMRouteL3_VMStub_R1L3PHI1Z2n1)       
    );
    
    AllStubs AllStubs_R1L1n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL1_AllStubs_R1L1n1),
        .read_add(AllStubs_R1L1n1_TC_L1L2_read_add),
        .data_out(AllStubs_R1L1n1_TC_L1L2),
        .read_add_MC(),
        .data_out_MC()
    );
    
    AllStubs AllStubs_R1L2n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL2_AllStubs_R1L2n1),
        .read_add(AllStubs_R1L2n1_TC_L1L2_read_add),
        .data_out(AllStubs_R1L2n1_TC_L1L2),
        .read_add_MC(),
        .data_out_MC()
    );
    
    AllStubs AllStubs_R1L3n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL3_AllStubs_R1L3n1),
        .read_add(),
        .data_out(),
        .read_add_MC(AllStubs_R1L3n1_ProjCombL3_L1L2_read_add),
        .data_out_MC(AllStubs_R1L3n1_ProjCombL3_L1L2)
    );
        
    VMStubs VMStub_R1L1PHI1Z2n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL1_VMStub_R1L1PHI1Z2n1),
        .number_out(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number),
        .read_add(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add),
        .data_out(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2),
        .number_out_ME(),
        .read_add_ME(),
        .data_out_ME()
    );
    
    VMStubs VMStub_R1L2PHI2Z2n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL2_VMStub_R1L2PHI2Z2n1),
        .number_out(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number),
        .read_add(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add),
        .data_out(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2),
        .number_out_ME(),
        .read_add_ME(),
        .data_out_ME()
    );
    
    VMStubs VMStub_R1L3PHI1Z2n1(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(R1VMRouteL3_VMStub_R1L3PHI1Z2n1),
        .number_out(),
        .read_add(),
        .data_out(),
        .number_out_ME(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_number),
        .read_add_ME(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_read_add),
        .data_out_ME(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2)
    );
    
    TrackletEngine TE_L1PHI1Z2_L2PHI2Z2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number),
        .read_add1(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add),
        .innervmstubin(VMStub_R1L1PHI1Z2n1_TE_L1PHI1Z2_L2PHI2Z2),
        .number_in2(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_number),
        .read_add2(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2_read_add),
        .outervmstubin(VMStub_R1L2PHI2Z2n1_TE_L1PHI1Z2_L2PHI2Z2),
        
        .stubpairout(TE_L1PHI1Z2_L2PHI2Z2_StubPairs_L1PHI1Z2_L2PHI2Z2)
    );
    
    StubPairs StubPairs_L1PHI1Z2_L2PHI2Z2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(TE_L1PHI1Z2_L2PHI2Z2_StubPairs_L1PHI1Z2_L2PHI2Z2),
        .number_out(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_number),
        .read_add(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_read_add),
        .data_out(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2)
    );
    
    TrackletCalculator TC_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_number),
        .read_add1(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2_read_add),
        .stubpair1in(StubPairs_L1PHI1Z2_L2PHI2Z2_TC_L1L2),
        
        .read_add_innerall(AllStubs_R1L1n1_TC_L1L2_read_add),
        .read_add_outerall(AllStubs_R1L2n1_TC_L1L2_read_add),
        .innerallstubin(AllStubs_R1L1n1_TC_L1L2),
        .outerallstubin(AllStubs_R1L2n1_TC_L1L2),
        
        .trackpar(TC_L1L2_Tracklet_L1L2),
        .proj1(TC_L1L2_Proj_L1L2_L3),
        .proj2(),
        .proj3(),
        .proj4()
    );
    
    TrackletParameters Tracklet_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(TC_L1L2_Tracklet_L1L2),
        .read_add(),
        .data_out()
    );
    
    TrackletProjections Proj_L1L2_L3(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(TC_L1L2_Proj_L1L2_L3),
        .number_out(Proj_L1L2_L3_ProjRouteL3_L1L2_number),
        .read_add(Proj_L1L2_L3_ProjRouteL3_L1L2_read_add),
        .data_out(Proj_L1L2_L3_ProjRouteL3_L1L2)
    );
    
    ProjectionRouter ProjRouteL3_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(Proj_L1L2_L3_ProjRouteL3_L1L2_number),
        .read_add1(Proj_L1L2_L3_ProjRouteL3_L1L2_read_add),
        .projin(Proj_L1L2_L3_ProjRouteL3_L1L2),
        
        .allprojout(ProjRouteL3_L1L2_AllProj_L3),
        .vmprojoutPHI3Z2(ProjRouteL3_L1L2_VMProj_L3PHI1Z2)        
    );
    
    AllProj AllProj_L3(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(ProjRouteL3_L1L2_AllProj_L3),
        .read_add(AllProj_L3_ProjCombL3_L1L2_read_add),
        .data_out(AllProj_L3_ProjCombL3_L1L2)
    );
    
    VMProjections VMProj_L3PHI1Z2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(ProjRouteL3_L1L2_VMProj_L3PHI1Z2),
        .number_out(VMProj_L3PHI1Z2_ME_L3PHI1Z2_number),
        .read_add(VMProj_L3PHI1Z2_ME_L3PHI1Z2_read_add),
        .data_out(VMProj_L3PHI1Z2_ME_L3PHI1Z2)
    );
    
    MatchEngine ME_L3PHI1Z2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_number),
        .read_add1(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2_read_add),
        .vmstubin(VMStub_R1L3PHI1Z2n1_ME_L3PHI1Z2),
        .number_in2(VMProj_L3PHI1Z2_ME_L3PHI1Z2_number),
        .read_add2(VMProj_L3PHI1Z2_ME_L3PHI1Z2_read_add),
        .vmprojin(VMProj_L3PHI1Z2_ME_L3PHI1Z2),
        
        .matchout(ME_L3PHI1Z2_Match_L3PHI1Z2)
    );
    
    CandidateMatch Match_L3PHI1Z2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(ME_L3PHI1Z2_Match_L3PHI1Z2),
        .number_out(Match_L3PHI1Z2_ProjCombL3_L1L2_number),
        .read_add(Match_L3PHI1Z2_ProjCombL3_L1L2_read_add),
        .data_out(Match_L3PHI1Z2_ProjCombL3_L1L2)
    );
    
    MatchCalculator ProjCombL3_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .number_in1(Match_L3PHI1Z2_ProjCombL3_L1L2_number),
        .read_add1(Match_L3PHI1Z2_ProjCombL3_L1L2_read_add),
        .match1in(Match_L3PHI1Z2_ProjCombL3_L1L2),
        
        .read_add_allstub(AllStubs_R1L3n1_ProjCombL3_L1L2_read_add),
        .read_add_allproj(AllProj_L3_ProjCombL3_L1L2_read_add),
        .allstubin(AllStubs_R1L3n1_ProjCombL3_L1L2),
        .allprojin(AllProj_L3_ProjCombL3_L1L2),
        
        .projout(ProjCombL3_L1L2_FML3_L1L2)
    );
    
    FullMatch FML3_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(ProjCombL3_L1L2_FML3_L1L2),
        .number_out(FML3_L1L2_TF_L1L2_number),
        .read_add(FML3_L1L2_TF_L1L2_read_add),
        .data_out(FML3_L1L2_TF_L1L2)
    );
    wire [125:0] TF_L1L2_TPars_L1L2;
    FitTrack TF_L1L2(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(TrackFit_TF_L1L2_io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(TrackFit_TF_L1L2_io_rd_data),        // data returned for read operations
        .io_rd_ack(TrackFit_TF_L1L2_io_rd_ack),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
               
        .number_in1(FML3_L1L2_TF_L1L2_number),
        .read_add1(FML3_L1L2_TF_L1L2_read_add),
        .fullmatch1in(FML3_L1L2_TF_L1L2),
        .number_in2(),
        .read_add2(),
        .fullmatch2in(),
        .number_in3(),
        .read_add3(),
        .fullmatch3in(),
        .number_in4(),
        .read_add4(),
        .fullmatch4in(),
        
        .read_add_pars(),
        .trackparsin(),
        
        .trackout(TF_L1L2_TPars_L1L2)
    );
    TrackFit TPars_L1L2(
    .data_in(TF_L1L2_TPars_L1L2),
    .led_test(led_test),
    .clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(1'b0),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(),
    .io_rd_ack(),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk));
 
 
    Aurora_test aurora_test_top(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(Aurora_test_io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 8 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(Aurora_test_io_rd_data),        // data returned for read operations
        .io_rd_ack(Aurora_test_io_rd_ack),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        //Links
        .txp_pphi(txp_pphi),
        .txn_pphi(txn_pphi),
        .rxp_pphi(rxp_pphi),
        .rxn_pphi(rxn_pphi),
        .txp_mphi(txp_mphi),
        .txn_mphi(txn_mphi),
        .rxp_mphi(rxp_mphi),
        .rxn_mphi(rxn_mphi),
        //clock
        .gt_refclk_p(gt_refclk_p),
        .gt_refclk_n(gt_refclk_n),
        .init_clk(init_clk)
    );
 
    // readback mux
    // If a particular block is addressed, connect that block's signals
    // to the 'rdbk' output. At the same time, assert 'rdbk_sel' to tell downstream muxes to
    // use the 'rdbk' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
    assign io_rd_data = io_rd_data_reg;
    // Assert 'io_rd_ack' if any module is asserting its 'rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @ (posedge io_clk) begin
        io_rd_ack_reg <= InputLink_R1Link1_io_rd_ack | TrackFit_TF_L1L2_io_rd_ack | lcd_io_rd_ack | Aurora_test_io_rd_ack;
    end
    // Route the selected register to the 'rdbk' output.
    always @(posedge io_clk) begin
        if (io_rd_en && InputLink_R1Link1_io_sel) io_rd_data_reg[31:0] <= InputLink_R1Link1_io_rd_data[31:0];
        if (io_rd_en && TrackFit_TF_L1L2_io_sel) io_rd_data_reg[31:0] <= TrackFit_TF_L1L2_io_rd_data[31:0];
        if (io_rd_en && Aurora_test_io_sel) io_rd_data_reg[31:0] <= Aurora_test_io_rd_data[31:0];
        if (io_rd_en && lcd_sel) io_rd_data_reg[31:0] <= lcd_io_rd_data[31:0];
     end

endmodule
