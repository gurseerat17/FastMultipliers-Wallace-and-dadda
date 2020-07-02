`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 15.10.2019 20:04:20
// Design Name:
// Module Name: w_testbench
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



module w_testbench;

    reg [31:0] A;
    reg [31:0] B;

    wire [63:0] P;

 //   COMBINE64_dadda c( A,B,P);
    //  COMBINE64 c( A,B,P);
     Cl32 c( A,B,P);
    initial begin
        A=1;
        B=1;
    end
    
    always begin
     #30 A=A+1;
     #50 B=B+1;
     $display(A,B,P);
    end

endmodule

//`timescale 1ns / 1ps
////`include "T32bit.v"
//// `include "classical.v"

//module tb();
//integer k = 0;
//reg[31:0] a,b;
//wire[63:0] sum;
////wire[63:0] sum2;
////wire [63:0] sum3;
////classical b1(a,b,sum);
////T32bit b2 (a,b,sum2);
////Arraymultiplier b3 (a,b,sum3);
////COMBINE64 c(a,b,sum);
//initial begin
////$dumpfile("rty.vcd");
////$dumpvars(0,tb);
//a = 0;
//b = 0;
//for(k=0;k<100;k=k+1) begin
//# 2  a = a + 1;
//     b = b + 2;
//# 2  $display("%d %d  %d",a,b,sum);
//$finish;
//end

//end
//endmodule
