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


module TrackletProjections_test(
   // clocks and reset
    input wire reset,					// active HI
    input wire clk,				// processing clock at a multiple of the crossing clock
    input wire en_proc,
    // programming interface
    // inputs
    input wire io_clk,					// programming clock
    input wire io_sel,					// this module has been selected for an I/O operation
    input wire io_sync,					// start the I/O operation
    input wire [23:0] io_addr,		// slave address, memory or register. Top 12 bits already consumed.
    input wire io_rd_en,				// this is a read operation
    input wire io_wr_en,				// this is a write operation
    input wire [31:0] io_wr_data,	// data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,	// data returned for read operations
    output wire io_rd_ack,				// 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    input wire [53:0] tracklet,            
    output reg [53:0] projection
    );
    
    parameter PHI_BITS = 17;
    parameter Z_BITS = 8;
    parameter PHID_BITS = 11;
    parameter ZD_BITS = 8;
    parameter layer = 1'b1;
    parameter rproj = 16'h86a;
     
    // Step 0: Read the parameters and Constants
    reg signed [13:0] irinv_0;
    reg [16:0] iphi0_0;
    reg signed [9:0] iz0_0;
    reg signed [12:0] it_0;
    reg signed [15:0] ir_0;
    
    always @(posedge clk) begin
        if(tracklet > 0) begin
            irinv_0     <= tracklet[53:40];
            iphi0_0     <= tracklet[39:23];
            iz0_0       <= tracklet[22:13];
            it_0        <= tracklet[12:0];
            ir_0        <= rproj;
        end
    end
    wire [16:0] iphi0_pipe3;
    wire signed [13:0] irinv_pipe2;
    wire signed [9:0] iz0_pipe4;
    wire en2_5;
    wire en5b;
    pipe_delay #(.STAGES(15), .WIDTH(17))
        iphi0_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iphi0_0), .val_out(iphi0_pipe3));
    
    pipe_delay #(.STAGES(2), .WIDTH(14))
        irinv_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(irinv_0), .val_out(irinv_pipe2));
    
   pipe_delay #(.STAGES(13), .WIDTH(10))
        iz0_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iz0_0), .val_out(iz0_pipe4));
    
    // Step 1:
    // Declare:
    (*USE_DPORT = "false"*) reg signed [30:0] full_is1;
    reg signed [30:0] full_is1_pipe;
    reg signed [29:0] is1_1;
    reg signed [14:0] pre_is1_1;
    reg signed [14:0] pre_is1_1_pipe;
    reg [11:0] constant_1;
    
    always @(posedge clk) begin
        full_is1    <= ir_0 * irinv_0;
        full_is1_pipe <= full_is1;
        pre_is1_1 <= full_is1_pipe >>> 4'd10;
        pre_is1_1_pipe <= pre_is1_1;
        is1_1 <= full_is1_pipe >>> 1'b1;
        constant_1 <= 12'h1e8;
    end
            
    // Step 2:
    // Carry over:
    reg signed [29:0] is1_2;
    // Declare:
    wire signed [29:0] is2_2;
    
    wire signed [41:0] pre_is2_2_5;
        
    pipe_mult #(.STAGES(2), .AWIDTH(15), .BWIDTH(15))
        is2_test(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
        .a(pre_is1_1), .b(pre_is1_1), .p(is2_2));
        
    pipe_mult #(.STAGES(2), .AWIDTH(12), .BWIDTH(30))
        pre_is2_test1(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
        .a(constant_1), .b(is2_2), .p(pre_is2_2_5));
    
