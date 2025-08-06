`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2025 04:18:30 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input [7:0] sw,
    input clk, 
    output [7:0] led,
    output red_led
    );
    
    wire data;
    wire B2, B1, B0;
    
    counter counter_input(.clk(clk), .B({B2, B1, B0}));
    
    mux_8_1 mux_input(.I(sw), .S({B2, B1, B0}), .Y(data));
    
    decoder_3_8 decoder_output(.EN(data), .I({B2, B1, B0}), .Y(led));
    
    assign red_led = data;
    
    
endmodule
