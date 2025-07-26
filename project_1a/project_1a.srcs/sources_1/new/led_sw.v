`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Andy Nguyen
// 
// Create Date: 07/26/2025 01:36:15 PM
// Design Name: 
// Module Name: led_sw
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


module led_sw(
    output [11:0] led, 
    input [11:0] sw
    );
    
    assign {led[0], led[1], led[2], led[3], led[4], led[5], led[6], led[7], led[8], led[9], led[10], led[11]} = sw;
    
endmodule
