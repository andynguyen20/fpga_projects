`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2025 09:40:26 AM
// Design Name: 
// Module Name: adder_subtractor1
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


module adder_subtractor1(
    input [7:0] sw,
    input sub,
    input [1:0] btn,
    input rst1,
    input rst2,
    input clk,
    output [6:0] cathode,
    output reg [3:0] anode,
    output overflow,
    output neg
    );
    
    reg [7:0] op1, op2;

    always @ (posedge(clk)) begin
        if (btn[0]) op1 <= sw;
        if (btn[1]) op2 <= sw;
    end
    
    wire [7:0] A_int, B_int;
    register_8 regA(.D(op1), .rst(rst1), .En(btn[0]), .clk(clk), .Q(A_int));
    register_8 regB(.D(op2), .rst(rst2), .En(btn[1]), .clk(clk), .Q(B_int));
    
    wire [7:0] B_int1;
    inverter_8 inv1(.in(B_int), .inv(sub), .out(B_int1));
    
    wire [7:0] S;
    wire Cout;
    adder_8 A1(.A(A_int), .B(B_int1), .Cin(sub), .S(S), .overflow(overflow), .Cout(Cout), .neg(neg));
    
    
    wire count;
    clk_dvdr cntr(.clk(clk), .count(count));
    
    wire [15:0] bcd1;
    bin2bcd conv1(.bin({{8'b0000000000}, S}), .bcd(bcd1));

    wire [6:0] sseg1, sseg2;
    bin2seg conv2(.sw(bcd1[3:0]), .sseg(sseg1));
    bin2seg conv3(.sw(bcd1[7:4]), .sseg(sseg2));
    
    mux_2_1_7 mux1(.I0(sseg1), .I1(sseg2), .sel(count), .Y(cathode));
    
    always @(posedge clk) begin
        if (count == 0) 
            anode <= ~4'b0001;
        else
            anode <= ~4'b0010;
     end
    
endmodule
