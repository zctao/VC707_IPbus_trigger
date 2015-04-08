`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:16:38 PM
// Design Name: 
// Module Name: TrackFit
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


module FitTrack(
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
    
    input [5:0] number_in1,
    output reg [5:0] read_add1,
    input [35:0] fullmatch1in,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [35:0] fullmatch2in,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [35:0] fullmatch3in,
    input [5:0] number_in4,
    output reg [5:0] read_add4,
    input [35:0] fullmatch4in,
    
    output reg [5:0] read_add_pars,
    input [53:0] trackparsin,
    
    output [125:0] trackout
    );
    
    reg [6:0] trk_cnt;
    wire test1,test2,test3,test4;
    assign test1 = ((trk_cnt-1'b1) == fullmatch1in[35:26]);
    assign test2 = ((trk_cnt-1'b1) == fullmatch2in[35:26]);
    assign test3 = ((trk_cnt-1'b1) == fullmatch3in[35:26]);
    assign test4 = ((trk_cnt-1'b1) == fullmatch4in[35:26]);
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        read_add4 = 6'h3f;
        read_add_pars = 6'h3f;
        trk_cnt = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(first_clk) begin
            read_add1 <= 6'h3f;
            read_add2 <= 6'h3f;
            read_add3 <= 6'h3f;
            read_add4 <= 6'h3f;
            read_add_pars <= 6'h3f;
            trk_cnt <= 7'h7f;
        end
        else begin
            trk_cnt <= trk_cnt + 1'b1;
            if(read_add1 + 1'b1 < number_in1)
                read_add1 <= read_add1 + 1'b1;
            else
                read_add1 <= read_add1;
            if(read_add2 + 1'b1 < number_in2)
                    read_add2 <= read_add2 + 1'b1;
            else
                read_add2 <= read_add2;
            if(read_add3 + 1'b1 < number_in3)
                read_add3 <= read_add3 + 1'b1;
            else
                read_add3 <= read_add3;
            if(read_add4 + 1'b1 < number_in4)
                read_add4 <= read_add4 + 1'b1;
            else
                read_add4 <= read_add4;
            if(fullmatch1in > 0)
                read_add_pars <= fullmatch1in[31:26];
            else begin
                if(fullmatch2in > 0)
                    read_add_pars <= fullmatch2in[31:26];
                else begin
                    if(fullmatch3in > 0)
                        read_add_pars <= fullmatch3in[31:26];
                    else begin
                        if(fullmatch4in > 0)
                            read_add_pars <= fullmatch4in[31:26];
                        else begin
                            read_add_pars <= read_add_pars;
                        end
                    end
                end
            end
        end
    end
    
    /////////////////////////////////////////////////////////////////////
    wire [110:0] track_matches;
    wire [59:0] dout_dphi_0;
    wire [59:0] dout_dphi_1;
    wire [59:0] dout_dphi_2;
    wire [59:0] dout_dphi_3;
    
    wire [59:0] dout_dz_0;
    wire [59:0] dout_dz_1;
    wire [59:0] dout_dz_2;
    wire [59:0] dout_dz_3;
    
    wire [3:0] read_mem_phi_0;
    reg [3:0] read_mem_phi_1;
    reg [3:0] read_mem_phi_2;
    reg [3:0] read_mem_phi_3;
    
    reg [3:0] read_mem_z_0;
    reg [3:0] read_mem_z_1;
    reg [3:0] read_mem_z_2;
    reg [3:0] read_mem_z_3;
    
    reg [3:0] read_mem_phi_0_pipe;
    reg [3:0] read_mem_phi_1_pipe;
    reg [3:0] read_mem_phi_2_pipe;
    reg [3:0] read_mem_phi_3_pipe;
    
    reg [3:0] read_mem_z_0_pipe;
    reg [3:0] read_mem_z_1_pipe;
    reg [3:0] read_mem_z_2_pipe;
    reg [3:0] read_mem_z_3_pipe;
    
    reg [3:0] read_mem_phi_0_pipe2;
    reg [3:0] read_mem_phi_1_pipe2;
    reg [3:0] read_mem_phi_2_pipe2;
    reg [3:0] read_mem_phi_3_pipe2;
    
    reg [3:0] read_mem_z_0_pipe2;
    reg [3:0] read_mem_z_1_pipe2;
    reg [3:0] read_mem_z_2_pipe2;
    reg [3:0] read_mem_z_3_pipe2;
    
    // MAKE SURE THEY COME FROM THE SAME TRACKLET
    assign track_matches = {fullmatch1in,fullmatch2in[24:0],fullmatch3in[24:0],fullmatch4in[24:0]};
    assign read_mem_phi_0 = {|track_matches[15:0] & test1,|track_matches[40:25] & test2,|track_matches[65:50] & test3,|track_matches[90:75] & test4};
    
    always @(posedge clk) begin
        read_mem_z_0 <= read_mem_phi_0_pipe;
        read_mem_phi_1 <= read_mem_z_0_pipe;
        read_mem_z_1 <= read_mem_phi_1_pipe;
        read_mem_phi_2 <= read_mem_z_1_pipe;
        read_mem_z_2 <= read_mem_phi_2_pipe;
        read_mem_phi_3 <= read_mem_z_2_pipe;
        read_mem_z_3 <= read_mem_phi_3_pipe;
        
        read_mem_phi_0_pipe <= read_mem_phi_0;
        read_mem_phi_1_pipe <= read_mem_phi_1;
        read_mem_phi_2_pipe <= read_mem_phi_2;
        read_mem_phi_3_pipe <= read_mem_phi_3;
        
        read_mem_z_0_pipe <= read_mem_z_0;
        read_mem_z_1_pipe <= read_mem_z_1;
        read_mem_z_2_pipe <= read_mem_z_2;
        read_mem_z_3_pipe <= read_mem_z_3;
        
        read_mem_phi_0_pipe2 <= read_mem_phi_0_pipe;
        read_mem_phi_1_pipe2 <= read_mem_phi_1_pipe;
        read_mem_phi_2_pipe2 <= read_mem_phi_2_pipe;
        read_mem_phi_3_pipe2 <= read_mem_phi_3_pipe;
        
        read_mem_z_0_pipe2 <= read_mem_z_0_pipe;
        read_mem_z_1_pipe2 <= read_mem_z_1_pipe;
        read_mem_z_2_pipe2 <= read_mem_z_2_pipe;
        read_mem_z_3_pipe2 <= read_mem_z_3_pipe;
    end
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_1_hex.txt") lookup_phi_0(
        // Output   
        .output_data(dout_dphi_0),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_phi_0),
        .input_data(60'b0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_2_hex.txt") lookup_phi_1(
         // Output   
        .output_data(dout_dphi_1),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_phi_1),
        .input_data(60'b0)
   );
   
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_3_hex.txt") lookup_phi_2(
        // Output   
        .output_data(dout_dphi_2),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_phi_2),
        .input_data(60'b0)
   );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_4_hex.txt") lookup_phi_3(
        // Output   
        .output_data(dout_dphi_3),
        // Input
        .clock(clk),.write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_phi_3),
        .input_data(60'b0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_5_hex.txt") lookup_z_0(
        // Output   
        .output_data(dout_dz_0),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),    
        .read_address(read_mem_z_0),
        .input_data(60'b0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_6_hex.txt") lookup_z_1(
        // Output   
        .output_data(dout_dz_1),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_z_1),
        .input_data(60'b0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_7_hex.txt") lookup_z_2(
        // Output   
        .output_data(dout_dz_2),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_z_2),
        .input_data(60'b0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_8_hex.txt") lookup_z_3(
        // Output   
        .output_data(dout_dz_3),
        // Input
        .clock(clk),
        .write_address(4'b0),
        .write_enable(1'b0),
        .read_address(read_mem_z_3),
        .input_data(60'b0)
    );
    
    // Step 0: Read the residuals:
    // Declare:
    reg signed [7:0] iphi_res_0_init;
    reg signed [7:0] iz_res_0_init;
    reg signed [7:0] iphi_res_1_init;
    reg signed [7:0] iz_res_1_init;
    reg signed [7:0] iphi_res_2_init;
    reg signed [7:0] iz_res_2_init;
    reg signed [7:0] iphi_res_3_init;
    reg signed [7:0] iz_res_3_init;
        
    always @(posedge clk) begin
       if(track_matches != 0) begin
            if(test1) iphi_res_0_init    <= track_matches[91:84];
            else iphi_res_0_init         <= 0; 
            if(test2) iphi_res_1_init    <= track_matches[66:59];
            else iphi_res_1_init         <= 0;
            if(test3) iphi_res_2_init    <= track_matches[41:34];
            else iphi_res_2_init         <= 0;
            if(test4) iphi_res_3_init    <= track_matches[16:9];
            else iphi_res_3_init         <= 0;
            if(test1) iz_res_0_init        <= track_matches[82:75];
            else iz_res_0_init         <= 0;
            if(test2) iz_res_1_init        <= track_matches[58:50];
            else iz_res_1_init         <= 0;
            if(test3) iz_res_2_init        <= track_matches[33:25];
            else iz_res_2_init         <= 0;
            if(test4) iz_res_3_init        <= track_matches[8:0];
            else iz_res_3_init         <= 0;
        end
    end
    
    // Step 1.0: Pipe M's:
    // Carry Over:
    reg [53:0] trackparsin_0_pipe;
    reg test1_hold;
    reg test1_hold2;
    reg signed [7:0] iphi_res_0_0_pipe;
    reg signed [7:0] iphi_res_1_0_pipe;
    reg signed [7:0] iphi_res_2_0_pipe;
    reg signed [7:0] iphi_res_3_0_pipe;
    reg signed [7:0] iz_res_0_0_pipe;
    reg signed [7:0] iz_res_1_0_pipe;
    reg signed [7:0] iz_res_2_0_pipe;
    reg signed [7:0] iz_res_3_0_pipe;
    // Declare:
    reg signed [14:0] m00;
    reg signed [14:0] m10;
    reg signed [14:0] m20;
    reg signed [14:0] m30;
    
    always @(posedge clk) begin
        test1_hold          <= test1;
        test1_hold2         <= test1_hold;
        if(test1_hold2) trackparsin_0_pipe       <= trackparsin;
        else trackparsin_0_pipe <= 0;
        
        iphi_res_0_0_pipe    <= iphi_res_0_init;
        iphi_res_1_0_pipe    <= iphi_res_1_init;
        iphi_res_2_0_pipe    <= iphi_res_2_init;
        iphi_res_3_0_pipe    <= iphi_res_3_init;
        iz_res_0_0_pipe        <= iz_res_0_init;
        iz_res_1_0_pipe        <= iz_res_1_init;
        iz_res_2_0_pipe        <= iz_res_2_init;
        iz_res_3_0_pipe        <= iz_res_3_init;
        m00 <= -dout_dphi_0[59:45];
        m10 <= -dout_dphi_0[44:30];
        m20 <= -dout_dphi_0[29:15];
        m30 <= -dout_dphi_0[14:0];
    end
    
    // Step 1.1: Read phi_0 LUT:
    // Carry Over:
    reg [53:0] trackparsin_0;
    wire [53:0] trackparsin_pipe7;
    reg signed [7:0] iphi_res_1_0;
    wire signed [7:0] iphi_res_1_pipe2;
    reg signed [7:0] iphi_res_2_0;
    wire signed [7:0] iphi_res_2_pipe4;
    reg signed [7:0] iphi_res_3_0;
    wire signed [7:0] iphi_res_3_pipe6;
    reg signed [7:0] iz_res_0_0;
    wire signed [7:0] iz_res_0_pipe1;
    reg signed [7:0] iz_res_1_0;
    wire signed [7:0] iz_res_1_pipe3;
    reg signed [7:0] iz_res_2_0;
    wire signed [7:0] iz_res_2_pipe5;
    reg signed [7:0] iz_res_3_0;
    wire signed [7:0] iz_res_3_pipe7;
    // Declare:
    reg signed [17:0] irinv_corr_0;
    reg signed [17:0] iphi0_corr_0;
    reg signed [17:0] it_corr_0;
    reg signed [17:0] iz0_corr_0;
   
    pipe_delay #(.STAGES(14), .WIDTH(54))
        trackparsin_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(trackparsin_0), .val_out(trackparsin_pipe7));
        
    pipe_delay #(.STAGES(3), .WIDTH(8))
        iphi_res_1_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iphi_res_1_0), .val_out(iphi_res_1_pipe2));
        
    pipe_delay #(.STAGES(7), .WIDTH(8))
        iphi_res_2_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iphi_res_2_0), .val_out(iphi_res_2_pipe4));
        
    pipe_delay #(.STAGES(11), .WIDTH(8))
        iphi_res_3_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iphi_res_3_0), .val_out(iphi_res_3_pipe6));
        
    pipe_delay #(.STAGES(1), .WIDTH(8))
        iz_res_0_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iz_res_0_0), .val_out(iz_res_0_pipe1));
        
    pipe_delay #(.STAGES(5), .WIDTH(8))
        iz_res_1_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iz_res_1_0), .val_out(iz_res_1_pipe3));
        
    pipe_delay #(.STAGES(9), .WIDTH(8))
        iz_res_2_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iz_res_2_0), .val_out(iz_res_2_pipe5));
        
    pipe_delay #(.STAGES(13), .WIDTH(8))
        iz_res_3_pipe(.pipe_in(en_proc), .pipe_out(en5b), .clk(clk),
        .val_in(iz_res_3_0), .val_out(iz_res_3_pipe7));
    
    always @(posedge clk) begin
        trackparsin_0       <= trackparsin_0_pipe;
        iphi_res_1_0    <= iphi_res_1_0_pipe;
        iphi_res_2_0    <= iphi_res_2_0_pipe;
        iphi_res_3_0    <= iphi_res_3_0_pipe;
        iz_res_0_0        <= iz_res_0_0_pipe;
        iz_res_1_0        <= iz_res_1_0_pipe;
        iz_res_2_0        <= iz_res_2_0_pipe;
        iz_res_3_0        <= iz_res_3_0_pipe;
        
        irinv_corr_0     <= iphi_res_0_0_pipe * m00;
        iphi0_corr_0     <= iphi_res_0_0_pipe * m10;
        it_corr_0         <= iphi_res_0_0_pipe * m20;
        iz0_corr_0         <= iphi_res_0_0_pipe * m30;
    end

    // Step 2.0: Pipe M's:
    // Declare:
    reg signed [14:0] m01;
    reg signed [14:0] m11;
    reg signed [14:0] m21;
    reg signed [14:0] m31;
    reg signed [17:0] irinv_corr_1_pipe;
    reg signed [17:0] iphi0_corr_1_pipe;
    reg signed [17:0] it_corr_1_pipe;
    reg signed [17:0] iz0_corr_1_pipe;
    reg signed [17:0] irinv_corr_1_pipe2;
    reg signed [17:0] iphi0_corr_1_pipe2;
    reg signed [17:0] it_corr_1_pipe2;
    reg signed [17:0] iz0_corr_1_pipe2;
    
    always @(posedge clk) begin
        irinv_corr_1_pipe      <= irinv_corr_0;
        iphi0_corr_1_pipe      <= iphi0_corr_0;
        it_corr_1_pipe         <= it_corr_0;
        iz0_corr_1_pipe        <= iz0_corr_0;
        irinv_corr_1_pipe2     <= irinv_corr_1_pipe;
        iphi0_corr_1_pipe2     <= iphi0_corr_1_pipe;
        it_corr_1_pipe2        <= it_corr_1_pipe;
        iz0_corr_1_pipe2       <= iz0_corr_1_pipe;
        
        m01 <= dout_dz_0[59:45];
        m11 <= dout_dz_0[44:30];
        m21 <= dout_dz_0[29:15];
        m31 <= dout_dz_0[14:0];
    end

   // Step 2.1: Read z_0 LUT:
   // Declare:
    reg signed [17:0] pre_irinv_corr_1;
    reg signed [17:0] irinv_corr_1;
    reg signed [17:0] pre_iphi0_corr_1;
    reg signed [17:0] iphi0_corr_1;
    reg signed [17:0] pre_it_corr_1;
    reg signed [17:0] it_corr_1;
    reg signed [17:0] pre_iz0_corr_1;
    reg signed [17:0] iz0_corr_1;
        
    always @(posedge clk) begin
        pre_irinv_corr_1    <= iz_res_0_pipe1 * m01;
        irinv_corr_1        <= irinv_corr_1_pipe2 - pre_irinv_corr_1;
        pre_iphi0_corr_1    <= iz_res_0_pipe1 * m11;
        iphi0_corr_1        <= iphi0_corr_1_pipe2 - pre_iphi0_corr_1;
        pre_it_corr_1       <= iz_res_0_pipe1 * m21;
        it_corr_1           <= it_corr_1_pipe2    - pre_it_corr_1;
        pre_iz0_corr_1      <= iz_res_0_pipe1 * m31;
        iz0_corr_1          <= iz0_corr_1_pipe2   - pre_iz0_corr_1;
    end

    // Step 3.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_2_pipe;
    reg signed [17:0] iphi0_corr_2_pipe;
    reg signed [17:0] it_corr_2_pipe;
    reg signed [17:0] iz0_corr_2_pipe;
    reg signed [14:0] m02;
    reg signed [14:0] m12;
    reg signed [14:0] m22;
    reg signed [14:0] m32;
    
    
    always @(posedge clk) begin
        m02 <= dout_dphi_1[59:45];
        m12 <= dout_dphi_1[44:30];
        m22 <= dout_dphi_1[29:15];
        m32 <= dout_dphi_1[14:0];
        
        irinv_corr_2_pipe     <= irinv_corr_1;
        iphi0_corr_2_pipe     <= iphi0_corr_1;
        it_corr_2_pipe         <= it_corr_1;
        iz0_corr_2_pipe         <= iz0_corr_1;
    end

    // Step 3.1: Read phi_1 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_2;
    reg signed [17:0] irinv_corr_2;
    reg signed [17:0] pre_iphi0_corr_2;
    reg signed [17:0] iphi0_corr_2;
    reg signed [17:0] pre_it_corr_2;
    reg signed [17:0] it_corr_2;
    reg signed [17:0] pre_iz0_corr_2;
    reg signed [17:0] iz0_corr_2;
   
    
    always @(posedge clk) begin
        pre_irinv_corr_2    <= iphi_res_1_pipe2 * m02;
        irinv_corr_2        <= irinv_corr_2_pipe - pre_irinv_corr_2;
        pre_iphi0_corr_2    <= iphi_res_1_pipe2 * m12;
        iphi0_corr_2        <= iphi0_corr_2_pipe - pre_iphi0_corr_2;
        pre_it_corr_2       <= iphi_res_1_pipe2 * m22;
        it_corr_2           <= it_corr_2_pipe    - pre_it_corr_2;
        pre_iz0_corr_2      <= iphi_res_1_pipe2 * m32;
        iz0_corr_2          <= iz0_corr_2_pipe   - pre_iz0_corr_2;
        
        //irinv_corr_2            <= irinv_corr_2_pipe     - iphi_res_1_pipe2 * m02;
        //iphi0_corr_2            <= iphi0_corr_2_pipe     - iphi_res_1_pipe2 * m12;
        //it_corr_2               <= it_corr_2_pipe         - iphi_res_1_pipe2 * m22;
        //pre_iz0_corr_2          <= iphi_res_1_pipe2 * m32;
        //iz0_corr_2              <= iz0_corr_2_pipe         - pre_iz0_corr_2;
    end

    // Step 4.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_3_pipe;
    reg signed [17:0] iphi0_corr_3_pipe;
    reg signed [17:0] it_corr_3_pipe;
    reg signed [17:0] iz0_corr_3_pipe;
    reg signed [14:0] m03;
    reg signed [14:0] m13;
    reg signed [14:0] m23;
    reg signed [14:0] m33;
    
    always @(posedge clk) begin
        m03 <= dout_dz_1[59:45];
        m13 <= dout_dz_1[44:30];
        m23 <= dout_dz_1[29:15];
        m33 <= dout_dz_1[14:0];
        
        irinv_corr_3_pipe     <= irinv_corr_2;
        iphi0_corr_3_pipe     <= iphi0_corr_2;
        it_corr_3_pipe         <= it_corr_2;
        iz0_corr_3_pipe         <= iz0_corr_2;
    end

    // Step 4.1: Read z_1 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_3;
    reg signed [17:0] pre_iphi0_corr_3;
    reg signed [17:0] pre_it_corr_3;
    reg signed [17:0] pre_iz0_corr_3;
    reg signed [17:0] irinv_corr_3;
    reg signed [17:0] iphi0_corr_3;
    reg signed [17:0] it_corr_3;
    reg signed [17:0] iz0_corr_3;
    
    
    always @(posedge clk) begin
        pre_irinv_corr_3    <= iz_res_1_pipe3 * m03;
        irinv_corr_3        <= irinv_corr_3_pipe - pre_irinv_corr_3;
        pre_iphi0_corr_3    <= iz_res_1_pipe3 * m13;
        iphi0_corr_3        <= iphi0_corr_3_pipe - pre_iphi0_corr_3;
        pre_it_corr_3       <= iz_res_1_pipe3 * m23;
        it_corr_3           <= it_corr_3_pipe    - pre_it_corr_3;
        pre_iz0_corr_3      <= iz_res_1_pipe3 * m33;
        iz0_corr_3          <= iz0_corr_3_pipe   - pre_iz0_corr_3;

//        irinv_corr_3            <= irinv_corr_3_pipe     - iz_res_1_pipe3 * m03;
//        iphi0_corr_3            <= iphi0_corr_3_pipe     - iz_res_1_pipe3 * m13;
//        it_corr_3               <= it_corr_3_pipe         - iz_res_1_pipe3 * m23;
//        pre_iz0_corr_3          <= iz_res_1_pipe3 * m33;
//        iz0_corr_3              <= iz0_corr_3_pipe         - pre_iz0_corr_3;
    end

    // Step 5.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_4_pipe;
    reg signed [17:0] iphi0_corr_4_pipe;
    reg signed [17:0] it_corr_4_pipe;
    reg signed [17:0] iz0_corr_4_pipe;
    reg signed [14:0] m04;
    reg signed [14:0] m14;
    reg signed [14:0] m24;
    reg signed [14:0] m34;
    
    always @(posedge clk) begin
        m04 <= dout_dphi_2[59:45];
        m14 <= dout_dphi_2[44:30];
        m24 <= dout_dphi_2[29:15];
        m34 <= dout_dphi_2[14:0];
                
        irinv_corr_4_pipe     <= irinv_corr_3;
        iphi0_corr_4_pipe     <= iphi0_corr_3;
        it_corr_4_pipe         <= it_corr_3;
        iz0_corr_4_pipe         <= iz0_corr_3;
    end

    // Step 5.1: Read phi_2 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_4;
    reg signed [17:0] pre_iphi0_corr_4;
    reg signed [17:0] pre_it_corr_4;
    reg signed [17:0] pre_iz0_corr_4;
    reg signed [17:0] irinv_corr_4;
    reg signed [17:0] iphi0_corr_4;
    reg signed [17:0] it_corr_4;
    reg signed [17:0] iz0_corr_4;
        
    always @(posedge clk) begin
        pre_irinv_corr_4    <= iphi_res_2_pipe4 * m04;
        irinv_corr_4        <= irinv_corr_4_pipe - pre_irinv_corr_4;
        pre_iphi0_corr_4    <= iphi_res_2_pipe4 * m14;
        iphi0_corr_4        <= iphi0_corr_4_pipe - pre_iphi0_corr_4;
        pre_it_corr_4       <= iphi_res_2_pipe4 * m24;
        it_corr_4           <= it_corr_4_pipe    - pre_it_corr_4;
        pre_iz0_corr_4      <= iphi_res_2_pipe4 * m34;
        iz0_corr_4          <= iz0_corr_4_pipe   - pre_iz0_corr_4;
            
//        irinv_corr_4            <= irinv_corr_4_pipe     - iphi_res_2_pipe4 * m04;
//        iphi0_corr_4            <= iphi0_corr_4_pipe     - iphi_res_2_pipe4 * m14;
//        it_corr_4               <= it_corr_4_pipe         - iphi_res_2_pipe4 * m24;
//        pre_iz0_corr_4          <= iphi_res_2_pipe4 * m34;
//        iz0_corr_4              <= iz0_corr_4_pipe         - pre_iz0_corr_4;
    end

    // Step 6.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_5_pipe;
    reg signed [17:0] iphi0_corr_5_pipe;
    reg signed [17:0] it_corr_5_pipe;
    reg signed [17:0] iz0_corr_5_pipe;
    reg signed [14:0] m05;
    reg signed [14:0] m15;
    reg signed [14:0] m25;
    reg signed [14:0] m35;
    
    
    always @(posedge clk) begin
        m05 <= dout_dz_2[59:45];
        m15 <= dout_dz_2[44:30];
        m25 <= dout_dz_2[29:15];
        m35 <= dout_dz_2[14:0];
                
        irinv_corr_5_pipe     <= irinv_corr_4;
        iphi0_corr_5_pipe     <= iphi0_corr_4;
        it_corr_5_pipe         <= it_corr_4;
        iz0_corr_5_pipe         <= iz0_corr_4;
    end

    // Step 6: Read z_2 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_5;
    reg signed [17:0] pre_iphi0_corr_5;
    reg signed [17:0] pre_it_corr_5;
    reg signed [17:0] pre_iz0_corr_5;   
    reg signed [17:0] irinv_corr_5;
    reg signed [17:0] iphi0_corr_5;
    reg signed [17:0] it_corr_5;
    reg signed [17:0] iz0_corr_5;   
    
    always @(posedge clk) begin
        pre_irinv_corr_5    <= iz_res_2_pipe5 * m05;
        irinv_corr_5        <= irinv_corr_5_pipe - pre_irinv_corr_5;
        pre_iphi0_corr_5    <= iz_res_2_pipe5 * m15;
        iphi0_corr_5        <= iphi0_corr_5_pipe - pre_iphi0_corr_5;
        pre_it_corr_5       <= iz_res_2_pipe5 * m25;
        it_corr_5           <= it_corr_5_pipe    - pre_it_corr_5;
        pre_iz0_corr_5      <= iz_res_2_pipe5 * m35;
        iz0_corr_5          <= iz0_corr_5_pipe   - pre_iz0_corr_5;

//        irinv_corr_5            <= irinv_corr_5_pipe     - iz_res_2_pipe5 * m05;
//        iphi0_corr_5            <= iphi0_corr_5_pipe     - iz_res_2_pipe5 * m15;
//        it_corr_5               <= it_corr_5_pipe         - iz_res_2_pipe5 * m25;
//        pre_iz0_corr_5          <= iz_res_2_pipe5 * m35;
//        iz0_corr_5              <= iz0_corr_5_pipe         - pre_iz0_corr_5;
    end

    // Step 7.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_6_pipe;
    reg signed [17:0] iphi0_corr_6_pipe;
    reg signed [17:0] it_corr_6_pipe;
    reg signed [17:0] iz0_corr_6_pipe;
    reg signed [14:0] m06;
    reg signed [14:0] m16;
    reg signed [14:0] m26;
    reg signed [14:0] m36;
    
    
    always @(posedge clk) begin
        m06 <= dout_dphi_3[59:45];
        m16 <= dout_dphi_3[44:30];
        m26 <= dout_dphi_3[29:15];
        m36 <= dout_dphi_3[14:0];
        
        irinv_corr_6_pipe     <= irinv_corr_5;
        iphi0_corr_6_pipe     <= iphi0_corr_5;
        it_corr_6_pipe         <= it_corr_5;
        iz0_corr_6_pipe         <= iz0_corr_5;
    end

    // Step 7.1: Read phi_3 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_6;
    reg signed [17:0] pre_iphi0_corr_6;
    reg signed [17:0] pre_it_corr_6;
    reg signed [17:0] pre_iz0_corr_6;
    reg signed [17:0] irinv_corr_6;
    reg signed [17:0] iphi0_corr_6;
    reg signed [17:0] it_corr_6;
    reg signed [17:0] iz0_corr_6;
        
    always @(posedge clk) begin
        pre_irinv_corr_6    <= iphi_res_3_pipe6 * m06;
        irinv_corr_6        <= irinv_corr_6_pipe - pre_irinv_corr_6;
        pre_iphi0_corr_6    <= iphi_res_3_pipe6 * m16;
        iphi0_corr_6        <= iphi0_corr_6_pipe - pre_iphi0_corr_6;
        pre_it_corr_6       <= iphi_res_3_pipe6 * m26;
        it_corr_6           <= it_corr_6_pipe    - pre_it_corr_6;
        pre_iz0_corr_6      <= iphi_res_3_pipe6 * m36;
        iz0_corr_6          <= iz0_corr_6_pipe   - pre_iz0_corr_6;

//        irinv_corr_6            <= irinv_corr_6_pipe     - iphi_res_3_pipe6 * m06;
//        iphi0_corr_6            <= iphi0_corr_6_pipe     - iphi_res_3_pipe6 * m16;
//        it_corr_6               <= it_corr_6_pipe         - iphi_res_3_pipe6 * m26;
//        pre_iz0_corr_6          <= iphi_res_3_pipe6 * m36;
//        iz0_corr_6              <= iz0_corr_6_pipe         - pre_iz0_corr_6;
    end

    // Step 8.0: Pipe M's:
    // Declare:
    reg signed [17:0] irinv_corr_7_pipe;
    reg signed [17:0] iphi0_corr_7_pipe;
    reg signed [17:0] it_corr_7_pipe;
    reg signed [17:0] iz0_corr_7_pipe;
    reg signed [14:0] m07;
    reg signed [14:0] m17;
    reg signed [14:0] m27;
    reg signed [14:0] m37;
    
    always @(posedge clk) begin        
        m07 <= dout_dz_3[59:45];
        m17 <= dout_dz_3[44:30];
        m27 <= dout_dz_3[29:15];
        m37 <= dout_dz_3[14:0];
            
        irinv_corr_7_pipe       <= irinv_corr_6;
        iphi0_corr_7_pipe       <= iphi0_corr_6;
        it_corr_7_pipe          <= it_corr_6;
        iz0_corr_7_pipe         <= iz0_corr_6;
    end

    // Step 8.1: Read z_3 LUT:
    // Declare:
    reg signed [17:0] pre_irinv_corr_7;
    reg signed [17:0] pre_iphi0_corr_7;
    reg signed [17:0] pre_it_corr_7;
    reg signed [17:0] pre_iz0_corr_7;
    reg signed [17:0] irinv_corr_7;
    reg signed [17:0] iphi0_corr_7;
    reg signed [17:0] it_corr_7;
    reg signed [17:0] iz0_corr_7;
        
    always @(posedge clk) begin  
        pre_irinv_corr_7    <= iz_res_3_pipe7 * m07;
        irinv_corr_7        <= irinv_corr_7_pipe - pre_irinv_corr_7;
        pre_iphi0_corr_7    <= iz_res_3_pipe7 * m17;
        iphi0_corr_7        <= iphi0_corr_7_pipe - pre_iphi0_corr_7;
        pre_it_corr_7       <= iz_res_3_pipe7 * m27;
        it_corr_7           <= it_corr_7_pipe    - pre_it_corr_7;
        pre_iz0_corr_7      <= iz_res_3_pipe7 * m37;
        iz0_corr_7          <= iz0_corr_7_pipe   - pre_iz0_corr_7;
                  
//        irinv_corr_7     <= irinv_corr_7_pipe     - iz_res_3_pipe7 * m07;
//        iphi0_corr_7     <= iphi0_corr_7_pipe     - iz_res_3_pipe7 * m17;
//        it_corr_7         <= it_corr_7_pipe         - iz_res_3_pipe7 * m27;
        
//        pre_iz0_corr_7          <= iz_res_3_pipe7 * m37;
//        iz0_corr_7              <= iz0_corr_7_pipe         -  pre_iz0_corr_7;
        //iz0_corr_out            <= iz0_corr_7;
    end

    wire signed [14:0] ipt;
    wire signed [18:0] iphi0;
    wire signed [9:0] id0;
    wire signed [13:0] it;
    wire signed [10:0] iz0;
    
    wire signed [12:0] pre_it;
    wire signed [13:0] pre_irinv;
    wire signed [17:0] pre_iphi0;
    wire signed [9:0] pre_iz0;
    
    assign pre_irinv     = trackparsin_pipe7[53:40];
    assign pre_iphi0     = trackparsin_pipe7[39:23];
    assign pre_it         = trackparsin_pipe7[12:0];
    assign pre_iz0     = trackparsin_pipe7[22:13];
    
    
    
    
    assign ipt         = pre_irinv - (irinv_corr_7 >>> 4'd10);
    assign iphi0     = pre_iphi0 - (iphi0_corr_7>>> 4'd10);
    assign it        = pre_it - (it_corr_7>>> 4'd10);
    assign iz0         = pre_iz0 - (iz0_corr_7>>> 4'd10);
    
    assign trackout = {ipt,iphi0,it,iz0};
    
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
        if (io_sel) io_rd_data_reg <= trackout[31:0];
    end
    
endmodule
