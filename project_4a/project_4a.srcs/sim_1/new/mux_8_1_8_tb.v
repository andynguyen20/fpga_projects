`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2025 07:24:14 AM
// Design Name: 
// Module Name: mux_8_1_8_tb
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


module mux_8_1_8_tb;

    reg [7:0] I0 = 8'h21; 
    reg [7:0] I1 = 8'h9e; 
    reg [7:0] I2 = 8'h14;
    reg [7:0] I3 = 8'h8c;
    reg [7:0] I4 = 8'h5e;
    reg [7:0] I5 = 8'hef;
    reg [7:0] I6 = 8'h71;
    reg [7:0] I7 = 8'h88;
    reg [2:0] sel;
    wire [7:0] Y;
    
    mux_8_1_8 cut(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .I4(I4), .I5(I5), .I6(I6), .I7(I7), .sel(sel), .Y(Y));
    
    initial begin
    
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;
    
    $finish;
    end
    
    
    
    
endmodule
