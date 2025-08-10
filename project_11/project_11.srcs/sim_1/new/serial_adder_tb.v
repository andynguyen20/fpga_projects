`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:08:28 PM
// Design Name: 
// Module Name: serial_adder_tb
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


module serial_adder_tb;

    reg A;
    reg B;
    reg clk;
    reg rst;
    wire F;
    wire Cout;
    
    serial_adder SA(.A(A), .B(B), .clk(clk), .rst(rst), .F(F), .Cout(Cout));
    
    initial clk = 0;
    always #5 clk = ~clk;
    
    initial begin
        rst = 1'b1;
        #10;
        rst = 1'b0;
        
        
        A = 1'b0;
        B = 1'b0;           
        #10;
        
        A = 1'b1;                  // state 1
        #20;
        
        A = 1'b0;                  // should be back to zero here
        #10;
        
        A = 1'b1;                  // state 2 here
        B = 1'b1;
        #10;
    
        A = 1'b0;                  // circle back
        #10;
        
        B = 1'b0;                  // state 1
        #10;
         
        A = 1'b1;
        B = 1'b1;                 // back to state 2 here
        #20;
        
        B = 1'b0;                 // circle back with B off
        #10;
        
        B = 1'b1;                 // state 3 here and circle back
        #20;
        
        A = 1'b0;                 // state 2
        #10;
        
        A = 1'b1;                 // state 3
        #10;
        
        A = 1'b0;                // state 1 and then state 0
        B = 1'b0;
        #20;
        
        B = 1'b1;               // state 1 using B
        #10;
        
        rst = 1'b1;
        #10;
        
     end
endmodule
