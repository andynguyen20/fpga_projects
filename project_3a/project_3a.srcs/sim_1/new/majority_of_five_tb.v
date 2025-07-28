`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2025 08:07:33 PM
// Design Name: 
// Module Name: majority_of_five_tb
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


module majority_of_five_tb;

    //Inputs
    reg [4:0] sw;
    // Outputs
    wire led;
    
    // Instantiate the circuit under test
    majority_of_five cut(.sw(sw), .led(led));
    
   // Declare Loop index variable
   integer k;
   
   // Apply input stimulus
   initial 
   begin
    sw = 0;
    
    for (k = 0; k < 32; k=k+1) 
        #20 sw = k;
        
    #20 $finish;
    end

endmodule
