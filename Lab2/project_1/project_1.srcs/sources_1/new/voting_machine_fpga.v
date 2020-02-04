`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 10:42:07 AM
// Design Name: 
// Module Name: voting_machine_fpga
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


module voting_machine_fpga(
    input wire A,
    input wire B,
    input wire C,
    input wire clk100MHz,
    input wire rst,
    output wire [3:0] LEDSEL,
    output wire [7:0] LEDOUT
    );
    wire DONT_USE;
    wire clk_5KHz;
    wire [3:0] i;
    wire [7:0] vote;
    wire [7:0] vcc;
    // Port mapping the module
    voting_rule VTR(.w(A),.n(B),.o(C),.a(i[3]),.b(i[2]),.c(i[1]),.d(i[0]));
    clk_gen CLK(.clk100MHz(clk100MHz),.rst(rst),.clk_4sec(DONT_USE),.clk_5KHz(clk_5KHz));
    led_mux LED(.LED0(vote),.LED1(vcc),.LED2(vcc),.LED3(vcc),.LEDSEL(LEDSEL),.LEDOUT(LEDOUT));
    bcd_to_7seg BCD(.BCD(i),.s(vote));
    
endmodule
