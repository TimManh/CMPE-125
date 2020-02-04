`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 09:15:48 AM
// Design Name: 
// Module Name: AND_OR
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


module AND_OR( input [3:0] in, output out);
    wire [1:0] sig;
    AND a1(.in(in[3:2]),.out(sig[1]));
    AND a2(.in(in[1:0]),.out(sig[0]));
    OR O1(.in(sig),.out(out));
endmodule
