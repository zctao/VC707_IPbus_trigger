// This module merges the data from a set of memories into a single stream.
// A 'valid' bit is asserted along with each word of valid data.
//
// The connections for each memory are (where 'xx' is replaced by sequential numbers):
//  1) (IN)  itemsxx - A register which holds the number of words to read from that memory.
//  2) (OUT) addrxx - The current address from which to read data. This is the low part of the address
//           from a counter. The high part of the address is the crossing number. 
//  3) (IN)  mem_datxx - The data from the current address.
//
// The global connections are:
//  1) (IN) clk - The processing clock responsible for gathering the data
//  2) (IN) new_event - A signal to start processing the next event. It is
//          a pulse with the duration of a single clock period.
//  3) (OUT) mem_dat_stream - A single stream of data from the various memories.
//           The stream is not contiguous; there are gaps
//  4) (OUT) valid - A bit that indicates that the current "mem_dat_stream" value
//           contains valid data.
//  5) (OUT) done - A bit that indicates that there is no more data to process.
//           Currently not asserted if data processing does not finish before the
//           next event.
 
`timescale 1ns / 1ps

module mem_readout_top(
    input clk,                    // main clock
    input new_event,              // start over
 
    // A memory block
    input [5:0] items00,          // starting number of items for this memory
    output [5:0] addr00,          // memory address
    input [11:0] mem_dat00,       // contents of this memory
    // A memory block
    input [5:0] items01,          // starting number of items for this memory
    output [5:0] addr01,          // memory address
    input [11:0] mem_dat01,       // contents of this memory
    // A memory block
    input [5:0] items02,          // starting number of items for this memory
    output [5:0] addr02,          // memory address
    input [11:0] mem_dat02,       // contents of this memory
    // A memory block
    input [5:0] items03,          // starting number of items for this memory
    output [5:0] addr03,          // memory address
    input [11:0] mem_dat03,       // contents of this memory
    // A memory block
    input [5:0] items04,          // starting number of items for this memory
    output [5:0] addr04,          // memory address
    input [11:0] mem_dat04,       // contents of this memory
    // A memory block
    input [5:0] items05,          // starting number of items for this memory
    output [5:0] addr05,          // memory address
    input [11:0] mem_dat05,       // contents of this memory
    // A memory block
    input [5:0] items06,          // starting number of items for this memory
    output [5:0] addr06,          // memory address
    input [11:0] mem_dat06,       // contents of this memory
    // A memory block
    input [5:0] items07,          // starting number of items for this memory
    output [5:0] addr07,          // memory address
    input [11:0] mem_dat07,       // contents of this memory
    // A memory block
    input [5:0] items08,          // starting number of items for this memory
    output [5:0] addr08,          // memory address
    input [11:0] mem_dat08,       // contents of this memory
    // A memory block
    input [5:0] items09,          // starting number of items for this memory
    output [5:0] addr09,          // memory address
    input [11:0] mem_dat09,       // contents of this memory
    // A memory block
    input [5:0] items10,          // starting number of items for this memory
    output [5:0] addr10,          // memory address
    input [11:0] mem_dat10,       // contents of this memory
    // A memory block
    input [5:0] items11,          // starting number of items for this memory
    output [5:0] addr11,          // memory address
    input [11:0] mem_dat11,       // contents of this memory
    // A memory block
    input [5:0] items12,          // starting number of items for this memory
    output [5:0] addr12,          // memory address
    input [11:0] mem_dat12,       // contents of this memory
    // A memory block
    input [5:0] items13,          // starting number of items for this memory
    output [5:0] addr13,          // memory address
    input [11:0] mem_dat13,       // contents of this memory
    // A memory block
    input [5:0] items14,          // starting number of items for this memory
    output [5:0] addr14,          // memory address
    input [11:0] mem_dat14,       // contents of this memory
    // A memory block
    input [5:0] items15,          // starting number of items for this memory
    output [5:0] addr15,          // memory address
    input [11:0] mem_dat15,       // contents of this memory
    // A memory block
    input [5:0] items16,          // starting number of items for this memory
    output [5:0] addr16,          // memory address
    input [11:0] mem_dat16,       // contents of this memory
    // A memory block
    input [5:0] items17,          // starting number of items for this memory
    output [5:0] addr17,          // memory address
    input [11:0] mem_dat17,       // contents of this memory
    
    output [11:0] mem_dat_stream, // merged memory data stream
    output reg valid,             // valid data in merged memory stream
    output none                   // no more data

);

// Internal interconnects
wire has_dat00, has_dat01, has_dat02, has_dat03, has_dat04, has_dat05, has_dat06, has_dat07, has_dat08, has_dat09;
wire has_dat10, has_dat11, has_dat12, has_dat13, has_dat14, has_dat15, has_dat16, has_dat17;
wire valid00, valid01, valid02, valid03, valid04, valid05, valid06, valid07, valid08, valid09;
wire valid10, valid11, valid12, valid13, valid14, valid15, valid16, valid17;
wire [4:0] sel;

// When 'new_event' is asserted, terminate the current processing and get
// set up for the new event. This requires that we holdoff on any output
// for several clock periods. 
reg new_event_dly1, new_event_dly2;
always @(posedge clk) begin
    new_event_dly1 <= new_event;
    new_event_dly2 <= new_event_dly1;
end
// Use these clock periods to prepare to process the new event
assign setup = new_event | new_event_dly1 | new_event_dly2;

// connect address and item counters, as well as comparitors, for each memory
prio_support prio_support00(.clk(clk), .initial_count(items00), .init(new_event), .sel(sel00), 
    .setup(setup), .addr(addr00[5:0]), .has_dat(has_dat00), .valid(valid00) );
prio_support prio_support01(.clk(clk), .initial_count(items01), .init(new_event), .sel(sel01), 
    .setup(setup), .addr(addr01[5:0]), .has_dat(has_dat01), .valid(valid01) );
prio_support prio_support02(.clk(clk), .initial_count(items02), .init(new_event), .sel(sel02), 
    .setup(setup), .addr(addr02[5:0]), .has_dat(has_dat02), .valid(valid02) );
prio_support prio_support03(.clk(clk), .initial_count(items03), .init(new_event), .sel(sel03), 
    .setup(setup), .addr(addr03[5:0]), .has_dat(has_dat03), .valid(valid03) );
prio_support prio_support04(.clk(clk), .initial_count(items04), .init(new_event), .sel(sel04), 
    .setup(setup), .addr(addr04[5:0]), .has_dat(has_dat04), .valid(valid04) );
prio_support prio_support05(.clk(clk), .initial_count(items05), .init(new_event), .sel(sel05), 
    .setup(setup), .addr(addr05[5:0]), .has_dat(has_dat05), .valid(valid05) );
prio_support prio_support06(.clk(clk), .initial_count(items06), .init(new_event), .sel(sel06), 
    .setup(setup), .addr(addr06[5:0]), .has_dat(has_dat06), .valid(valid06) );
prio_support prio_support07(.clk(clk), .initial_count(items07), .init(new_event), .sel(sel07), 
    .setup(setup), .addr(addr07[5:0]), .has_dat(has_dat07), .valid(valid07) );
prio_support prio_support08(.clk(clk), .initial_count(items08), .init(new_event), .sel(sel08), 
    .setup(setup), .addr(addr08[5:0]), .has_dat(has_dat08), .valid(valid08) );
prio_support prio_support09(.clk(clk), .initial_count(items09), .init(new_event), .sel(sel09), 
    .setup(setup), .addr(addr09[5:0]), .has_dat(has_dat09), .valid(valid09) );
prio_support prio_support10(.clk(clk), .initial_count(items10), .init(new_event), .sel(sel10), 
    .setup(setup), .addr(addr10[5:0]), .has_dat(has_dat10), .valid(valid10) );
prio_support prio_support11(.clk(clk), .initial_count(items11), .init(new_event), .sel(sel11), 
    .setup(setup), .addr(addr11[5:0]), .has_dat(has_dat11), .valid(valid11) );
prio_support prio_support12(.clk(clk), .initial_count(items12), .init(new_event), .sel(sel12), 
    .setup(setup), .addr(addr12[5:0]), .has_dat(has_dat12), .valid(valid12) );
prio_support prio_support13(.clk(clk), .initial_count(items13), .init(new_event), .sel(sel13), 
    .setup(setup), .addr(addr13[5:0]), .has_dat(has_dat13), .valid(valid13) );
prio_support prio_support14(.clk(clk), .initial_count(items14), .init(new_event), .sel(sel14), 
    .setup(setup), .addr(addr14[5:0]), .has_dat(has_dat14), .valid(valid14) );
prio_support prio_support15(.clk(clk), .initial_count(items15), .init(new_event), .sel(sel15), 
    .setup(setup), .addr(addr15[5:0]), .has_dat(has_dat15), .valid(valid15) );
prio_support prio_support16(.clk(clk), .initial_count(items16), .init(new_event), .sel(sel16), 
    .setup(setup), .addr(addr16[5:0]), .has_dat(has_dat16), .valid(valid16) );
prio_support prio_support17(.clk(clk), .initial_count(items17), .init(new_event), .sel(sel17), 
    .setup(setup), .addr(addr17[5:0]), .has_dat(has_dat17), .valid(valid17) );
 
//////////////////////////////////////////////////////////////////////////////////
// connect the priority encoder the will access the next memory that has data
prio_encoder prio_encoder (
    // Inputs:
    .clk(clk),
    .has_dat00(has_dat00),
    .has_dat01(has_dat01),
    .has_dat02(has_dat02),
    .has_dat03(has_dat03),
    .has_dat04(has_dat04),
    .has_dat05(has_dat05),
    .has_dat06(has_dat06),
    .has_dat07(has_dat07),
    .has_dat08(has_dat08),
    .has_dat09(has_dat09),
    .has_dat10(has_dat10),
    .has_dat11(has_dat11),
    .has_dat12(has_dat12),
    .has_dat13(has_dat13),
    .has_dat14(has_dat14),
    .has_dat15(has_dat15),
    .has_dat16(has_dat16),
    .has_dat17(has_dat17),
    // Outputs:
    .sel00(sel00),
    .sel01(sel01),
    .sel02(sel02),
    .sel03(sel03),
    .sel04(sel04),
    .sel05(sel05),
    .sel06(sel06),
    .sel07(sel07),
    .sel08(sel08),
    .sel09(sel09),
    .sel10(sel10),
    .sel11(sel11),
    .sel12(sel12),
    .sel13(sel13),
    .sel14(sel14),
    .sel15(sel15),
    .sel16(sel16),
    .sel17(sel17),
    .sel(sel[4:0]),   // binary encoded
    .none(none)       // no more data
);

//////////////////////////////////////////////////////////////////////////////////
// connect a mux to merge the data streams
mem_mux mem_mux(
    .clk(clk),
    .sel(sel[4:0]),   // binary encoded
    .mem_dat00(mem_dat00),
    .mem_dat01(mem_dat01),
    .mem_dat02(mem_dat02),
    .mem_dat03(mem_dat03),
    .mem_dat04(mem_dat04),
    .mem_dat05(mem_dat05),
    .mem_dat06(mem_dat06),
    .mem_dat07(mem_dat07),
    .mem_dat08(mem_dat08),
    .mem_dat09(mem_dat09),
    .mem_dat10(mem_dat10),
    .mem_dat11(mem_dat11),
    .mem_dat12(mem_dat12),
    .mem_dat13(mem_dat13),
    .mem_dat14(mem_dat14),
    .mem_dat15(mem_dat15),
    .mem_dat16(mem_dat16),
    .mem_dat17(mem_dat17),
    
    .mem_dat_stream(mem_dat_stream)
);

//////////////////////////////////////////////////////////////////////////////////
// merge the 'valid' bits by 'OR'ing them together. Disable 'valid' during setup.
always @ (posedge clk) begin
    valid <= !setup & (valid00 | valid01 | valid02 | valid03 | valid04 | valid05 | valid06 | valid07 | valid08 | valid09 | 
                        valid10 | valid11 | valid12 | valid13 | valid14 | valid15 | valid16 | valid17);
end

 
endmodule