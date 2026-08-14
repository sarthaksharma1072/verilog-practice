`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2026 18:04:53
// Design Name: 
// Module Name: Ripple_carryadder
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


module Ripple_carryadder(
input [3:0] a_rca,
input [3:0] b_rca,
input cin_rca ,
output [3:0] sum_rca,
output cout_rca);
wire w0,w1,w2;
full_adder FA0(.a(a_rca[0]),.b(b_rca[0]) ,.cin(cin_rca),.sum(sum_rca[0]),.carry(w0));
full_adder FA1(.a(a_rca[1]),.b(b_rca[1]) ,.cin(w0),.sum(sum_rca[1]),.carry(w1));
full_adder FA2(.a(a_rca[2]),.b(b_rca[2]) ,.cin(w1),.sum(sum_rca[2]),.carry(w2));
full_adder FA3(.a(a_rca[3]),.b(b_rca[3]) ,.cin(w2),.sum(sum_rca[3]),.carry(cout_rca));
 
endmodule
