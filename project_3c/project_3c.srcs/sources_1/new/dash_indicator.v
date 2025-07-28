`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 01:02:49 AM
// Design Name: 
// Module Name: dash_indicator
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
// The SI light is illuminated when: the oil level is too low and the coolant level is not too low; the coolant level is too low;
// the oil temperature is too high and the coolant level is too low; the temperature is too high and the oil temperature is too high.

//The CE light is illuminated when: coolant is low and engine temperature is high; 
//coolant is low and oil temperature is high; temperature and oil temperature are too high; 
//exhaust products are out of specification; oil level is too low; the coolant level is not too low and the engine temperature is too high; 
//the engine temperature is not too high and the coolant level is too low and the oil temperature is too high and the oil level is not too low.
//////////////////////////////////////////////////////////////////////////////////


module dash_indicator(
    input c, // 1 if coolant is too low
    input t, // 1 if engine temperature is too high
    input ol, // 1 if oil level is too low
    input e, // 1 if exhaust products are out of specifications
    input ot, // 1 if engine oil is overheated
    output ce, // urgent check engine light
    output si // service indicated light
    );
    
    assign si = (ol&~c)|c|(ot&c)|(t&ot);
    assign ce = (c&t)|(c&ot)|(t&ot)|e|ol|(~c&t)|(~t&c&ot&~ol);
    
endmodule
