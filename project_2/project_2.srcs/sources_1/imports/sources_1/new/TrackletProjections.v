`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 11:53:00 AM
// Design Name: 
// Module Name: TrackletProjections
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


module TrackletProjections(
   // clocks and reset
    input wire reset,					// active HI
    input wire clk,				// processing clock at a multiple of the crossing clock
    input wire en_proc,
    // programming interface
    // inputs
    input wire io_clk,					// programming clock
    input wire io_sel,					// this module has been selected for an I/O operation
    input wire io_sync,					// start the I/O operation
    input wire [31:0] io_addr,		// slave address, memory or register. Top 12 bits already consumed.
    input wire io_rd_en,				// this is a read operation
    input wire io_wr_en,				// this is a write operation
    input wire [31:0] io_wr_data,	// data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,	// data returned for read operations
    output wire io_rd_ack,				// 'read' data from this module is ready
    output wire led_test,
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    input wire [53:0] tracklet,            
    output reg [53:0] projection
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    parameter PHI_BITS = 17;
    parameter Z_BITS = 8;
    parameter PHID_BITS = 11;
    parameter ZD_BITS = 8;
    parameter layer = 1'b1;
    parameter rproj = 16'h86a;
    
    // Step 0: Read the parameters and Constants
    wire signed [13:0] irinv_0;
    wire [16:0] iphi0_0;
    wire signed [9:0] iz0_0;
    wire signed [12:0] it_0;
    wire signed [15:0] ir_0;
    
    assign irinv_0 = tracklet[53:40];
    assign iphi0_0 = tracklet[39:23];
    assign iz0_0     = tracklet[22:13];
    assign it_0     = tracklet[12:0];
    assign ir_0        = rproj;
    
    // Step 1:
    // Carry over:
    reg signed [13:0] irinv_1;
    reg [16:0] iphi0_1;
    reg signed [9:0] iz0_1;
    reg signed [12:0] it_1;
    // Declare:
    reg signed [30:0] full_is1;
    wire signed [29:0] is1_1;
    wire signed [20:0] pre_is1_1;
    
    always @(posedge clk) begin
        irinv_1    <= irinv_0;
        iphi0_1    <= iphi0_0;
        iz0_1        <= iz0_0;
        it_1        <= it_0;
        full_is1 <= ir_0 * irinv_0;
    end
    
    assign is1_1         = full_is1 >>> 1'b1;
    assign pre_is1_1     = full_is1 >>> 4'ha;
    
    // Step 2:
    // Carry over:
    reg signed [13:0] irinv_2;
    reg [16:0] iphi0_2;
    reg signed [9:0] iz0_2;
    reg signed [12:0] it_2;
    reg signed [29:0] is1_2;
    // Declare:
    reg signed [30:0] is2_2;
    
    always @(posedge clk) begin
        irinv_2    <= irinv_1;
        iphi0_2    <= iphi0_1;
        iz0_2        <= iz0_1;
        it_2        <= it_1;
        is1_2     <= is1_1;
        is2_2     <= pre_is1_1 * pre_is1_1;
    end
    
    // Step 2.5 Calculate s3:
    // Carry Over:
    reg signed [13:0] irinv_2_5;
    reg [16:0] iphi0_2_5;
    reg signed [9:0] iz0_2_5;
    reg signed [12:0] it_2_5;
    reg signed [29:0] is1_2_5;
    // Declare:
    reg signed [40:0] pre_is2_2_5;
    wire signed [21:0] is3_2_5;
    wire signed [11:0] pre_is3_2_5;
    wire signed [21:0] pre_is1_2_5;
    reg signed [12:0] iphi_der_2_5;
    
    always @(posedge clk) begin
        iphi0_2_5        <= iphi0_2;
        iz0_2_5            <= iz0_2;
        it_2_5            <= it_2;
        pre_is2_2_5        <= is2_2 * 12'h1e8;
        iphi_der_2_5     <= irinv_2 >>> 1'b1;
    end
    
   // I don't think this is legal -- PW. You cannot do adds. Are you just
   // trying to flip a bit here? should you use an OR?
    assign is3_2_5            = 21'h100000 + (pre_is2_2_5 >>> 8'h19); // Can this be done in the same clock?
    assign pre_is1_2_5    = is1_2 >>> 4'h8;
    assign pre_is3_2_5    = is3_2_5 >>> 4'ha;
        
    // Step 3:
    // Carry over:
    reg [16:0] iphi0_3;
    reg signed [9:0] iz0_3;
    reg signed [12:0] it_3;
    reg signed [21:0] is3_3;
    reg signed [12:0] iphi_der_3;
    // Declare:
    reg signed [27:0] is4_3;
    reg signed [17:0] pre_is4_3;
    
    always @(posedge clk) begin
        iphi0_3        <= iphi0_2_5;
        iz0_3            <= iz0_2_5;
        it_3            <= it_2_5;
        is3_3            <= is3_2_5;
        iphi_der_3    <= -iphi_der_2_5;
        is4_3         <= pre_is1_2_5 * pre_is3_2_5;
        pre_is4_3    <= is4_3 >>> 4'd10;
    end
    
    
    // Step 4:
    // Carry over:
    reg signed [9:0] iz0_4;
    reg signed [12:0] it_4;
    reg signed [21:0] is3_4;
    reg signed [12:0] iphi_der_4;
    // Declare:
    reg signed [17:0] iphi_proj_4;
    
    always @(posedge clk) begin
        iz0_4            <= iz0_3;
        it_4            <= it_3;
        is3_4            <= is3_3;
        iphi_der_4    <= iphi_der_3;
        iphi_proj_4 <= iphi0_3 - pre_is4_3;
    end

    // Step 5:
    // Carry over:
    reg signed [9:0] iz0_5;
    reg signed [21:0] is3_5;
    reg signed [12:0] iphi_der_5;
    reg signed [PHI_BITS-1:0] iphi_proj_5;
    // Declare:
    reg signed [25:0] is5_5;
    wire signed [15:0] pre_is5_5;
    reg signed [12:0] iz_der_5;
    wire signed [12:0] pre_is3_5;
    
    always @(posedge clk) begin
        iz0_5            <= iz0_4;
        is3_5            <= is3_4;
        iphi_der_5    <= iphi_der_4;
        if(layer)
            iphi_proj_5    <= iphi_proj_4 >> 2'b10;
        else
            iphi_proj_5    <= iphi_proj_4 << 1'b1;
        is5_5            <= ir_0 * it_4;
        iz_der_5        <= it_4;
    end

    assign pre_is5_5 = is5_5 >>> 4'h9;
    assign pre_is3_5 = is3_5 >>> 4'h9;

    // Step 6:
    // Carry over:
    reg signed [9:0] iz0_6;
    (*KEEP = "true"*) reg signed [PHI_BITS-1:0] iphi_proj_6;
    (*KEEP = "true"*) reg signed [ZD_BITS-1:0] iz_der_6;
    (*KEEP = "true"*) reg signed [PHID_BITS-1:0] iphi_der_6;
    // Declare:
    reg signed [30:0] is6_6;
    wire signed [17:0] pre_is6_6;
    (*KEEP = "true"*) wire signed [Z_BITS-1:0] iz_proj_6;
    
    always @(posedge clk) begin
        iz0_6            <= iz0_5 >>> (4'd12 - Z_BITS);
        iphi_der_6    <= iphi_der_5 >>> 3'd4;
        iphi_proj_6    <= iphi_proj_5;
        is6_6         <= pre_is5_5 * pre_is3_5;
        iz_der_6        <= iz_der_5 >> 3'd7;
    end
    
    assign iz_proj_6 = (is6_6 >>> (5'd24 - Z_BITS)) + iz0_6;
    
    always @(posedge clk) begin
        //projection[8:0]     <= iz_der_6 <<< 9 - ZD_BITS;
        //projection[17:9]    <= iphi_der_6 >>> PHID_BITS - 9;
        //projection[29:18]   <= iz_proj_6 <<< 12 - Z_BITS;
        //projection[43:30]   <= iphi_proj_6 >>> 17 - PHI_BITS;
        //projection [53:44]  <= 10'h3ff;
        projection <= {10'h3ff,iphi_proj_6,iz_proj_6,iphi_der_6,iz_der_6};
    end
    
endmodule
