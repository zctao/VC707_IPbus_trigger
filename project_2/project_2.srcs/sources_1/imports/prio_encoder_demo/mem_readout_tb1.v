`timescale 1ns / 1ps

module mem_readout_tb1;

    reg clk;                    // main clock
    //reg reset;                  // synchronously negated active-hi reset
    reg new_event;              // start over
    reg [5:0] items00;          // starting number of items for this memory
    reg [5:0] items01;          // starting number of items for this memory
    reg [5:0] items02;          // starting number of items for this memory
    reg [5:0] items03;          // starting number of items for this memory
    reg [5:0] items04;          // starting number of items for this memory
    reg [5:0] items05;          // starting number of items for this memory
    reg [5:0] items06;          // starting number of items for this memory
    reg [5:0] items07;          // starting number of items for this memory
    reg [11:0] mem_dat00;       // data from this memory
    reg [11:0] mem_dat01;       // data from this memory
    reg [11:0] mem_dat02;       // data from this memory
    reg [11:0] mem_dat03;       // data from this memory
    reg [11:0] mem_dat04;       // data from this memory
    reg [11:0] mem_dat05;       // data from this memory
    reg [11:0] mem_dat06;       // data from this memory
    reg [11:0] mem_dat07;       // data from this memory
    
    wire [5:0] addr00;          // lower part of memory address
    wire [5:0] addr01;          // lower part of memory address
    wire [5:0] addr02;          // lower part of memory address
    wire [5:0] addr03;          // lower part of memory address
    wire [5:0] addr04;          // lower part of memory address
    wire [5:0] addr05;          // lower part of memory address
    wire [5:0] addr06;          // lower part of memory address
    wire [5:0] addr07;          // lower part of memory address
    wire none;                  // no more items
    wire [11:0] mem_dat_stream;
    wire valid;                 // 'mem_dat_stream' has valid data
    
	// Instantiate the Unit Under Test (UUT)
	mem_readout_top uut(
        .clk(clk),                    // main clock
        //.reset(reset),                  // synchronously negated active-hi reset
        .new_event(new_event),        // start over
        .items00(items00),          // starting number of items for this memory
        .items01(items01),          // starting number of items for this memory
        .items02(items02),          // starting number of items for this memory
        .items03(items03),          // starting number of items for this memory
        .items04(items04),          // starting number of items for this memory
        .items05(items05),          // starting number of items for this memory
        .items06(items06),          // starting number of items for this memory
        .items07(items07),          // starting number of items for this memory

        .mem_dat00(mem_dat00),     
        .mem_dat01(mem_dat01),     
        .mem_dat02(mem_dat02),     
        .mem_dat03(mem_dat03),     
        .mem_dat04(mem_dat04),     
        .mem_dat05(mem_dat05),     
        .mem_dat06(mem_dat06),     
        .mem_dat07(mem_dat07),     

        .addr00(addr00),          // lower part of memory address
        .addr01(addr01),          // lower part of memory address
        .addr02(addr02),          // lower part of memory address
        .addr03(addr03),          // lower part of memory address
        .addr04(addr04),          // lower part of memory address
        .addr05(addr05),          // lower part of memory address
        .addr06(addr06),          // lower part of memory address
        .addr07(addr07),          // lower part of memory address
        .mem_dat_stream(mem_dat_stream),
        .valid(valid),
        .none(none)                 // no more items
    );

    reg [5:0] new_event_period;

	initial begin
		// Initialize Inputs
		clk = 0;
		//reset = 0;
		items00 = 6'b111000;
		items01 = 6'b000001;
		items02 = 6'b000000;
		items03 = 6'b000010;
		items04 = 6'b000000;
		items05 = 6'b000000;
		items06 = 6'b000100;
		items07 = 6'b000000;
		mem_dat00 = 12'b0;
		mem_dat01 = 12'b0;
		mem_dat02 = 12'b0;
		mem_dat03 = 12'b0;
		mem_dat04 = 12'b0;
		mem_dat05 = 12'b0;
		mem_dat06 = 12'b0;
		mem_dat07 = 12'b0;
		new_event = 1'b0;
  		new_event_period[5:0] = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
    end

	// Add stimulus here
	// clocks
    always begin
        #5 clk = ~clk;   // 100 MHz
    end
        
    // Make the memory data match the address every clock period
    always @ (posedge clk) begin
        mem_dat00 <= {4'd00, 2'b0, addr00};
        mem_dat01 <= {4'd01, 2'b0, addr01};
        mem_dat02 <= {4'd02, 2'b0, addr02};
        mem_dat03 <= {4'd03, 2'b0, addr03};
        mem_dat04 <= {4'd04, 2'b0, addr04};
        mem_dat05 <= {4'd05, 2'b0, addr05};
        mem_dat06 <= {4'd06, 2'b0, addr06};
        mem_dat07 <= {4'd07, 2'b0, addr07};
    end
                            
    // periodically start a new event
    always @ (posedge clk) begin
        if (new_event_period[5:0] == 6'd50) begin
            new_event <= 1'b1;
            new_event_period <= 6'b0;
        end
        else begin
            new_event <= 1'b0;
            new_event_period[5:0] <= new_event_period[5:0] + 1'b1;
        end
    end
    
         
endmodule
