`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2015 12:53:23 PM
// Design Name: 
// Module Name: dwidth_converter_tb
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


module dwidth_converter_tb;

    //inputs
    reg aclk;
    reg aresetn;
    reg aclken;
    reg s_axis_tvalid;
    reg [63:0] s_axis_tdata;
    reg [7:0] s_axis_tkeep;
    reg s_axis_tlast;
    
    reg m_axis_tready;
    
    //outputs
    
    wire s_axis_tready;
    wire m_axis_tvalid;
    wire [15:0] m_axis_tdata;
    wire [1:0] m_axis_tkeep;
    wire m_axis_tlast;
    
    //----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
    axis_dwidth_converter_0 your_instance_name (
      .aclk(aclk),                    // input wire aclk
      .aresetn(aresetn),              // input wire aresetn
      .aclken(aclken),                // input wire aclken
      .s_axis_tvalid(s_axis_tvalid),  // input wire s_axis_tvalid
      .s_axis_tready(s_axis_tready),  // output wire s_axis_tready
      .s_axis_tdata(s_axis_tdata),    // input wire [55 : 0] s_axis_tdata
      .s_axis_tkeep(s_axis_tkeep),    // input wire [6 : 0] s_axis_tkeep
      .s_axis_tlast(s_axis_tlast),    // input wire s_axis_tlast
      .m_axis_tvalid(m_axis_tvalid),  // output wire m_axis_tvalid
      .m_axis_tready(m_axis_tready),  // input wire m_axis_tready
      .m_axis_tdata(m_axis_tdata),    // output wire [15 : 0] m_axis_tdata
      .m_axis_tkeep(m_axis_tkeep),    // output wire [1 : 0] m_axis_tkeep
      .m_axis_tlast(m_axis_tlast)    // output wire m_axis_tlast
    );
    // INST_TAG_END ------ End INSTANTIATION Template ---------
    
    // You must compile the wrapper file axis_dwidth_converter_0.v when simulating
    // the core, axis_dwidth_converter_0. When compiling the wrapper file, be sure to
    // reference the Verilog simulation library.

	initial begin
		// Initialize Inputs
		aresetn <= 1;
		aclk <= 1;
		aclken <= 0;
        s_axis_tvalid <= 0;
        s_axis_tdata <= 64'b0;
        s_axis_tkeep <= 8'b0;
        s_axis_tlast <= 0;
        m_axis_tready <= 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here	       
        aresetn <= 0;
        #20
        aresetn <= 1;
        #10
        aclken <= 1;
        #10
        m_axis_tready <= 1;
        
        #20
        s_axis_tdata <= 64'hcafebabebeef1078;
        s_axis_tkeep <= 8'b11111110;
        s_axis_tlast <= 1'b1;
        s_axis_tvalid <= 1'b1;
        #32
        s_axis_tdata <= 64'hdeadf0a3b47defac;
        s_axis_tkeep <= 8'b11111111;
        s_axis_tlast <= 1'b1;
        s_axis_tvalid <= 1'b1;
        #32
        s_axis_tdata <= 64'h8ac6ef90d362a3b4;
        s_axis_tkeep <= 8'b11111110;
        s_axis_tlast <= 1'b1;
        s_axis_tvalid <= 1'b1;
        #32
        s_axis_tdata <= 64'hdeadf0a3b47defac;
        s_axis_tkeep <= 8'b11111111;
        s_axis_tlast <= 1'b1;
        s_axis_tvalid <= 1'b0;
	end
	
	always 
			#4 aclk = !aclk;
			
endmodule
