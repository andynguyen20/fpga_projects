`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 06:39:08 PM
// Design Name: 
// Module Name: clock_divider2
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


module clock_divider2(
    input clk,
    input rst,
    output led
    );
    
    reg [10:0] clk_divider;
    
    always @(posedge (clk), posedge (rst)) begin
        if (rst) 
            clk_divider <= 11'b00000000000;
        else    
            clk_divider <= clk_divider + 1;
     end
      
      assign led = clk_divider[10];  
    
endmodule
