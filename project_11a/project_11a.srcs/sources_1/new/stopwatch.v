`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 09:58:26 PM
// Design Name: 
// Module Name: stopwatch
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


module stopwatch(
    input start,
    input stop,
    input inc,
    input rst,
    input clk, 
    output [3:0] anode,
    output [7:0] cathode
    );
    
    wire stopwatch_clock;
    wire [1:0] display_clock;
    
    divider  clk1(.clk(clk), .count(stopwatch_clock));
    two_bit_counter clk2(.clk(stopwatch_clock), .count(display_clock));
    
    wire cen;
    state_machine fsm1(.start(start), .stop(stop), .inc(inc), .rst(rst), .clk(stopwatch_clock), .cen(cen));
    
    wire [15:0] second;
    counter cntr1(.cen(cen), .clk(stopwatch_clock), .rst(rst), .sseg_second(second));
    
    wire [3:0] sseg_feed;
    mux_4_1_4 mux1(.I0(second[3:0]), .I1(second[7:4]), .I2(second[11:8]), .I3(second[15:12]), .sel(display_clock), .Y(sseg_feed));
    
    bin2seg dec1(.sw(sseg_feed), .sseg(cathode[6:0]));
    
    decoder_2_4 dec2(.count(display_clock), .anode(anode), .cathode_decimal(cathode[7]));
    
    
endmodule
