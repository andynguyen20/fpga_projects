`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 11:11:17 PM
// Design Name: 
// Module Name: priority_encoder_4_2_tb
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


module priority_encoder_4_2_tb;

    reg [3:0] I; 
    reg Ein;
    wire [1:0] Y;
    wire GS;
    wire Eout;
    
    priority_encoder_4_2 cut(.I(I), .Ein(Ein), .Y(Y), .GS(GS), .Eout(Eout));
    
    integer k;
    
    initial begin
    
        Ein = 1'b0;
        
        for(k=0; k<16; k=k+1) begin
            I = k;
            #10;
        end
        
        Ein = 1'b1;
        
        for(k=0; k<16; k=k+1) begin
            I = k;
            #10;
        end
        
        $finish;
        
        end
        
endmodule