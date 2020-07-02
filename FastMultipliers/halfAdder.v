module halfAdder ( a ,b ,sum ,carry );

output sum ;
output carry ;

input a ;
input b ;
   
assign #1 sum = a ^ b ;  
assign #1 carry = a & b;

endmodule
