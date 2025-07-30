`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 08:43:38 PM
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb;
    
    reg [1:0] I; 
    reg [3:0] btn;
    wire [3:0] Y;
    
    decoder_2_4 cut(.I(I), .btn(btn), .Y(Y));
    
    integer k;
    
    initial begin
        I = 2'b00;
        
        for(k=0;k<16;k=k+1) begin
            btn <= k;
            #10;
        end
        
        I = 2'b01;
        
        for(k=0;k<16;k=k+1) begin
            btn <=k;
            #10;
        end
        
        I = 2'b10;
        
        for(k=0;k<16;k=k+1) begin
            btn <= k;
            #10;
        end
        
        I = 2'b11;
        for(k=0;k<16;k=k+1) begin
            btn <=k;
            #10;
        end
        
        
        $finish;
    end
        
        



endmodule