`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 11:42:25 PM
// Design Name: 
// Module Name: temp_indicator
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
// Design a logic circuit that outputs a logic high signal whenever the temperature is greater than 62.5 degrees but less than 72.5 degrees.
//////////////////////////////////////////////////////////////////////////////////


module temp_indicator(
    input [7:0] sw,
    output led
    );
    
    assign led = (sw[7] & ~sw[6] & sw[5] & ~sw[4]) | (sw[7] & ~sw[6] & sw[5] & sw[4] & ~sw[3]) | (sw[7] & ~sw[6] & sw[5] & sw[4] & sw[3] & ~sw[2] & ~sw[1] & ~sw[0]);
    
endmodule
