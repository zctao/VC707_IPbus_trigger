// Support logic for the priority encoder and memory readout

`timescale 1ns / 1ps

module prio_support(
    // Inputs:
    input clk,
    input [5:0] initial_count,  // initial number of items in memory
    input init,                 // signal to start working on new data
    input setup,                // multi-cycle version of 'init'
    input sel,                  // run this block 
    // Outputs:
    output reg [5:0] addr,      // provide low bits to memory
    output reg has_dat,         // item count is not zero
    output reg valid            // valid data is coming from memory
);

//////////////////////////////////////////////////////////////////////////
// item counter, gets loaded by 'init', counts down to zero
reg [5:0] item_cntr;
wire not_zero, count_en;
// set a flag when we have items
assign not_zero = (item_cntr[5:0] != 6'b000000) ? 1'b1 : 1'b0;
// enable counting when we are both 'selected' and we have items. Not during setup.
assign count_en = ~setup & not_zero & sel;

always @ (posedge clk) begin
    if (init)                     // at the start of a crossing, load the counter
        item_cntr[5:0] <= initial_count;
    else if (count_en)       // if we are selected and we have data, decrement counter  
        item_cntr[5:0] <= item_cntr[5:0] - 1'b000001;
end

// output status
// There may be fewer overhead cycles if these are not registers, but the overall clock
// will probably be slower. Experimentation is needed to make this decision. A slower
// rate may match better to surrounding logic.
always @ (posedge clk) begin
    has_dat <= not_zero;
    valid <= count_en;
end

//////////////////////////////////////////////////////////////////////////
// address counter, gets cleared by 'init', counts up
always @ (posedge clk) begin
    if (init)                     // at the start of a crossing, clear the counter
        addr[5:0] <= 6'b111111;
    else if (count_en)            // if we are selected, increment counter  
        addr[5:0] <= addr[5:0] + 1'b000001;
end

endmodule
