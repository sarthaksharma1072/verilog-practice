`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2026 12:31:13
// Design Name: 
// Module Name: bit2_comparator
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


module bit2_comparator
(
input[1:0] a,
input [1:0] b,
output a_gt_b,
output a_eq_b,
output a_lt_b);
wire [3:0] nt;
wire a_gt0,a_gt1,a_gt2,a_gt3;
wire a_eq0,a_eq1,a_eq2,a_eq3;
wire b_gt0,b_gt1,b_gt2,b_gt3;
not n0(nt[0],a[1]);
not n1(nt[1],a[0]);
not n2(nt[2],b[1]);
not n3(nt[3],b[0]);

and ad0(a_gt0,nt[2],a[1]);
and ad1(a_gt1,nt[2],a[0],nt[3]);
and ad2(a_gt2,a[1],a[0],nt[3]);

and ad3(a_eq0,nt[0],nt[1],nt[2],nt[3]);
and ad4(a_eq1,nt[0],a[0],nt[2],b[0]);
and ad5(a_eq2,a[1],a[0],b[1],b[0]);
and ad6(a_eq3,a[1],nt[1],b[1],nt[3]);

and ad7(b_gt0,nt[0],b[1]);
and ad8(b_gt1,nt[0],nt[1],b[0]);
and ad9(b_gt2,nt[1],b[1],b[0]);

or o0(a_gt_b,a_gt0,a_gt1,a_gt2);
or o1(a_eq_b,a_eq0,a_eq1,a_eq2,a_eq3);
or o2(a_lt_b,b_gt0,b_gt1,b_gt2);






endmodule
