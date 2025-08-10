`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2025 04:07:44 PM
// Design Name: 
// Module Name: serial_adder
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


module serial_adder(
    input A,
    input B,
    input clk,
    input rst,
    output F,
    output Cout
    );
    
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;
    localparam S3 = 2'b11;
    
    reg [1:0] pState, nState;
    
    always @(pState, A, B) begin
        case(pState)
            S0: begin
                if(A == 1'b0 && B == 1'b0)
                    nState = S0;
                else if (A == 1'b1 && B == 1'b1)
                    nState = S2;
                else 
                    nState = S1;
                end
            S1: begin
                if(A == 1'b0 && B == 1'b0)
                    nState = S0;
                else if (A == 1'b1 && B == 1'b1)
                    nState = S2;
                else
                    nState = S1;
                end
            S2: begin
                if (A == 1'b0 && B == 1'b0)
                    nState = S1;
                else if (A == 1'b1 && B == 1'b1) 
                    nState = S3;
                else 
                    nState = S2;
                end
            S3: begin
                if (A == 1'b0 && B == 1'b0) 
                    nState = S1;
                else if (A == 1'b1 && B == 1'b1)
                    nState = S3;
                else
                    nState = S2;
                end
            default:
                nState = S0;
        endcase
    end
                    
    
    always @(posedge(clk), posedge(rst)) begin
        if (rst == 1'b1) 
            pState <= S0;
        else
            pState <= nState;
    end
                
    
    assign F = (pState == S1 || pState == S3) ? 1'b1 : 1'b0;
    assign Cout = (pState == S2 || pState == S3) ? 1'b1 : 1'b0;
    
endmodule

