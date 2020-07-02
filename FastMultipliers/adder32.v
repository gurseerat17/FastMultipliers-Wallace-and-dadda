`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 03:27:07
// Design Name: 
// Module Name: adder32
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


module adder32( a ,b ,cin,sum ,carry );

output [31:0] sum ;
output carry ;
input cin;
input [31:0] a ;
input [31:0] b ;

wire c;

adder16 a0 (a[15:0],b[15:0],0,sum[15:0],c);
adder16 a1 (a[31:16],b[31:16],c,sum[31:16],carry);

endmodule 
