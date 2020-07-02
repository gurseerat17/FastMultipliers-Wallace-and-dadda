`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 15.10.2019 18:54:16
// Design Name:
// Module Name: combineWallace
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

module COMBINE64_dadda(

        input [31:0]A,
        input [31:0]B,
        output [63:0]Product

                );
                
wire [15:0] p0;
wire [15:0] p1;
wire [15:0] p2;
wire [15:0] p3;                
wire [15:0] p4;
wire [15:0] p5;
wire [15:0] p6;
wire [15:0] p7;                
wire [15:0] p8;
wire [15:0] p9;
wire [15:0] p10;
wire [15:0] p11;                
wire [15:0] p12;
wire [15:0] p13;
wire [15:0] p14;
wire [15:0] p15;

    dadda8 d_0( A[7:0] , B[7:0] ,p0);
    dadda8 d_1 ( A[15:8] , B[7:0],p1);
    dadda8 d_2 ( A[23:16] ,B[7:0],p2);
    dadda8 d_3 ( A[31:24] , B[7:0],p3);
    
    dadda8 d_4 ( A[7:0] , B[15:8],p4);
    dadda8 d_5 ( A[15:8] , B[15:8],p5);
    dadda8 d_6 ( A[23:16] , B[15:8],p6);
    dadda8 d_7 ( A[31:24] , B[15:8],p7);
    
    dadda8 d_8 ( A[7:0] , B[23:16],p8);
    dadda8 d_9 ( A[15:8] , B[23:16],p9);
    dadda8 d_10 ( A[23:16] , B[23:16],p10);
    dadda8 d_11 ( A[31:24] , B[23:16],p11);

    dadda8 d_12 ( A[7:0] , B[31:24],p12);
    dadda8 d_13 ( A[15:8] , B[31:24],p13);
    dadda8 d_14 ( A[23:16] , B[31:24],p14);
    dadda8 d_15 ( A[31:24] , B[31:24],p15);
    
    wire [63:0]w1;
    assign w1[63:40]=0;
    assign w1[39:24]=p3;
    assign w1[23:0]=0;
    
    wire [63:0]w3;
    assign w3[7:0]=0;
    assign w3[23:8]=p1;
    assign w3[39:24]=p6;
    assign w3[55:40]=p11;
    assign w3[63:56]=0;
    
    
      wire [63:0]w2;
        assign w2[15:0]=0;
        assign w2[31:16]=p2;
        assign w2[47:32]=p7;
        assign w2[63:48]=0;
      
     wire [63:0]w4;
    assign w4[15:0]=p0;
    assign w4[31:16]=p5;
    assign w4[47:32]=p10;
    assign w4[63:48]=p15;
    
    
    wire [63:0]w5;
    assign w5[63:40]=0;
    assign w5[39:24]=p12;
    assign w5[23:0]=0;
    
    wire [63:0]w7;
    assign w7[7:0]=0;
    assign w7[23:8]=p4;
    assign w7[39:24]=p9;
    assign w7[55:40]=p14;
    assign w7[63:56]=0;
    
    
      wire [63:0]w6;
        assign w6[15:0]=0;
        assign w6[31:16]=p8;
        assign w6[47:32]=p13;
        assign w6[63:48]=0;
    
wire [63:0] w12,w13,w14, w15,w16;    
wire carry[5:0];

    
    adder64 f1(w1,w2,1'b0,w12,carry[0]);        //try for better reduction
    adder64 f2(w12,w3,carry[0],w13,carry[1]);
    adder64 f3(w13,w4,carry[1],w14,carry[2]);
    adder64 f4(w14,w5,carry[2],w15,carry[3]);
    adder64 f5(w15,w6,carry[3],w16,carry[4]);
    adder64 f6(w16,w7,carry[4],Product,carry[5]);
    
    
    
endmodule     
