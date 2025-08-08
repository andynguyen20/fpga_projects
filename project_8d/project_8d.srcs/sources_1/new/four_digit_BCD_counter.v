`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 08:46:11 PM
// Design Name: 
// Module Name: four_digit_BCD_counter
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


module four_digit_BCD_counter(
    input CEN,
    input clk, 
    output [6:0] sseg,
    output [3:0] anode
    );
    
    wire TC0, TC1, TC2, TC3;
    wire TC0_int, TC1_int, TC2_int;
    wire [3:0] B0, B1, B2, B3;
    wire [1:0] count;
    wire [3:0] Y;
    wire clk_dvdr;
    
    BCD_counter BCD0(.CEN(CEN), .clk(clk_dvdr), .B(B0), .TC(TC0));
    assign TC0_int = CEN & TC0;
    BCD_counter BCD1(.CEN(TC0_int), .clk(clk_dvdr), .B(B1), .TC(TC1));
    assign TC1_int = CEN & TC1;
    BCD_counter BCD2(.CEN(TC1_int), .clk(clk_dvdr), .B(B2), .TC(TC2));
    assign TC2_int = CEN & TC2;
    BCD_counter BCD3(.CEN(TC2_int), .clk(clk_dvdr), .B(B3), .TC(TC3));
    
    clk_divider dvdr(.clk(clk), .clk_dvdr(clk_dvdr));
    
    two_bit_counter cntr(.clk(clk_dvdr), .count(count));
    
    mux_4_1 mux1(.I0(B0), .I1(B1), .I2(B2), .I3(B3), .sel(count), .Y(Y));
    decoder_sseg dec(.Y(Y), .sseg(sseg));
    
    decoder_2_4 dec1(.count(count), .anode(anode));
    
endmodule
