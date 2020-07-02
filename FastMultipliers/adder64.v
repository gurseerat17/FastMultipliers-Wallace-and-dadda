module adder64( a ,b ,cin,sum ,carry );

output [63:0] sum ;
output carry ;
input cin;
input [63:0] a ;
input [63:0] b ;

wire [2:0]c;

adder16 a0 (a[15:0],b[15:0],0,sum[15:0],c[0]);
adder16 a1 (a[31:16],b[31:16],c[0],sum[31:16],c[1]);
adder16 a2 (a[47:32],b[47:32],c[1],sum[47:32],c[2]);
adder16 a3 (a[63:48],b[63:48],c[2],sum[63:48],carry);

endmodule 
