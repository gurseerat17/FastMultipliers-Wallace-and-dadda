module Classic32( input  [31:0]A,
                          input  [31:0]B,
                          output [63:0]pro);

wire[31:0]p;
wire[31:0]sum;
wire[31:0]s;
wire[31:0]c; 

assign p=0;
assign sum =0;
genvar i;
generate for(i=0;i<=31;i=i+1)

    begin:gen
        assign s[0]=A[0] & B [i];
        assign s[1]=A[1] & B [i];
        assign s[2]=A[2] & B [i];
        assign s[3]=A[3] & B [i];
        assign s[4]=A[4] & B [i];
        assign s[5]=A[5] & B [i];
        assign s[6]=A[6] & B [i];
        assign s[7]=A[7] & B [i];
        assign s[8]=A[8] & B [i];
        assign s[9]=A[9] & B [i];
        assign s[10]=A[10] & B [i];
        assign s[11]=A[11] & B [i];
        assign s[12]=A[12] & B [i];
        assign s[13]=A[13] & B [i];
        assign s[14]=A[14] & B [i];
        assign s[15]=A[15] & B [i];
        assign s[16]=A[16] & B [i];
        assign s[17]=A[17] & B [i];
        assign s[18]=A[18] & B [i];
        assign s[19]=A[19] & B [i];
        assign s[20]=A[20] & B [i];
        assign s[21]=A[21] & B [i];
        assign s[22]=A[22] & B [i];
        assign s[23]=A[23] & B [i];
        assign s[24]=A[24] & B [i];
        assign s[25]=A[25] & B [i];
        assign s[26]=A[26] & B [i];
        assign s[27]=A[27] & B [i];
        assign s[28]=A[28] & B [i];
        assign s[29]=A[29] & B [i];
        assign s[30]=A[30] & B [i];
        assign s[31]=A[31] & B [i];
    
        adder32 a0 ( p ,s ,0 ,sum ,c[i]);
        assign p[31:0]=sum[31:0];
        
        wire [31:0] l;
       	assign sum[31]=0;
	    assign sum[30:0]=l[31:1];
	            
    end    


endgenerate

assign pro[63:32]=sum[31:0];
assign pro[31:0]=B[31:0];

endmodule