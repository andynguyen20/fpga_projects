`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 01:15:10 PM
// Design Name: 
// Module Name: comparator_wrapper
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


module comparator_wrapper(
    input [7:0] sw,
    input [1:0] btn,
    input clk,
    input rst1,
    input rst2,
    output [2:0] led
    );
    
    reg [7:0] op1, op2;

    always @ (posedge(clk)) begin
        if (btn[0]) op1 <= sw;
        if (btn[1]) op2 <= sw;
    end
    
    wire [7:0] A_int, B_int;
    
    register_8 regA(.D(op1), .En(btn[0]), .rst(rst1), .clk(clk), .Q(A_int));
    register_8 regB(.D(op2), .En(btn[1]), .rst(rst2), .clk(clk), .Q(B_int));
    
    comparator comp1(.A(A_int), .B(B_int), .led(led));
        
endmodule
