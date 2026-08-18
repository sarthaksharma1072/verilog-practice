`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2026 23:37:12
// Design Name: 
// Module Name: four_1_mux
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


module four_1_mux(
input [3:0] d,
input [1:0] s,
output y);
wire w1,w2,w3,w4,w5,w6;
not(w1,s[1]);
not(w2,s[0]);
and(w3,w1,w2,d[0]);
and(w4,w1,s[0],d[1]);
and(w5,s[1],d[2],w2);
and(w6,s[1],s[0],d[3]);
or(y,w3,w4,w5,w6);

endmodule
