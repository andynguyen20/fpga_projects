`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 10:49:51 AM
// Design Name: 
// Module Name: nor_sr_latch_tb
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


module nor_sr_latch_tb;

    reg S; 
    reg R;
    wire Q;
    wire Qn;
    
    nor_sr_latch cut(.S(S), .R(R), .Q(Q), .Qn(Qn));
    
    initial begin
    
    S = 0;
    R = 0;
    
    #100 S = 1;
    #100 S = 0;
    #100 R = 1;
    #100 R = 0;
    #100 R = 1;
         S = 1;
    #100 R = 0;
         S = 0;
    #100 R = 1;
         S = 1;
    #100;
    
    end  
    
endmodule
