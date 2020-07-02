module fullAdder (input a ,b ,cin ,
output sum ,carry );

   
assign #2 sum = a ^ b ^ cin;  
assign #2 carry = (a&b) | (b&cin) | (cin&a);

endmodule
