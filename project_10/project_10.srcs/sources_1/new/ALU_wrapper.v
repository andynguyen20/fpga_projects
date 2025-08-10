`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 06:59:25 PM
// Design Name: 
// Module Name: ALU_wrapper
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


module ALU_wrapper(
    input [7:0] sw,
    input btn0,
    input btn1,
    input rst1,
    input rst2,
    input clk,
    input [2:0] opcode,
    output [6:0] cathode,
    output reg [3:0] anode
    );
    
    
    reg [7:0] op1, op2;

    always @ (posedge(clk)) begin
        if (btn0) op1 <= sw;
        if (btn1) op2 <= sw;
    end
    
    wire [7:0] A_int, B_int;
    register_8 regA(.D(op1), .En(btn0), .rst(rst1), .clk(clk), .Q(A_int));
    register_8 regB(.D(op2), .En(btn1), .rst(rst2), .clk(clk), .Q(B_int));
    
    wire [7:0] Y;
    ALU arith1(.A(A_int), .B(B_int), .opcode(opcode), .Y(Y));
    
    wire count;
    clk_divider counter(.clk(clk), .count(count));
    
    wire [3:0] sseg_int;
    mux_2_1_4 mux1(.I0(Y[3:0]), .I1(Y[7:4]), .sel(count), .Y(sseg_int));
    
    bin2seg dec(.sw(sseg_int), .sseg(cathode));
    
    always @(posedge clk) begin
        if (count == 0) 
            anode <= ~4'b0001;
        else    
            anode <= ~4'b0010;
    end
    
    
endmodule
