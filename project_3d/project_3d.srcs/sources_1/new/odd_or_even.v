`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:35:12 AM
// Design Name: 
// Module Name: odd_or_even
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


module odd_or_even(
    input [7:0] sw,
    output [1:0] led
    );
    
    assign led[0] = ~(sw[7]^sw[6]^sw[5]^sw[4]^sw[3]^sw[2]^sw[1]^sw[0]);
    assign led[1] = sw[7]^sw[6]^sw[5]^sw[4]^sw[3]^sw[2]^sw[1]^sw[0];
    
endmodule
