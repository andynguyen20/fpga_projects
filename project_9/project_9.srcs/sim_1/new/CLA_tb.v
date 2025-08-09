`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2025 01:23:35 PM
// Design Name: 
// Module Name: CLA_tb
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


module CLA_tb; //testbench before implementing sseg 
    
    reg Cin;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] S; 
    wire Cout;
    
    CLA cut(.Cin(Cin), .A(A), .B(B), .S(S), .Cout(Cout));
    
    integer k;
    integer j;
    
    initial begin
        Cin = 1'b0;
        for(k = 0; k <16; k = k+1) begin
            for(j = 0; j<16; j=j+1) begin
                A <= k;
                B <= j;
                #10;
            end
         end
         
        Cin = 1'b1;
        for(k = 0; k <16; k = k+1) begin
            for(j = 0; j<16; j=j+1) begin
                A = k;
                B = j;
                #10;
            end
         end
         
         $finish;
     end
     
     
        
    
    
    
endmodule
