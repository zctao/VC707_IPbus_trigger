`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 10:49:27 AM
// Design Name: 
// Module Name: TrackletCombiner
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


module TrackletCombiner_test(
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
    
    input [5:0] number_in1,
    output [5:0] read_add1,
    input [11:0] stubpair1in,
    input [5:0] number_in2,
    output [5:0] read_add2,
    input [11:0] stubpair2in,
    input [5:0] number_in3,
    output [5:0] read_add3,
    input [11:0] stubpair3in,
    input [5:0] number_in4,
    output [5:0] read_add4,
    input [11:0] stubpair4in,
    input [5:0] number_in5,
    output [5:0] read_add5,
    input [11:0] stubpair5in,
    input [5:0] number_in6,
    output [5:0] read_add6,
    input [11:0] stubpair6in,
    input [5:0] number_in7,
    output [5:0] read_add7,
    input [11:0] stubpair7in,
    input [5:0] number_in8,
    output [5:0] read_add8,
    input [11:0] stubpair8in,
    input [5:0] number_in9,
    output [5:0] read_add9,
    input [11:0] stubpair9in,
    input [5:0] number_in10,
    output [5:0] read_add10,
    input [11:0] stubpair10in,
    input [5:0] number_in11,
    output [5:0] read_add11,
    input [11:0] stubpair11in,
    input [5:0] number_in12,
    output [5:0] read_add12,
    input [11:0] stubpair12in,
    input [5:0] number_in13,
    output [5:0] read_add13,
    input [11:0] stubpair13in,
    input [5:0] number_in14,
    output [5:0] read_add14,
    input [11:0] stubpair14in,
    input [5:0] number_in15,
    output [5:0] read_add15,
    input [11:0] stubpair15in,
    input [5:0] number_in16,
    output [5:0] read_add16,
    input [11:0] stubpair16in,
    input [5:0] number_in17,
    output [5:0] read_add17,
    input [11:0] stubpair17in,
    input [5:0] number_in18,
    output [5:0] read_add18,
    input [11:0] stubpair18in,
    
    output reg [5:0] read_add_innerall,
    output reg [5:0] read_add_outerall,
    input [35:0] innerallstubin,
    input [35:0] outerallstubin,
    
    output reg [53:0] trackpar,
    output [53:0] proj1,
    output [53:0] proj2,
    output [53:0] proj3,
    output [53:0] proj4
    );
    
    ///////////////////////////////////////////////
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
        if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
        else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
        end
        if(clk_cnt == 7'b1) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
        end
        else begin
           first_clk_pipe <= 1'b0;
        end
    end
    ///////////////////////////////////////////////////
    initial begin
//        read_add1 = 6'h3f;
//        read_add2 = 6'h3f;
//        read_add3 = 6'h3f;
//        read_add4 = 6'h3f;
//        read_add5 = 6'h3f;
//        read_add6 = 6'h3f;
//        read_add7 = 6'h3f;
//        read_add8 = 6'h3f;
//        read_add9 = 6'h3f;
//        read_add10 = 6'h3f;
//        read_add11 = 6'h3f;
//        read_add12 = 6'h3f;
//        read_add13 = 6'h3f;
//        read_add14 = 6'h3f;
//        read_add15 = 6'h3f;
//        read_add16 = 6'h3f;
//        read_add17 = 6'h3f;
//        read_add18 = 6'h3f;
        read_add_innerall = 6'h3f;
        read_add_outerall = 6'h3f;
    end
    
//    always @(posedge clk) begin
//        if(first_clk_pipe) begin
//            read_add1 <= 6'h3f;
//            read_add2 <= 6'h3f;
//            read_add3 <= 6'h3f;
//            read_add4 <= 6'h3f;
//            read_add5 <= 6'h3f;
//            read_add6 <= 6'h3f;
//            read_add7 <= 6'h3f;
//            read_add8 <= 6'h3f;
//            read_add9 <= 6'h3f;
//            read_add10 <= 6'h3f;
//            read_add11 <= 6'h3f;
//            read_add12 <= 6'h3f;
//            read_add13 <= 6'h3f;
//            read_add14 <= 6'h3f;
//            read_add15 <= 6'h3f;
//            read_add16 <= 6'h3f;
//            read_add17 <= 6'h3f;
//            read_add18 <= 6'h3f;
//            //read_add_innerall <= 6'h3f;
//            //read_add_outerall <= 6'h3f;
//        end
//        else begin
//            if(read_add1 + 1'b1 < number_in1)
//                read_add1 <= read_add1 + 1'b1;
//            else begin
//                read_add1 <= read_add1;
//                if(read_add2 + 1'b1 < number_in2)
//                    read_add2 <= read_add2 + 1'b1;
//                else begin
//                    read_add2 <= read_add2;
//                    if(read_add3 + 1'b1 < number_in3)
//                        read_add3 <= read_add3 + 1'b1;
//                    else begin
//                        read_add3 <= read_add3;
//                        if(read_add4 + 1'b1 < number_in4)
//                            read_add4 <= read_add4 + 1'b1;
//                        else begin
//                            read_add4 <= read_add4;
//                            if(read_add5 + 1'b1 < number_in5)
//                                read_add5 <= read_add5 + 1'b1;
//                            else begin
//                                read_add5 <= read_add5;
//                                if(read_add6 + 1'b1 < number_in6)
//                                    read_add6 <= read_add6 + 1'b1;
//                                else begin
//                                    read_add6 <= read_add6;
//                                    if(read_add7 + 1'b1 < number_in7)
//                                        read_add7 <= read_add7 + 1'b1;
//                                    else begin
//                                        read_add7 <= read_add7;
//                                        if(read_add8 + 1'b1 < number_in8)
//                                            read_add8 <= read_add8 + 1'b1;
//                                        else begin
//                                            read_add8 <= read_add8;
//                                            if(read_add9 + 1'b1 < number_in9)
//                                                read_add9 <= read_add9 + 1'b1;
//                                            else begin
//                                                read_add9 <= read_add9;
//                                                if(read_add10 + 1'b1 < number_in10)
//                                                    read_add10 <= read_add10 + 1'b1;
//                                                else begin
//                                                    read_add10 <= read_add10;
//                                                    if(read_add11 + 1'b1 < number_in11)
//                                                        read_add11 <= read_add11 + 1'b1;
//                                                    else begin
//                                                        read_add11 <= read_add11;
//                                                        if(read_add12 + 1'b1 < number_in12)
//                                                            read_add12 <= read_add12 + 1'b1;
//                                                        else begin
//                                                            read_add12 <= read_add12;
//                                                            if(read_add13 + 1'b1 < number_in13)
//                                                                read_add13 <= read_add13 + 1'b1;
//                                                            else begin
//                                                                read_add13 <= read_add13;
//                                                                if(read_add14 + 1'b1 < number_in14)
//                                                                    read_add14 <= read_add14 + 1'b1;
//                                                                else begin
//                                                                    read_add14 <= read_add14;
//                                                                    if(read_add15 + 1'b1 < number_in15)
//                                                                        read_add15 <= read_add15 + 1'b1;
//                                                                    else begin
//                                                                        read_add15 <= read_add15;
//                                                                        if(read_add16 + 1'b1 < number_in16)
//                                                                            read_add16 <= read_add16 + 1'b1;
//                                                                        else begin
//                                                                            read_add16 <= read_add16;
//                                                                            if(read_add17 + 1'b1 < number_in17)
//                                                                                read_add17 <= read_add17 + 1'b1;
//                                                                            else begin
//                                                                                read_add17 <= read_add17;
//                                                                                if(read_add18 + 1'b1 < number_in18)
//                                                                                    read_add18 <= read_add18 + 1'b1;
//                                                                                else begin
//                                                                                    read_add18 <= read_add18;
//                                                                                end
//                                                                            end
//                                                                        end
//                                                                    end
//                                                                end
//                                                            end
//                                                        end
//                                                    end
//                                                end
//                                            end
//                                        end
//                                    end
//                                end
//                            end
//                        end
//                    end
//                end
//            end
//        end
//    end
    
    //////////////////////////////////////////////////////////////////
           
   wire [11:0] stubpair;
   reg first_clk_pipe_dly;
   reg first_clk_pipe_dly2;
   
   mem_readout_top StubPairs(
      .clk(clk),
      .new_event(first_clk_pipe_dly),
      
      .items00(number_in1),
      .addr00(read_add1),
      .mem_dat00(stubpair1in),
      .items01(number_in2),
      .addr01(read_add2),
      .mem_dat01(stubpair2in),
      .items02(number_in3),
      .addr02(read_add3),
      .mem_dat02(stubpair3in),
      .items03(number_in4),
      .addr03(read_add4),
      .mem_dat03(stubpair4in),
      .items04(number_in5),
      .addr04(read_add5),
      .mem_dat04(stubpair5in),
      .items05(number_in6),
      .addr05(read_add6),
      .mem_dat05(stubpair6in),
      .items06(number_in7),
      .addr06(read_add7),
      .mem_dat06(stubpair7in),
      .items07(number_in8),
      .addr07(read_add8),
      .mem_dat07(stubpair8in),
      .items08(number_in9),
      .addr08(read_add9),
      .mem_dat08(stubpair9in),
      .items09(number_in10),
      .addr09(read_add10),
      .mem_dat09(stubpair10in),
      
      .items10(number_in11),
      .addr10(read_add11),
      .mem_dat10(stubpair11in),
      .items11(number_in12),
      .addr11(read_add12),
      .mem_dat11(stubpair12in),
      .items12(number_in13),
      .addr12(read_add13),
      .mem_dat12(stubpair13in),
      .items13(number_in14),
      .addr13(read_add14),
      .mem_dat13(stubpair14in),
      .items14(number_in15),
      .addr14(read_add15),
      .mem_dat14(stubpair15in),
      .items15(number_in16),
      .addr15(read_add16),
      .mem_dat15(stubpair16in),
      .items16(number_in17),
      .addr16(read_add17),
      .mem_dat16(stubpair17in),
      .items17(number_in18),
      .addr17(read_add18),
      .mem_dat17(stubpair18in),
      
      .mem_dat_stream(stubpair),
      .valid(),
      .none()
      );
   
//    always @(posedge clk) begin
//        first_clk_pipe_dly  <= first_clk_pipe;
//        first_clk_pipe_dly2 <= first_clk_pipe_dly;
//        if(first_clk_pipe_dly2)
//            stubpair <= 12'hfff;
//        else begin
//            if(stubpair18in != 12'hfff)
//                stubpair <= stubpair18in;
//            else begin
//                if(stubpair17in != 12'hfff)
//                    stubpair <= stubpair17in;
//                else begin
//                    if(stubpair16in != 12'hfff)
//                        stubpair <= stubpair16in;
//                    else begin
//                        if(stubpair15in != 12'hfff)
//                            stubpair <= stubpair15in;
//                        else begin
//                            if(stubpair14in != 12'hfff)
//                                stubpair <= stubpair14in;
//                            else begin
//                                if(stubpair13in != 12'hfff)
//                                    stubpair <= stubpair13in;
//                                else begin
//                                    if(stubpair12in != 12'hfff)
//                                        stubpair <= stubpair12in;
//                                    else begin
//                                        if(stubpair11in != 12'hfff)
//                                            stubpair <= stubpair11in;
//                                        else begin
//                                            if(stubpair10in != 12'hfff)
//                                                stubpair <= stubpair10in;
//                                            else begin
//                                                if(stubpair9in != 12'hfff)
//                                                    stubpair <= stubpair9in;
//                                                else begin
//                                                    if(stubpair8in != 12'hfff)
//                                                        stubpair <= stubpair8in;
//                                                    else begin
//                                                        if(stubpair7in != 12'hfff)
//                                                            stubpair <= stubpair7in;
//                                                        else begin
//                                                            if(stubpair6in != 12'hfff)
//                                                                stubpair <= stubpair6in;
//                                                            else begin
//                                                                if(stubpair5in != 12'hfff)
//                                                                    stubpair <= stubpair5in;
//                                                                else begin
//                                                                    if(stubpair4in != 12'hfff)
//                                                                        stubpair <= stubpair4in;
//                                                                    else begin
//                                                                        if(stubpair3in != 12'hfff)
//                                                                            stubpair <= stubpair3in;
//                                                                        else begin
//                                                                            if(stubpair2in != 12'hfff)
//                                                                                stubpair <= stubpair2in;
//                                                                            else begin
//                                                                                if(stubpair1in != 12'hfff)
//                                                                                    stubpair <= stubpair1in;
//                                                                                else
//                                                                                    stubpair <= 12'hfff;
//                                                                            end
//                                                                        end
//                                                                    end
//                                                                end
//                                                            end
//                                                        end
//                                                    end
//                                                end
//                                            end
//                                        end
//                                    end
//                                end
//                            end
//                        end
//                    end
//                end
//            end
//        end
//        if(stubpair >= 0) begin
//            read_add_innerall <= stubpair[11:6];
//            read_add_outerall <= stubpair[5:0];
//        end
//    end
    
    always @(posedge clk) begin
        first_clk_pipe_dly  <= first_clk_pipe;
        first_clk_pipe_dly2 <= first_clk_pipe_dly;
        if(stubpair >= 0) begin
            read_add_innerall <= stubpair[11:6];
            read_add_outerall <= stubpair[5:0];
        end
   end
   
   
    
    //////////////////////////////////////////////////////////////////
       
    parameter krA = 12'sd981;
    parameter krB = 12'sd1514;
    
    // Step 0: Define the variables
    reg signed [7:0] r_A_0;
    reg [11:0] z_A_0;
    reg [16:0] phi_A_0;
    reg signed [7:0] r_B_0;
    reg [11:0] z_B_0;
    reg [16:0] phi_B_0;
    
    reg signed [11:0] k_r_A;
    reg signed [11:0] k_r_B;

    // Why multiply these numbers???????
    // Because you want to always have the same number of bits for all layers
    // phi = 17, r = 8, z =8
    
    
    
    always @(posedge clk) begin
        k_r_A        <= krA;
        k_r_B        <= krB;
        r_A_0        <= innerallstubin[32:26]<<<1'b1;
        z_A_0        <= innerallstubin[25:14];
        phi_A_0      <= innerallstubin[13:0]<<<2'b11;
        r_B_0        <= outerallstubin[32:26]<<<1'b1;
        z_B_0        <= outerallstubin[25:14];
        phi_B_0      <= outerallstubin[13:0]<<<2'b11;
    end
    
    
    // Step 1: Calculate deltas and absolute radii
    // Carry over:
    wire [9:0] z_A_pipe13;
    wire [16:0] phi_A_pipe13;
    // Declare:
    reg signed [14:0] idelta_phi_1;
    reg signed [12:0] idelta_z_1;
    reg [13:0] idelta_r_1;
    reg [13:0] idelta_r_pipe;
    reg signed [12:0] rA_abs_1;
    reg signed [12:0] rB_abs_1;
    
    pipe_delay #(.STAGES(38), .WIDTH(10))
            z_A_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(z_A_0[9:0]), .val_out(z_A_pipe13));
    pipe_delay #(.STAGES(38), .WIDTH(17))
            phi_A_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(phi_A_0), .val_out(phi_A_pipe13));
    
    
    always @(posedge clk) begin
        //z_A_1             <= z_A_0;
        //phi_A_1             <= phi_A_0;
        idelta_phi_1     <= phi_B_0 - phi_A_0; // bit size mismatch here
        idelta_z_1         <= z_B_0 - z_A_0;
        idelta_r_1        <= (k_r_B-k_r_A)+(r_B_0 - r_A_0);
        idelta_r_pipe       <= idelta_r_1;
        rA_abs_1            <= k_r_A+r_A_0;
        rB_abs_1            <= k_r_B+r_B_0;
    end
    
    wire signed [14:0] idelta_phi_pipe8;
    
    pipe_delay #(.STAGES(21), .WIDTH(15))
        idelta_phi_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(idelta_phi_1), .val_out(idelta_phi_pipe8));
    
    wire signed [12:0] idelta_z_pipe9;
    
    pipe_delay #(.STAGES(22), .WIDTH(13))
        idelta_z_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(idelta_z_1), .val_out(idelta_z_pipe9));
    
    wire signed [12:0] rA_abs_pipe10;
    
    pipe_delay #(.STAGES(24), .WIDTH(13))
                    rA_abs_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
                    .val_in(rA_abs_1), .val_out(rA_abs_pipe10));
    // Step 2: Lookup dr inverse
    // Carry over:
    reg signed [14:0] idelta_phi_2;
    // Declare:
    wire signed [15:0] idr_inv_2;
    reg [23:0] full_it1;    
    reg [23:0] full_it1_pipe;    
    wire [11:0] it1_2;
    
    // how do I write to this memory?
    Memory #(16, 11, "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/dr_inv.txt") lookup_dr_inv(
        // Output
        .output_data(idr_inv_2),
        // Input
        .clock(clk),
        .write_address(11'b0),
        .write_enable(1'b0),
        .input_data(16'b0),
        .read_address(idelta_r_pipe[10:0])
    );
    
    wire signed [15:0] idr_inv_pipe8;
        
    pipe_delay #(.STAGES(17), .WIDTH(16))
        idr_inv_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(idr_inv_2), .val_out(idr_inv_pipe8));
    
    always @(posedge clk) begin
        idelta_phi_2     <= idelta_phi_1;
        full_it1            <= rA_abs_1 * rB_abs_1;
        full_it1_pipe       <= full_it1;
    end
    
    assign it1_2 = full_it1_pipe >>>4'd12;
    
    wire [11:0] it1_pipe4;
    
    pipe_delay #(.STAGES(6), .WIDTH(12))
        it1_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(it1_2), .val_out(it1_pipe4));
    
    // Step 3: 
    // Carry over
    reg [15:0] idr_inv_3;
    reg signed [14:0] idelta_phi_3;
    // Declare:
    reg signed [29:0] full_it2;
    reg signed [29:0] full_it2_pipe;
    reg signed [21:0] it2_3;
    
    always @(posedge clk) begin
        idr_inv_3         <= idr_inv_2;
        idelta_phi_3     <= idelta_phi_2;
        full_it2            <= idr_inv_2 * idelta_phi_3;
        full_it2_pipe   <= full_it2;
        it2_3           <= full_it2_pipe >>> 4'd8;
    end
        
    // Step 4: 
    // Declare:
    reg [35:0] full_it3;
    reg [35:0] full_it3_pipe;
    reg [23:0] it3_4;
    
    always @(posedge clk) begin
        full_it3            <= it2_3 * it2_3;
        full_it3_pipe       <= full_it3;
        it3_4 <= full_it3_pipe >>> 4'd12;
    end
    
    // Step 5: 
    // Declare:
    reg [35:0] full_idelta;
    reg [35:0] full_idelta_pipe;
    reg [40:0] pre_idelta_tmp_5;
    
    always @(posedge clk) begin
        full_idelta     <= it1_pipe4 * it3_4;
        full_idelta_pipe <= full_idelta;
        pre_idelta_tmp_5 <= full_idelta_pipe;
    end
    
    // Step 6:
    reg [40:0] full_idelta_tmp;
    reg [40:0] full_idelta_tmp_pipe;
    reg [6:0] idelta_tmp_6; // WHY DO WE DO THIS????

    always @(posedge clk) begin
        full_idelta_tmp    <= full_idelta_pipe * 28'd48060778;
        full_idelta_tmp_pipe <= full_idelta_tmp;
        idelta_tmp_6 <= full_idelta_tmp_pipe >>> 8'd48;
    end
        
    // Step 7:
    reg signed [6:0] idelta_tmp_7;
    // Declare:
    reg [17:0] it4_7;
    
    always @(posedge clk) begin
        idelta_tmp_7     <= idelta_tmp_6; // bit size mismatch fixed
        it4_7             <= 17'h10000 + 3*(idelta_tmp_6 >>> 1'b1);
    end
    
    // Step 8:
    // Declare:
    wire [24:0] full_it5_test;
    reg [16:0] pre_it5_8;
    
    pipe_mult #(.STAGES(3), .AWIDTH(18), .BWIDTH(7))
            full_it5_mult(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
            .a(it4_7), .b(idelta_tmp_7), .p(full_it5_test));
    
    always @(posedge clk) begin
        pre_it5_8           <= (17'h10000 - (full_it5_test >>> 5'b10000)) >>> 3'd4;
    end
    
    // Step 9:
    reg signed [14:0] idelta_phi_9;
    reg signed [30:0] full_iDelta_inv;
    reg signed [30:0] full_iDelta_inv_pipe;
    reg signed [17:0] iDelta_inv_9;
    
    always @(posedge clk) begin
        idelta_phi_9         <= -idelta_phi_pipe8;
        full_iDelta_inv     <= idr_inv_pipe8 * pre_it5_8;
        full_iDelta_inv_pipe <= full_iDelta_inv;
        iDelta_inv_9        <= full_iDelta_inv_pipe >>> 4'd12;
    end
    
    // Step 10:
    reg signed [25:0] full_irinv;
    reg signed [25:0] full_irinv_pipe;
    reg signed [22:0] it_10;
    reg signed [22:0] it_10_pipe;
    wire signed [26:0] irinv_10;
    wire signed [23:0] pre_irinv_10;
    
    always @(posedge clk) begin    
        full_irinv      <= idelta_phi_9 * iDelta_inv_9;
        full_irinv_pipe <= full_irinv;
        it_10           <= idelta_z_pipe9 * iDelta_inv_9;
        it_10_pipe      <= it_10;
    end
    
    assign irinv_10 = (full_irinv_pipe <<< 1'b1);
    assign pre_irinv_10 = full_irinv_pipe >>> 3'd6;
    
    wire signed [12:0] it_pipe13;
    
    pipe_delay #(.STAGES(13), .WIDTH(13))
        it_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(it_10_pipe[22:10]), .val_out(it_pipe13));
    
    wire signed [26:0] irinv_pipe13;
    
    pipe_delay #(.STAGES(13), .WIDTH(27))
        irinv_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(irinv_10), .val_out(irinv_pipe13));
    
    // Step 11:
    reg signed [12:0] rA_abs_11;
    wire signed [35:0] full_it7_test;
    wire signed [32:0] it7_11;
    reg signed [36:0] it7_tmp_11;
    reg signed [36:0] it7_tmp_11_pipe;
    wire signed [20:0] it7_tmp_sqr_11;
    reg signed [20:0] it7_tmp_sqr_11_pipe;
    reg signed [20:0] it7_tmp_sqr_11_pipe2;
    reg signed [12:0] pre_it_11;
    
    pipe_mult #(.STAGES(3), .AWIDTH(12), .BWIDTH(24))
                full_it7_mult(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
                .a(rA_abs_pipe10[12:1]), .b(pre_irinv_10), .p(full_it7_test));
    
    pipe_mult #(.STAGES(3), .AWIDTH(17), .BWIDTH(17))
                it7_tmp_mult(.pipe_in(en_proc), .pipe_out(pipe), .clk(clk),
                .a(it7_tmp_11_pipe >>> 5'd20), .b(it7_tmp_11_pipe >>> 5'd20), .p(it7_tmp_sqr_11));
    
    
    always @(posedge clk) begin
        pre_it_11            <= it_10_pipe >>> 4'd10;
        it7_tmp_11           <= (full_it7_test >>> 5'd10) * 10'sd500;
        it7_tmp_11_pipe      <= it7_tmp_11;
        //it7_tmp_sqr_11       <= (it7_tmp_11_pipe >>> 5'd20) * (it7_tmp_11_pipe >>> 5'd20);
        it7_tmp_sqr_11_pipe  <= it7_tmp_sqr_11;
        it7_tmp_sqr_11_pipe2  <= it7_tmp_sqr_11_pipe;
    end
    
    assign it7_11                 = full_it7_test;
    
    wire signed [32:0] it7_pipe12;
    wire signed [12:0] pre_it_pipe11;
    wire signed [12:0] rA_abs_pipe11;
    
    pipe_delay #(.STAGES(7), .WIDTH(33))
            it7_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(it7_11), .val_out(it7_pipe12));
    
    pipe_delay #(.STAGES(7), .WIDTH(13))
            pre_it11_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(pre_it_11), .val_out(pre_it_pipe11));
    
    pipe_delay #(.STAGES(8), .WIDTH(13))
            rA_abs_pipe2(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
            .val_in(rA_abs_pipe10), .val_out(rA_abs_pipe11));
    
    // Step 12:
    reg signed [25:0] it9_12;
    reg signed [25:0] full_pre_it12;
    reg signed [25:0] full_pre_it12_pipe;
    wire signed [15:0] pre_it9_12;
    wire signed [17:0] pre_it7_12;      
    reg signed [20:0] pre_it12_12;      
    
    always @(posedge clk) begin
        it9_12             <= 25'h1000000 + it7_tmp_sqr_11_pipe2; // Top bits are constant and are trimmed during synthesis
        full_pre_it12    <= pre_it_pipe11 * rA_abs_pipe11;
        full_pre_it12_pipe <= full_pre_it12;
        pre_it12_12     <= full_pre_it12_pipe >>> 3'h5;
    end
    
    assign pre_it9_12     = it9_12 >>> 4'd10;
    assign pre_it7_12     = it7_pipe12 >>> 4'd15;
    
    
    // Step 13:
    reg signed [31:0] it10_13;
    reg signed [31:0] it10_13_pipe;
    reg signed [35:0] it12_13;
    reg signed [35:0] it12_13_pipe;
    reg signed [35:0] it12_13_pipe2;
    wire signed [19:0] pre_it10_13;
    wire signed [15:0] pre_it12_13;
    
    always @(posedge clk) begin
        it10_13      <= pre_it7_12 * pre_it9_12;
        it10_13_pipe <= it10_13;
        it12_13      <= pre_it12_12 * pre_it9_12;
        it12_13_pipe <= it12_13;
        it12_13_pipe2 <= it12_13_pipe;
    end
    
    assign pre_it10_13 = it10_13_pipe >>> 5'd12; // size mismatch
    assign pre_it12_13 = it12_13_pipe >>> 5'd19; // NOT GOOD ENOUGH // size mismatch
    
    // Step 14:
    // Carry over:
    (*KEEP = "true"*) reg signed [12:0] it_14;
    (*KEEP = "true"*) reg signed [13:0] irinv_14;
    // Declare:
    (*KEEP = "true"*) reg signed [16:0] iphi0_14;
    (*KEEP = "true"*) reg signed [9:0] iz0_14;
    
    always @(posedge clk) begin
        it_14        <= it_pipe13;
        irinv_14     <= irinv_pipe13>>>4'd13;
        iphi0_14     <= (phi_A_pipe13 + pre_it10_13)>>>1'b1;
        iz0_14       <= z_A_pipe13 - pre_it12_13;
        if(irinv_14 != 0) // This has to be fixed to use a valid-data bit
            trackpar     <= {irinv_14,iphi0_14,iz0_14,it_14}; // register for now, but should be wire
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
        if (io_sel) io_rd_data_reg <= trackpar[31:0];
    end
    
    TrackletProjections_test #(14,12,9,9,1'b1,16'h86a) projection1(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk_pipe),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj1)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'hb66) projection2(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk_pipe),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj2)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'hebb) projection3(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk_pipe),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj3)
    );
    
    TrackletProjections_test #(17,8,11,8,1'b0,16'h11f7) projection4(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk_pipe),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj4)
    );
    
endmodule

