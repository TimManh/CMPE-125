`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2020 09:25:57 AM
// Design Name: 
// Module Name: tb_AND_OR
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


module tb_AND_OR;
    reg[3:0] tb_in;
    wire tb_out;
    reg tb_out_expected;
    integer i;
    integer error_count =0;
    AND_OR DUT(.in(tb_in),.out(tb_out));
    initial
        begin
            for(i =0; i<2**4; i= i+1) begin
                tb_in =i;
                tb_out_expected = (tb_in[3] & tb_in[2]) | (tb_in[1] & tb_in[0]);
                #5;
                if(tb_out_expected != tb_out) begin
                    $display("Error, result incorrect %d != %d",tb_out_expected, tb_out);
                    error_count = error_count +1;
                end
            end
        $display ("Simulation Finished");    
        $finish;
    end
endmodule
