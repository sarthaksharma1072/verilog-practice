`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2026 12:10:38
// Design Name: 
// Module Name: bcd_adder
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
module bcd_adder(
    input  [3:0] a_bcd,
    input  [3:0] b_bcd,
    input        cin_bcd,
    output [3:0] sum_bcd,
    output       cout_bcd
);

    wire [3:0] sum_temp;
    wire       cout_temp;
    wire       a_1, a_2;
    wire [3:0] b_rca_2;

    Ripple_carryadder rca1(
        .a_rca(a_bcd),
        .b_rca(b_bcd),
        .cin_rca(cin_bcd),
        .sum_rca(sum_temp),
        .cout_rca(cout_temp)
    );

    
    and a1(a_1, sum_temp[3], sum_temp[2]);
    and a2(a_2, sum_temp[3], sum_temp[1]);
    or  o2(cout_bcd, a_1, a_2, cout_temp);

   
    assign b_rca_2[0] = 1'b0;
    assign b_rca_2[1] = cout_bcd;
    assign b_rca_2[2] = cout_bcd;
    assign b_rca_2[3] = 1'b0;

    
    Ripple_carryadder rca2(
        .a_rca(sum_temp),
        .b_rca(b_rca_2),
        .cin_rca(1'b0),
        .sum_rca(sum_bcd),
        .cout_rca()
    );
endmodule
