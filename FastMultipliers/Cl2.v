
module Cl2(
    input [1:0]a,
    input [1:0]b,
    output [3:0] pro
    );

wire p0,p1,p2,p3;

assign #1 p0= a[0]&b[0];
assign #1 p1= a[1]&b[0];
assign #1 p2= a[0]&b[1];
assign #1 p3= a[1]&b[1];

wire [3:0] b1;
wire [3:0] b2;
wire [3:0] b3;
assign b3[3]=0;
assign b3[2]=p3;
assign b3[1]=0;
assign b3[0]=p0;

assign b2[3]=0;
assign b2[2]=0;
assign b2[1]=p1;
assign b2[0]=0;

assign b1[3]=0;
assign b1[2]=0;
assign b1[1]=p2;
assign b1[0]=0;

wire carry;
wire carry2;
wire [3:0]sum;

adder4 a1(b3,b2,0,sum,carry);
adder4 a2 (b1,sum,carry,pro,carry2);

endmodule


