`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 11:15:19 AM
// Design Name: 
// Module Name: d_latch
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


module d_latch(
    input D,    
    input G, 
    output Q,
    output Qn
    );
    
    wire not_D, S, R, Q_int, Qn_int;
    
    assign #1 not_D = ~D; 
    assign #1 S = ~(D & G);
    assign #1 R = ~(not_D & G);
    assign #1 Q_int = ~(S & Qn_int);
    assign #1 Qn_int = ~(R & Q_int);
    
    assign Q = Q_int;
    assign Qn = Qn_int;
    
endmodule
