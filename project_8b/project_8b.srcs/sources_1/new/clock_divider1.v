`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 06:30:53 PM
// Design Name: 
// Module Name: clock_divider1
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


module clock_divider1(
    input clk,
    input rst,
    output led
    );
    
    reg [15:0] clk_divider;
    
    always @(posedge (clk), posedge (rst)) begin
        if (rst) 
            clk_divider <= 16'b0000000000000000;
        else    
            clk_divider <= clk_divider + 1;
     end
      
      assign led = clk_divider[15];      
    
endmodule
