`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 03:16:21 PM
// Design Name: 
// Module Name: VMRouters
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


module VMRouter(
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
    output reg done,
    
    input [5:0] number_in1,
    output reg [5:0] read_add1,
    input [35:0] stubinLink1,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [35:0] stubinLink2,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [35:0] stubinLink3,
    
    output reg [35:0] allstuboutn1,
    output [35:0] allstuboutn2,
    output [35:0] allstuboutn3,
    
    output [17:0] vmstuboutPHI1Z1n1,
    output [17:0] vmstuboutPHI1Z1n2,
    output [17:0] vmstuboutPHI1Z1n3,
    output [17:0] vmstuboutPHI1Z1n4,
    output [17:0] vmstuboutPHI1Z1n5,
    output [17:0] vmstuboutPHI1Z1n6,
    output [17:0] vmstuboutPHI1Z2n1,
    output [17:0] vmstuboutPHI1Z2n2,
    output [17:0] vmstuboutPHI1Z2n3,
    output [17:0] vmstuboutPHI1Z2n4,
    
    output [17:0] vmstuboutPHI2Z1n1,
    output [17:0] vmstuboutPHI2Z1n2,
    output [17:0] vmstuboutPHI2Z1n3,
    output [17:0] vmstuboutPHI2Z1n4,
    output [17:0] vmstuboutPHI2Z1n5,
    output [17:0] vmstuboutPHI2Z1n6,
    output [17:0] vmstuboutPHI2Z2n1,
    output [17:0] vmstuboutPHI2Z2n2,
    output [17:0] vmstuboutPHI2Z2n3,
    output [17:0] vmstuboutPHI2Z2n4,
    output [17:0] vmstuboutPHI2Z2n5,
    output [17:0] vmstuboutPHI2Z2n6,
    
    output [17:0] vmstuboutPHI3Z1n1,
    output [17:0] vmstuboutPHI3Z1n2,
    output [17:0] vmstuboutPHI3Z1n3,
    output [17:0] vmstuboutPHI3Z1n4,
    output [17:0] vmstuboutPHI3Z1n5,
    output [17:0] vmstuboutPHI3Z1n6,
    output [17:0] vmstuboutPHI3Z2n1,
    output [17:0] vmstuboutPHI3Z2n2,
    output [17:0] vmstuboutPHI3Z2n3,
    output [17:0] vmstuboutPHI3Z2n4,
    output [17:0] vmstuboutPHI3Z2n5,
    output [17:0] vmstuboutPHI3Z2n6,
        
    output [17:0] vmstuboutPHI4Z1n1,
    output [17:0] vmstuboutPHI4Z1n2,
    output [17:0] vmstuboutPHI4Z1n3,
    output [17:0] vmstuboutPHI4Z2n1,
    output [17:0] vmstuboutPHI4Z2n2,
    output [17:0] vmstuboutPHI4Z2n3,
    output [17:0] vmstuboutPHI4Z2n4,
    
    output reg vmstuboutPHI1Z1_en,
    output reg vmstuboutPHI1Z2_en,
    output reg vmstuboutPHI2Z1_en,
    output reg vmstuboutPHI2Z2_en,
    output reg vmstuboutPHI3Z1_en,
    output reg vmstuboutPHI3Z2_en,
    output reg vmstuboutPHI4Z1_en,
    output reg vmstuboutPHI4Z2_en
    
    );
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

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
        if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
        end
        else begin
           first_clk_pipe <= 1'b0;
        end
    end
    
    
    parameter INNER = 1'b1;
    parameter ODD = 1'b1;
    parameter [7:0] n_hold = 8'd3;  
    reg [n_hold:0] hold;
    always @(posedge clk) begin
        hold[0] <= start;
        hold[n_hold:1] <= hold[n_hold-1:0];
        done <= hold[n_hold];
    end
    
    ///////////////////////////////////////////////////
    
    reg [5:0] index;
    reg [17:0] vmstubout;
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        index = 6'h0;
    end
    
    always @(posedge clk) begin
        if(first_clk_pipe) begin
            read_add1 <= 6'h3f;
            read_add2 <= 6'h3f;
            read_add3 <= 6'h3f;    
        end
        else begin
            if(read_add1 + 1'b1 < number_in1) begin
                read_add1 <= read_add1 + 1'b1;
            end
            else begin
                read_add1 <= read_add1;
                if(read_add2 + 1'b1 < number_in2) begin
                    read_add2 <= read_add2 + 1'b1;
                end
                else begin
                    read_add2 <= read_add2;
                    if(read_add3 + 1'b1 < number_in3) begin
                        read_add3 <= read_add3 + 1'b1;
                    end
                    else
                        read_add3 <= read_add3;
                end
            end
        end
    end
    
    ///////////////////////////////////////////////////////////////////////////
    
    reg [35:0] stubin;
    reg [35:0] stubin1;
            
    always @(posedge clk) begin
        stubin1 <= stubin;
        if(stubinLink3 != 0)
            stubin <= stubinLink3;
        else begin
            if(stubinLink2 != 0)
                stubin <= stubinLink2;
            else begin
                if(stubinLink1 != 0)
                    stubin <= stubinLink1;
                else 
                    stubin <= 0; 
            end
        end
        if(stubin1 == 0)
            index = 6'h0;
        else begin
            if(stubin1 != stubin)
                index = index + 1'b1;
            else
                index = index;
        end
        if(INNER) begin        
            allstuboutn1[35:33] <= stubin[2:0];               // Stub pt      
            allstuboutn1[32:26] <= stubin[35:29];             // r
            allstuboutn1[25:14] <= stubin[28:17];             // z
            allstuboutn1[13:0]  <= stubin[16:3];              // phi
        end
        else begin
            allstuboutn1[35:33] <= stubin[2:0];               // Stub pt
            allstuboutn1[32:25] <= stubin[35:28];             // r
            allstuboutn1[24:17] <= stubin[27:20];             // z
            allstuboutn1[16:0]  <= stubin[19:3];              // phi
        end
    end
    
    ///////////////////////////////////////////////////////////////////////////
    
    assign allstuboutn2 = allstuboutn1;
    assign allstuboutn3 = allstuboutn1;
    
    assign vmstuboutPHI1Z1n1 = vmstubout;
    assign vmstuboutPHI1Z1n2 = vmstuboutPHI1Z1n1;
    assign vmstuboutPHI1Z1n3 = vmstuboutPHI1Z1n1;
    assign vmstuboutPHI1Z1n4 = vmstuboutPHI1Z1n1;
    assign vmstuboutPHI1Z1n5 = vmstuboutPHI1Z1n1;
    assign vmstuboutPHI1Z1n6 = vmstuboutPHI1Z1n1;
    assign vmstuboutPHI1Z2n1 = vmstubout;
    assign vmstuboutPHI1Z2n2 = vmstuboutPHI1Z2n1;
    assign vmstuboutPHI1Z2n3 = vmstuboutPHI1Z2n1;
    assign vmstuboutPHI1Z2n4 = vmstuboutPHI1Z2n1;
        
    assign vmstuboutPHI2Z1n1 = vmstubout;
    assign vmstuboutPHI2Z1n2 = vmstuboutPHI2Z1n1;
    assign vmstuboutPHI2Z1n3 = vmstuboutPHI2Z1n1;
    assign vmstuboutPHI2Z1n4 = vmstuboutPHI2Z1n1;
    assign vmstuboutPHI2Z1n5 = vmstuboutPHI2Z1n1;
    assign vmstuboutPHI2Z1n6 = vmstuboutPHI2Z1n1;
    assign vmstuboutPHI2Z2n1 = vmstubout;
    assign vmstuboutPHI2Z2n2 = vmstuboutPHI2Z2n1;
    assign vmstuboutPHI2Z2n3 = vmstuboutPHI2Z2n1;
    assign vmstuboutPHI2Z2n4 = vmstuboutPHI2Z2n1;
    assign vmstuboutPHI2Z2n5 = vmstuboutPHI2Z2n1;
    assign vmstuboutPHI2Z2n6 = vmstuboutPHI2Z2n1;

    assign vmstuboutPHI3Z1n1 = vmstubout;        
    assign vmstuboutPHI3Z1n2 = vmstuboutPHI3Z1n1;
    assign vmstuboutPHI3Z1n3 = vmstuboutPHI3Z1n1;
    assign vmstuboutPHI3Z1n4 = vmstuboutPHI3Z1n1;
    assign vmstuboutPHI3Z1n5 = vmstuboutPHI3Z1n1;
    assign vmstuboutPHI3Z1n6 = vmstuboutPHI3Z1n1;
    assign vmstuboutPHI3Z2n1 = vmstubout;
    assign vmstuboutPHI3Z2n2 = vmstuboutPHI3Z2n1;
    assign vmstuboutPHI3Z2n3 = vmstuboutPHI3Z2n1;
    assign vmstuboutPHI3Z2n4 = vmstuboutPHI3Z2n1;
    assign vmstuboutPHI3Z2n5 = vmstuboutPHI3Z2n1;
    assign vmstuboutPHI3Z2n6 = vmstuboutPHI3Z2n1;
            
    assign vmstuboutPHI4Z1n1 = vmstubout;
    assign vmstuboutPHI4Z1n2 = vmstuboutPHI4Z1n1;
    assign vmstuboutPHI4Z1n3 = vmstuboutPHI4Z1n1;
    assign vmstuboutPHI4Z2n1 = vmstubout;
    assign vmstuboutPHI4Z2n2 = vmstuboutPHI4Z2n1;
    assign vmstuboutPHI4Z2n3 = vmstuboutPHI4Z2n1;
    assign vmstuboutPHI4Z2n4 = vmstuboutPHI4Z2n1;
    
    ////////////////////////////////////////////////////////////////////////////
    
    always @(posedge clk) begin
        if(INNER) begin        
            vmstubout[17:15] <= stubin[2:0];     
            vmstubout[14:9]  <= index;
            vmstubout[8:5]   <= stubin[25:22];
            vmstubout[4:2]   <= {ODD ^ stubin[14],stubin[13:12]};
            vmstubout[1:0]   <= stubin[35:34];
            if(stubin1 != 0 & allstuboutn1[23] == 1'b0 & (allstuboutn1[13:11] == (3'b000 + ODD) | allstuboutn1[13:11] == (3'b001 + ODD)))
                vmstuboutPHI1Z1_en <= 1'b1;
            else 
                vmstuboutPHI1Z1_en <= 0; 
            if(allstuboutn1[23] == 1'b0 & (allstuboutn1[13:11] == (3'b010 + ODD) | allstuboutn1[13:11] == (3'b011 + ODD)))
                vmstuboutPHI2Z1_en <= 1'b1;
            else 
                vmstuboutPHI2Z1_en <= 0;
            if(allstuboutn1[23] == 1'b0 & (allstuboutn1[13:11] == (3'b100 + ODD) | allstuboutn1[13:11] == (3'b101 + ODD)))
                vmstuboutPHI3Z1_en <= 1'b1;
            else 
                vmstuboutPHI3Z1_en <= 0;
            if(allstuboutn1[23] == 1'b0 & (allstuboutn1[13:11] == (3'b110 + ODD) | allstuboutn1[13:11] == 3'b111))
                vmstuboutPHI4Z1_en <= 1'b1;
            else 
                vmstuboutPHI4Z1_en <= 0;
            if(allstuboutn1[23] == 1'b1 & (allstuboutn1[13:11] == (3'b000 + ODD) | allstuboutn1[13:11] == (3'b001 + ODD)))
                vmstuboutPHI1Z2_en <= 1'b1;
            else 
                vmstuboutPHI1Z2_en <= 0;
            if(allstuboutn1[23] == 1'b1 & (allstuboutn1[13:11] == (3'b010 + ODD) | allstuboutn1[13:11] == (3'b011 + ODD)))
                vmstuboutPHI2Z2_en <= 1'b1;
            else 
                vmstuboutPHI2Z2_en <= 0;
            if(allstuboutn1[23] == 1'b1 & (allstuboutn1[13:11] == (3'b100 + ODD) | allstuboutn1[13:11] == (3'b101 + ODD)))
                vmstuboutPHI3Z2_en <= 1'b1;
            else 
                vmstuboutPHI3Z2_en <= 0;
            if(allstuboutn1[23] == 1'b1 & (allstuboutn1[13:11] == (3'b110 + ODD) | allstuboutn1[13:11] == 3'b111))
                vmstuboutPHI4Z2_en <= 1'b1;
            else 
                vmstuboutPHI4Z2_en <= 0;
        end
        else begin
            vmstubout[17:15] <= stubin[2:0];
            vmstubout[14:9]  <= index;
            vmstubout[8:5]   <= stubin[24:21];
            vmstubout[4:2]   <= {ODD ^ stubin[17],stubin[16:15]};
            vmstubout[1:0]   <= stubin[35:34];
            if(stubin1 != 0 & allstuboutn1[22] == 1'b0 & (allstuboutn1[16:14] == (3'b000 + ODD) | allstuboutn1[16:14] == (3'b001 + ODD)))
                vmstuboutPHI1Z1_en <= 1'b1;
            else 
                vmstuboutPHI1Z1_en <= 0;
            if(allstuboutn1[22] == 1'b0 & (allstuboutn1[16:14] == (3'b010 + ODD) | allstuboutn1[16:14] == (3'b011 + ODD)))
                vmstuboutPHI2Z1_en <= 1'b1;
            else 
                vmstuboutPHI2Z1_en <= 0;
            if(allstuboutn1[22] == 1'b0 & (allstuboutn1[16:14] == (3'b100 + ODD) | allstuboutn1[16:14] == (3'b101 + ODD)))
                vmstuboutPHI3Z1_en <= 1'b1;
            else 
                vmstuboutPHI3Z1_en <= 0;
            if(allstuboutn1[22] == 1'b0 & (allstuboutn1[16:14] == (3'b110 + ODD) | allstuboutn1[16:14] == 3'b111))
                vmstuboutPHI4Z1_en <= 1'b1;
            else 
                vmstuboutPHI4Z1_en <= 0;
            if(allstuboutn1[22] == 1'b1 & (allstuboutn1[16:14] == (3'b000 + ODD) | allstuboutn1[16:14] == (3'b001 + ODD)))
                vmstuboutPHI1Z2_en <= 1'b1;
            else 
                vmstuboutPHI1Z2_en <= 0;
            if(allstuboutn1[22] == 1'b1 & (allstuboutn1[16:14] == (3'b010 + ODD) | allstuboutn1[16:14] == (3'b011 + ODD)))
                vmstuboutPHI2Z2_en <= 1'b1;
            else 
                vmstuboutPHI2Z2_en <= 0;
            if(allstuboutn1[22] == 1'b1 & (allstuboutn1[16:14] == (3'b100 + ODD) | allstuboutn1[16:14] == (3'b101 + ODD)))
                vmstuboutPHI3Z2_en <= 1'b1;
            else 
                vmstuboutPHI3Z2_en <= 0;
            if(allstuboutn1[22] == 1'b1 & (allstuboutn1[16:14] == (3'b110 + ODD) | allstuboutn1[16:14] == 3'b111))
                vmstuboutPHI4Z2_en <= 1'b1;
            else 
                vmstuboutPHI4Z2_en <= 0;
        end
    end
    
    
endmodule
