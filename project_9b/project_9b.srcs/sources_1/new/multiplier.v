`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 11:32:29 AM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [7:0] sw,
    input clk,
    input rst1,
    input rst2,
    input btn0,
    input btn1,
    output [6:0] cathode,
    output reg [3:0] anode,
    output overflow
    );
    
    reg [7:0] op1, op2;

    always @ (posedge(clk)) begin
        if (btn0) op1 <= sw;
        if (btn1) op2 <= sw;
    end
    
    wire [7:0] A_int, B_int;
    register_8 regA(.D(op1), .En(btn0), .rst(rst1), .clk(clk), .Q(A_int));
    register_8 regB(.D(op2), .En(btn1), .rst(rst2), .clk(clk), .Q(B_int));
    
    wire [13:0] Y;
    multiplier_8 mult1(.A(A_int), .B(B_int), .overflow(overflow), .Y(Y));
    
    wire [15:0] bcd;
    bin2bcd conv1(.bin(Y), .bcd(bcd));
    
    wire [1:0] count;
    clk_dvdr divide(.clk(clk), .count(count));
    
    wire [3:0] bcd1;
    mux_4_1_7 mux1(.I0(bcd[3:0]), .I1(bcd[7:4]), .I2(bcd[11:8]), .I3(bcd[15:12]), .sel(count), .Y(bcd1));
    
    bin2seg display(.sw(bcd1), .sseg(cathode));
    
    always @(posedge clk) begin
        case(count)
            2'b00: anode <= ~4'b0001;
            2'b01: anode <= ~4'b0010;
            2'b10: anode <= ~4'b0100;
            2'b11: anode <= ~4'b1000;
        endcase
    end
    
    
endmodule
