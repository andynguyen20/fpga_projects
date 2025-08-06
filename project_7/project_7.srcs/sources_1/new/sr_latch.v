`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2025 09:02:18 AM
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input S, // Active low Set
    input R, // Active low Reset
    output Q,
    output Qn
    );

    wire Q_int, Qn_int;

    assign #1 Q_int = ~(S & Qn_int);
    assign #1 Qn_int = ~(R & Q_int);
    assign Q = Q_int;
    assign Qn = Qn_int;

endmodule