//    pipe_mult #(.STAGES(2), .AWIDTH(12), .BWIDTH(6))
//        pre_is2_test2(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
//        .a(constant_1), .b(is2_2[30:25]), .p(pre_is2_2_5_test2));
    
    always @(posedge clk) begin
        is1_2       <= is1_1;
        //pre_is2_2_5 <= (pre_is2_2_5_test2 <<< 6'd25) + pre_is2_2_5_test1;
    end
    
    // Step 2.5 Calculate s3:
    // Declare:
    reg signed [21:0] is3_2_5;
    reg signed [11:0] pre_is3_2_5;
    reg signed [21:0] pre_is1_2_5;
    wire signed [21:0] pre_is1_pipe25;
    reg signed [12:0] iphi_der_2_5;
    
    always @(posedge clk) begin
        iphi_der_2_5        <= -irinv_pipe2;
        is3_2_5             <= 21'h100000 + (pre_is2_2_5 >>> 8'd25); // Can this be done in the same clock?
        pre_is1_2_5         <= is1_2 >>> 4'h8;
        pre_is3_2_5         <= is3_2_5 >>> 4'ha;
    end
   pipe_delay #(.STAGES(6), .WIDTH(22))
            pre_is1_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(pre_is1_2_5), .val_out(pre_is1_pipe25)); 
   // I don't think this is legal -- PW. You cannot do adds. Are you just
   // trying to flip a bit here? should you use an OR?
        
    // Step 3:
    reg signed [12:0] iphi_der_3;
    wire signed [33:0] is4_3;
    reg signed [17:0] pre_is4_3;
    reg signed [25:0] is5_3;
    reg signed [25:0] is5_3_pipe;
    reg signed [15:0] pre_is5_3;
    wire signed [15:0] pre_is5_pipe3;
    reg signed [8:0] iz_der_3;
    reg signed [12:0] pre_is3_3;
    
    pipe_mult #(.STAGES(2), .AWIDTH(22), .BWIDTH(12))
        is4_test(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
        .a(pre_is1_pipe25), .b(pre_is3_2_5), .p(is4_3));
    
    always @(posedge clk) begin
        iphi_der_3    <= iphi_der_2_5 >>> 1'b1;
        pre_is4_3    <= is4_3 >>> 4'd10;
        // Why wait? Do it now!
        is5_3               <= ir_0 * it_0;
        is5_3_pipe          <= is5_3;
        iz_der_3            <= it_0[12:4];
        pre_is5_3           <= is5_3_pipe >>> 4'h9;
        pre_is3_3           <= is3_2_5 >>> 4'h9;
    end
    
    pipe_delay #(.STAGES(8), .WIDTH(16))
            pre_is5_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(pre_is5_3), .val_out(pre_is5_pipe3)); 
    
    // Step 4:
    reg signed [17:0] iphi_proj_4;
    reg signed [25:0] is6_4;
    reg signed [25:0] is6_4_pipe;
    (*KEEP = "true"*) reg signed [ZD_BITS-1:0] iz_der_4;
    (*KEEP = "true"*) reg signed [Z_BITS+4:0] pre_iz_proj_4;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_proj_4;
    (*KEEP = "true"*) reg signed [PHID_BITS-1:0] iphi_der_4;

    
    always @(posedge clk) begin
        iphi_der_4      <= iphi_der_3 >>> 3'd4;
        iphi_proj_4     <= iphi0_pipe3 - pre_is4_3;
        is6_4           <= pre_is5_pipe3 * pre_is3_3;
        is6_4_pipe      <= is6_4;
        iz_der_4        <= iz_der_3;
        pre_iz_proj_4       <= (is6_4_pipe >>> (5'd12 )) + (iz0_pipe4);
        if(layer)
            iz_proj_4 <= pre_iz_proj_4;
        else
            iz_proj_4 <= pre_iz_proj_4 >>> 3'd4;
    end

    // Step 5:
    reg [PHI_BITS-1:0] iphi_proj_5;

    always @(posedge clk) begin
        if(layer)
            if(iphi_proj_4 < 18'd57344)
                iphi_proj_5    <= iphi_proj_4 >>> 2'b10;
            else
                iphi_proj_5    <= 16'hffff;
        else begin
            if(iphi_proj_4 < 18'd57344)
                iphi_proj_5    <= iphi_proj_4 <<< 1'b1;
            else
                iphi_proj_5    <= 16'hffff;
        end
    end

    wire signed [Z_BITS-1:0] iz_proj_pipe_out;
    wire signed [PHID_BITS-1:0] iphi_der_pipe_out;
    wire signed [ZD_BITS-1:0] iz_der_pipe_out;

    pipe_delay #(.STAGES(2), .WIDTH(Z_BITS))
            iz_proj_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(iz_proj_4), .val_out(iz_proj_pipe_out));
    pipe_delay #(.STAGES(12), .WIDTH(PHID_BITS))
            iphi_der_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(iphi_der_4), .val_out(iphi_der_pipe_out));
    pipe_delay #(.STAGES(15), .WIDTH(ZD_BITS))
            iz_der_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(iz_der_4), .val_out(iz_der_pipe_out));
            
    always @(posedge clk) begin
        projection <= {10'h3ff,iphi_proj_5,iz_proj_pipe_out,iphi_der_pipe_out,iz_der_pipe_out};
    end
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
        if (io_sel) io_rd_data_reg <= projection[31:0];
    end
    
endmodule
