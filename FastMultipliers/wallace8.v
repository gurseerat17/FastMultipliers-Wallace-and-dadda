 module wallace8(     
        input [7:0]X  ,
        input [7:0]Y ,
        output [15:0]pro    );

    wire  [68:1] s;
    wire  [68:1] c;
    wire  p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77;
    
    
    
    assign  #1  p10 = X[1] & Y[0];
    assign  #1  p20 = X[2] & Y[0];
    assign  #1  p30 = X[3] & Y[0];
    assign  #1  p40 = X[4] & Y[0];
    assign  #1  p50 = X[5] & Y[0];
    assign  #1  p60 = X[6] & Y[0];
    assign  #1  p70 = X[7] & Y[0];
    assign  #1  p01 = X[0] & Y[1];
    assign  #1  p11 = X[1] & Y[1];
    assign  #1  p21 = X[2] & Y[1];
    assign  #1  p31 = X[3] & Y[1];
    assign  #1  p41 = X[4] & Y[1];
    assign  #1  p51 = X[5] & Y[1];
    assign  #1  p61 = X[6] & Y[1];
    assign  #1  p71 = X[7] & Y[1];
    assign  #1  p00 = X[0] & Y[0];
    assign  #1  p02 = X[0] & Y[2];
    assign  #1  p12 = X[1] & Y[2];
    assign  #1  p22 = X[2] & Y[2];
    assign  #1  p32 = X[3] & Y[2];
    assign  #1  p42 = X[4] & Y[2];
    assign  #1  p52 = X[5] & Y[2];
    assign  #1  p62 = X[6] & Y[2];
    assign  #1  p72 = X[7] & Y[2];
    assign  #1  p03 = X[0] & Y[3];
    assign  #1  p13 = X[1] & Y[3];
    assign  #1  p23 = X[2] & Y[3];
    assign  #1  p33 = X[3] & Y[3];
    assign  #1  p43 = X[4] & Y[3];
    assign  #1  p53 = X[5] & Y[3];
    assign  #1  p63 = X[6] & Y[3];
    assign  #1  p73 = X[7] & Y[3];
    assign  #1  p04 = X[0] & Y[4];
    assign  #1  p14 = X[1] & Y[4];
    assign  #1  p24 = X[2] & Y[4];
    assign  #1  p34 = X[3] & Y[4];
    assign  #1  p44 = X[4] & Y[4];
    assign  #1  p54 = X[5] & Y[4];
    assign  #1  p64 = X[6] & Y[4];
    assign  #1  p74 = X[7] & Y[4];
    assign  #1  p05 = X[0] & Y[5];
    assign  #1  p15 = X[1] & Y[5];
    assign  #1  p25 = X[2] & Y[5];
    assign  #1  p35 = X[3] & Y[5];
    assign  #1  p45 = X[4] & Y[5];
    assign  #1  p55 = X[5] & Y[5];
    assign  #1  p65 = X[6] & Y[5];
    assign  #1  p75 = X[7] & Y[5];
    assign  #1  p06 = X[0] & Y[6];
    assign  #1  p16 = X[1] & Y[6];
    assign  #1  p26 = X[2] & Y[6];
    assign  #1  p36 = X[3] & Y[6];
    assign  #1  p46 = X[4] & Y[6];
    assign  #1  p56 = X[5] & Y[6];
    assign  #1  p66 = X[6] & Y[6];
    assign  #1  p76 = X[7] & Y[6];
    assign  #1  p07 = X[0] & Y[7];
    assign  #1  p17 = X[1] & Y[7];
    assign  #1  p27 = X[2] & Y[7];
    assign  #1  p37 = X[3] & Y[7];
    assign  #1  p47 = X[4] & Y[7];
    assign  #1  p57 = X[5] & Y[7];
    assign  #1  p67 = X[6] & Y[7];
    assign  #1  p77 = X[7] & Y[7];




    
    // 1st level
    
    
     halfAdder  h1(p01,p10,s[1],c[1]);
     fullAdder  h2(p20,p02,p11,s[2],c[2]);
     fullAdder  h3(p30,p21,p12,s[3],c[3]);
     fullAdder  h4(p40,p31,p22,s[4],c[4]);
     halfAdder  h5(p13,p04,s[5],c[5]);
     fullAdder  h6(p50,p41,p32,s[6],c[6]);
     fullAdder  h7(p23,p14,p05,s[7],c[7]);
     fullAdder  h8(p60,p51,p42,s[8],c[8]);
     fullAdder  h9(p33,p24,p15,s[9],c[9]);
     fullAdder  h10(p70,p61,p52,s[10],c[10]);
     fullAdder  h11(p43,p34,p25,s[11],c[11]);
     halfAdder  h12(p16,p07,s[12],c[12]);
     fullAdder  h13(p71,p62,p53,s[13],c[13]);
     fullAdder  h14(p44,p35,p26,s[14],c[14]);
     fullAdder  h15(p72,p63,p54,s[15],c[15]);
     fullAdder  h16(p45,p36,p27,s[16],c[16]);
     fullAdder  h17(p73,p64,p55,s[17],c[17]);
     halfAdder  h18(p46,p37,s[18],c[18]);
     fullAdder  h19(p74,p65,p56,s[19],c[19]);
     fullAdder  h20(p75,p66,p57,s[20],c[20]);
     halfAdder  h21(p76,p67,s[21],c[21]);
    
    
    
    
    // 2nd level
    
    
    halfAdder  h68(s[02],c[01],s[22],c[22]);
    fullAdder  h22(p03,c[02],s[03],s[23],c[23]);
    fullAdder  h23(s[04],s[05],c[03],s[24],c[24]);
    fullAdder  h24(s[06],s[07],c[04],s[25],c[25]);
    fullAdder  h25(s[08],s[09],p06,s[26],c[26]);
    halfAdder  h26(c[06],c[07],s[27],c[27]);
    fullAdder  h27(s[10],s[11],s[12],s[28],c[28]);
    halfAdder  h28(c[08],c[09],s[29],c[29]);
    fullAdder  h29(s[13],s[14],p17,s[30],c[30]);
    fullAdder  h30(c[10],c[11],c[12],s[31],c[31]);
    fullAdder  h31(s[15],s[16],c[13],s[32],c[32]);
    fullAdder  h32(s[17],s[18],c[15],s[33],c[33]);
    fullAdder  h33(s[19],c[17],c[18],s[34],c[34]);
    halfAdder  h34(s[20],c[19],s[35],c[35]);
    halfAdder  h35(s[21],c[20],s[36],c[36]);


    //3rd level


    halfAdder  h36(s[23],c[22],s[37],c[37]);
    halfAdder  h37(c[23],s[24],s[38],c[38]);
    fullAdder  h38(c[24],s[25],c[05],s[39],c[39]);
    fullAdder  h39(c[25],s[26],s[27],s[40],c[40]);
    fullAdder  h40(c[26],c[27],s[28],s[41],c[41]);
    fullAdder  h41(c[28],c[29],s[30],s[42],c[42]);
    fullAdder  h42(c[30],c[31],s[32],s[43],c[43]);
    fullAdder  h43(c[32],c[16],s[33],s[44],c[44]);
    fullAdder  h44(c[33],p47,s[34],s[45],c[45]);
    halfAdder  h45(s[35],c[34],s[46],c[46]);
    halfAdder  h46(c[35],s[36],s[47],c[47]);
    fullAdder  h47(p77,c[21],c[36],s[48],c[48]);


    //4th level


    halfAdder  h48(c[37],s[38],s[49],c[49]);
    fullAdder  h49(s[39],c[38],c[49],s[50],c[50]);
    fullAdder  h50(s[40],c[39],c[50],s[51],c[51]);
    fullAdder  h51(c[40],s[41],s[29],s[52],c[52]);
    fullAdder  h52(c[41],s[31],s[42],s[53],c[53]);
    fullAdder  h53(c[14],c[42],s[43],s[54],c[54]);
    fullAdder  h54(s[44],c[43],c[54],s[55],c[55]);
    fullAdder  h55(c[44],s[45],c[55],s[56],c[56]);
    fullAdder  h56(s[46],c[45],c[56],s[57],c[57]);
    fullAdder  h57(c[46],s[47],c[57],s[58],c[58]);
    fullAdder  h58(s[48],c[47],c[58],s[59],c[59]);


    //5th level


    halfAdder  h59(c[51],s[52],s[60],c[60]);
    fullAdder  h60(c[52],s[53],c[60],s[61],c[61]);
    fullAdder  h61(c[53],s[54],c[61],s[62],c[62]);
    halfAdder  h62(s[55],c[62],s[63],c[63]);
    halfAdder  h63(s[56],c[63],s[64],c[64]);
    halfAdder  h64(s[57],c[64],s[65],c[65]);
    halfAdder  h65(s[58],c[65],s[66],c[66]);
    halfAdder  h66(s[59],c[66],s[67],c[67]);
    fullAdder  h67(c[48],c[59],c[67],s[68],c[68]);



    assign pro[0] = p00;
    assign pro[1] = s[01];
    assign pro[2] = s[22];
    assign pro[3] = s[37];
    assign pro[4] = s[49];
    //always @(*)
    //$display("time=%0t\tINPUT VALUES:\tX=%b Y=%b\t output value=%b", $time, s[51],s[50],pro);
    assign pro[5] = s[50];
    assign pro[6] = s[51];
    assign pro[7] = s[60];
    assign pro[8] = s[61];
    assign pro[9] = s[62];
    assign pro[10]= s[63];
    assign pro[11]= s[64];
    assign pro[12]= s[65];
    assign pro[13]= s[66];
    assign pro[14]= s[67];
    assign pro[15]= s[68]|c[68];


endmodule
