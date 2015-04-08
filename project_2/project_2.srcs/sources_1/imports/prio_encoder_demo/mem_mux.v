// Mux to route data from the port that is currently selected

`timescale 1ns / 1ps

module mem_mux(
    input clk,
    input [4:0] sel,   // binary encoded
    input [11:0] mem_dat00,
    input [11:0] mem_dat01,
    input [11:0] mem_dat02,
    input [11:0] mem_dat03,
    input [11:0] mem_dat04,
    input [11:0] mem_dat05,
    input [11:0] mem_dat06,
    input [11:0] mem_dat07,
    input [11:0] mem_dat08,
    input [11:0] mem_dat09,
    input [11:0] mem_dat10,
    input [11:0] mem_dat11,
    input [11:0] mem_dat12,
    input [11:0] mem_dat13,
    input [11:0] mem_dat14,
    input [11:0] mem_dat15,
    input [11:0] mem_dat16,
    input [11:0] mem_dat17,
    
    output reg [11:0] mem_dat_stream                       
);

//////////////////////////////////////////////////////////////////////////
// Implement an 8:1 mux. This works better with with an encoded 'select'
// as compared to individual 'select' signals.
always @ (posedge clk) begin
    case (sel[4:0])
        5'b00000: mem_dat_stream <= mem_dat00;
        5'b00001: mem_dat_stream <= mem_dat01;
        5'b00010: mem_dat_stream <= mem_dat02;
        5'b00011: mem_dat_stream <= mem_dat03;
        5'b00100: mem_dat_stream <= mem_dat04;
        5'b00101: mem_dat_stream <= mem_dat05;
        5'b00110: mem_dat_stream <= mem_dat06;
        5'b00111: mem_dat_stream <= mem_dat07;
        5'b01000: mem_dat_stream <= mem_dat08;
        5'b01001: mem_dat_stream <= mem_dat09;
        5'b01010: mem_dat_stream <= mem_dat10;
        5'b01011: mem_dat_stream <= mem_dat11;
        5'b01100: mem_dat_stream <= mem_dat12;
        5'b01101: mem_dat_stream <= mem_dat13;
        5'b01110: mem_dat_stream <= mem_dat14;
        5'b01111: mem_dat_stream <= mem_dat15;
        5'b10000: mem_dat_stream <= mem_dat16;
        5'b10001: mem_dat_stream <= mem_dat17;
    endcase
end

endmodule
