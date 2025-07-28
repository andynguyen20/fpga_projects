`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 06:23:00 PM
// Design Name: 
// Module Name: fiveway_switch
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


module fiveway_switch(
    input [4:0] sw,
    output led
    );
    
assign led = sw[4]^sw[3]^sw[2]^sw[1]^sw[0];
    
endmodule
