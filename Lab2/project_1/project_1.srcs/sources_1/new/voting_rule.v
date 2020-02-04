`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 10:18:46 AM
// Design Name: 
// Module Name: voting_rule
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


module voting_rule(
    input w,
    input n,
    input o,
    output a,
    output b,
    output c,
    output d);
    assign a =  w&n&o;
    assign b = ~w&~n&o | ~w&n&o | w&~n&o | w&n&~o;
    assign c = ~w&n&o |~w&n&o | w&~n&~o |w&~n&o;
    assign d = ~w&n&~o | ~w&n&o | w&n&~o | w&n&o;
endmodule
