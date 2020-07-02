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

module Cl8(

        input [7:0]A,
        input [7:0]B,
        output [15:0]Product

                );
                
wire [3:0] p0;
wire [3:0] p1;
wire [3:0] p2;
wire [3:0] p3;                
wire [3:0] p4;
wire [3:0] p5;
wire [3:0] p6;
wire [3:0] p7;                
wire [3:0] p8;
wire [3:0] p9;
wire [3:0] p10;
wire [3:0] p11;                
wire [3:0] p12;
wire [3:0] p13;
wire [3:0] p14;
wire [3:0] p15;

    Cl2 wal_0( A[1:0] , B[1:0] ,p0);
    Cl2 wal_1 ( A[3:2] , B[1:0],p1);
    Cl2 wal_2 ( A[5:4] ,B[1:0],p2);
    Cl2 wal_3 ( A[7:6] , B[1:0],p3);
    
    Cl2 wal_4 ( A[1:0] , B[3:2],p4);
    Cl2 wal_5 ( A[3:2] , B[3:2],p5);
    Cl2 wal_6 ( A[5:4] , B[3:2],p6);
    Cl2 wal_7 ( A[7:6] , B[3:2],p7);
    
    Cl2 wal_8 ( A[1:0] , B[5:4],p8);
    Cl2 wal_9 ( A[3:2] , B[5:4],p9);
    Cl2 wal_10 ( A[5:4] , B[5:4],p10);
    Cl2 wal_11 ( A[7:6] , B[5:4],p11);

    Cl2 wal_12 ( A[1:0] , B[7:6],p12);
    Cl2 wal_13 ( A[3:2] , B[7:6],p13);
    Cl2 wal_14 ( A[5:4] , B[7:6],p14);
    Cl2 wal_15 ( A[7:6] , B[7:6],p15);
    
    wire [15:0]w1;
    assign w1[15:10]=0;
    assign w1[9:6]=p3;
    assign w1[5:0]=0;
    
    wire [15:0]w3;
    assign w3[1:0]=0;
    assign w3[5:2]=p1;
    assign w3[9:6]=p6;
    assign w3[13:10]=p11;
    assign w3[15:14]=0;
    
    
      wire [15:0]w2;
        assign w2[15:0]=0;
        assign w2[7:4]=p2;
        assign w2[11:8]=p7;
        assign w2[15:12]=0;
      
     wire [15:0]w4;
    assign w4[15:0]=p0;
    assign w4[7:4]=p5;
    assign w4[11:8]=p10;
    assign w4[15:12]=p15;
    
    
    wire [15:0]w5;
    assign w5[15:10]=0;
    assign w5[9:6]=p12;
    assign w5[5:0]=0;
    
    wire [15:0]w7;
    assign w7[1:0]=0;
    assign w7[5:2]=p4;
    assign w7[9:6]=p9;
    assign w7[13:10]=p14;
    assign w7[15:14]=0;
    
    
      wire [15:0]w6;
        assign w6[15:0]=0;
        assign w6[7:4]=p8;
        assign w6[11:8]=p13;
        assign w6[15:12]=0;
    
wire [15:0] w12,w13,w14, w15,w16;    
wire carry[5:0];

    
    adder16 f1(w1,w2,1'b0,w12,carry[0]);        
    adder16 f2(w12,w3,carry[0],w13,carry[1]);
    adder16 f3(w13,w4,carry[1],w14,carry[2]);
    adder16 f4(w14,w5,carry[2],w15,carry[3]);
    adder16 f5(w15,w6,carry[3],w16,carry[4]);
    adder16 f6(w16,w7,carry[4],Product,carry[5]);
    
    
    
endmodule     
