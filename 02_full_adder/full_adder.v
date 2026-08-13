`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 01:07:18
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a,b,cin, output sum,carry);
wire w1,w2,w3;
xor x1(sum,a,b,cin);
and a1(w1,a,b);
and a2(w2,b,cin);
and a3(w3,a,cin);
or o1(carry,w1,w2,w3);


endmodule
