`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 11:39:47 AM
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;

    reg D; 
    reg G;
    wire Q;
    wire Qn;
    
    d_latch cut(.D(D), .G(G), .Q(Q), .Qn(Qn));
    
    initial begin
    D = 0;
    G = 0;

    #100 D = 1;
    #100 D = 0;
    #100 G = 1;
    #100 G = 0;
    #100 D = 1;
         G = 1;
    #100 D = 1;
         G = 0;
    #100 ;
end
    
    
endmodule