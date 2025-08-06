`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 10:42:09 AM
// Design Name: 
// Module Name: nor_sr_latch
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


module nor_sr_latch(
    input S,
    input R, 
    output Q,
    output Qn
    );
    
    wire Q_int, Qn_int;
    
    assign #1 Q_int = ~(R | Qn_int);
    assign #1 Qn_int = ~(S | Q_int);
    
    assign Q = Q_int;
    assign Qn = Qn_int;
    
endmodule
