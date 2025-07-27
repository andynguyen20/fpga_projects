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
    output [7:0] led, 
    input [7:0] sw,
    input [3:0] btn,
    output [3:0] anode
    );
    
    wire w1;
    
    assign anode[0] = ~btn[0];
    assign anode[1] = ~btn[1];
    assign anode[2] = ~btn[2];
    assign anode[3] = ~btn[3];
    
    assign w1 = btn[0] | btn[1] | btn[2] | btn[3];
    
    assign led[0] = ~(sw[0] & w1);
    assign led[1] = ~(sw[1] & w1);
    assign led[2] = ~(sw[2] & w1);
    assign led[3] = ~(sw[3] & w1);
    assign led[4] = ~(sw[4] & w1);
    assign led[5] = ~(sw[5] & w1);
    assign led[6] = ~(sw[6] & w1);
    assign led[7] = ~(sw[7] & w1);
    
    
    
   
    
endmodule