`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:39:16 AM
// Design Name: 
// Module Name: odd_or_even_tb
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


module odd_or_even_tb;

    reg [7:0] sw;
    wire [1:0] led;
    
    odd_or_even cut(.sw(sw), .led(led));
    
    integer k;
    
    initial
    begin
    sw = 0; 
    for(k = 0; k < 255; k=k+1)
        #10 sw = k;
    #10 $finish;
    end
endmodule
        
