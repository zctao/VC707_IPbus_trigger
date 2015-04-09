`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2015 03:28:30 PM
// Design Name: 
// Module Name: CLK_Counter
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


module CLK_Counter(
    input wire clk,
    input wire reset,
    input wire start,
    input wire stop,
    output reg [31:0] out
    );
    
    reg run;
    
    always @ (posedge clk) begin
        if (reset) begin
            out <= 32'b0;
            run <= 0;
        end else begin
            if (start == 1'b0 && stop == 1'b0) run <= run;
            if (start == 1'b0 && stop == 1'b1) run <= 0;
            if (start == 1'b1 && stop == 1'b0) run <= 1;
            if (start == 1'b1 && stop == 1'b1) run <= 0;
            if (run) out <= out + 1;
        end
    end
    
endmodule
