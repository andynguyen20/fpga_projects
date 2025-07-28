`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 12:15:36 AM
// Design Name: 
// Module Name: temp_indicator_tb
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


module temp_indicator_tb;

    reg [7:0] sw;
    wire led;
    
    temp_indicator cut(.sw(sw), .led(led));
    
    integer k;
    
    initial begin
    
    sw = 0;
    
    for(k = 98; k < 255; k=k+1) 
        #10 sw = k;
        
    #10 $finish;
    end
        
    
endmodule 
