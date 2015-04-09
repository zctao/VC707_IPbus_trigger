`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2015 01:27:37 PM
// Design Name: 
// Module Name: Reset_Synchronizer
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


module Reset_Synchronizer(
    input CLK,
    input RESET_I,
    output reg RESET_O,
    output reg RESET_OB
    );
    
    reg rst;
    
    always @(posedge CLK) begin
        rst <= RESET_I;
        RESET_O <= rst;
        RESET_OB <= ~rst;
    end
    
endmodule
