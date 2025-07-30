`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 10:59:26 PM
// Design Name: 
// Module Name: priority_encoder_4_2
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


module priority_encoder_4_2(
    input [3:0] I,
    input Ein,
    output reg [1:0] Y,
    output reg GS,
    output reg Eout
    );
    
    always @(I, Ein) begin
        if(Ein == 1) begin
            if(I[3] == 1) 
                Y <= 2'b11;
            else if (I[2] == 1)
                Y <= 2'b10;
            else if (I[1] == 1) 
                Y <= 2'b01;
            else if (I[0] == 1)
                Y <= 2'b00; 
            else 
                Y <= 2'b00;
        end
        else 
            Y <= 2'b00;
     end
     
     always@(I, Ein) begin
        if(Ein == 1 && I == 0) 
            Eout <= 1'b1;
        else 
            Eout <= 1'b0;
     end
     
     always @(I, Ein) begin
        if (Ein == 1 && I != 0)
            GS <= 1'b1;
        else 
            GS <= 1'b0;
     end
        
    
    
endmodule

