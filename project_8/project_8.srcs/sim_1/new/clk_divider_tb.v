`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 03:45:06 PM
// Design Name: 
// Module Name: clk_divider_tb
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


module clk_divider_tb;

    reg clk;
    reg rst;
    wire led;
    
    
    clk_divider uut(.clk(clk), .rst(rst), .led(led));
    
    always 
        #5 clk = ~clk;
        
    initial begin
        clk = 0;
        rst = 1;
        
        #10 rst = 0;
        
        #100;
        
     end
      
    
endmodule