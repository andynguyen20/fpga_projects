`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 05:03:46 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input clk, 
    input rst,
    output reg [27:0] clk_div
    );
    
    always @(posedge (clk), posedge(rst)) begin
        if (rst)
            clk_div <= 28'b0;
        else
            clk_div <= clk_div +1;
    end 
    
    
    
endmodule
