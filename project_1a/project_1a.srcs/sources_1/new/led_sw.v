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
    input btn0,
    input btn1,
    input btn2,
    input btn3,
    output anode0,
    output anode1,
    output anode2,
    output anode3
    );
    
    wire w1;
    
    assign anode0 = ~btn0;
    assign anode1 = ~btn1;
    assign anode2 = ~btn2;
    assign anode3 = ~btn3;
    
    assign w1 = btn0 | btn1 | btn2 | btn3;
    
    assign led[0] = ~(sw[0] & w1);
    assign led[1] = ~(sw[1] & w1);
    assign led[2] = ~(sw[2] & w1);
    assign led[3] = ~(sw[3] & w1);
    assign led[4] = ~(sw[4] & w1);
    assign led[5] = ~(sw[5] & w1);
    assign led[6] = ~(sw[6] & w1);
    assign led[7] = ~(sw[7] & w1);
    
    
    
   
    
endmodule
