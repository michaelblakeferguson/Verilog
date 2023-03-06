module half_adder (Cout, Sum, A, B);

   input logic A,B;
   output logic Sum,Cout;

   xor xor1(Sum,A,B);
   and and1(Cout,A,B);

endmodule


module full_adder (Cout, Sum, A, B, Cin);

   input logic A,B,Cin;
   output logic Sum,Cout;
   wire S1,C1,C2;

   half_adder ha1(C1,S1,A,B);
   half_adder ha2(C2,Sum,S1,Cin);
   or or1(Cout,C1,C2);

endmodule

module full_adder_inv (Cout, Sum, A, B, Cin);

   input logic A,B,Cin;
   output logic Sum,Cout;
   wire S1,C1,C2;

   half_adder ha1(C1,S1,A,B);
   half_adder ha2(C2,Sum,S1,Cin);
   nor nor1(Cout,C1,C2);

endmodule

module CSAM (Z, X, Y);

        input logic [7:0] Y;
        input logic [15:0] X;
        output logic [23:0] Z;


        logic [15:0] P0;
        logic [15:0] carry1;
        logic [15:0] sum1;
        logic [15:0] P1;
        logic [15:0] carry2;
        logic [15:0] sum2;
        logic [15:0] P2;
        logic [15:0] carry3; 
        logic [15:0] sum3;
        logic [15:0] P3;
        logic [15:0] carry4;
        logic [15:0] sum4;
        logic [15:0] P4;
        logic [15:0] carry5;
        logic [15:0] sum5;
        logic [15:0] P5;
        logic [15:0] carry6;
        logic [15:0] sum6;
        logic [15:0] P6;
        logic [15:0] carry7;
        logic [15:0] sum7;
        logic [15:0] P7;
        logic [15:0] carry8;
        logic [15:0] sum8;
        logic [22:0] carry9;


        // generate the partial products.
        nand pp1(P0[15], X[15], Y[0]);
        and pp2(P0[14], X[14], Y[0]);
        and pp3(P0[13], X[13], Y[0]);
        and pp4(P0[12], X[12], Y[0]);
        and pp5(P0[11], X[11], Y[0]);
        and pp6(P0[10], X[10], Y[0]);
        and pp7(P0[9], X[9], Y[0]);
        and pp8(P0[8], X[8], Y[0]);
        and pp9(P0[7], X[7], Y[0]);
        and pp10(P0[6], X[6], Y[0]);
        and pp11(P0[5], X[5], Y[0]);
        and pp12(P0[4], X[4], Y[0]);
        and pp13(P0[3], X[3], Y[0]);
        and pp14(P0[2], X[2], Y[0]);
        and pp15(P0[1], X[1], Y[0]);
        and pp16(P0[0], X[0], Y[0]);
		
        nand pp17(sum1[15], X[15], Y[1]);
        and pp18(P1[14], X[14], Y[1]);
        and pp19(P1[13], X[13], Y[1]);
        and pp20(P1[12], X[12], Y[1]);
        and pp21(P1[11], X[11], Y[1]);
        and pp22(P1[10], X[10], Y[1]);
        and pp23(P1[9], X[9], Y[1]);
        and pp24(P1[8], X[8], Y[1]);
        and pp25(P1[7], X[7], Y[1]);
        and pp26(P1[6], X[6], Y[1]);
        and pp27(P1[5], X[5], Y[1]);
        and pp28(P1[4], X[4], Y[1]);
        and pp29(P1[3], X[3], Y[1]);
        and pp30(P1[2], X[2], Y[1]);
        and pp31(P1[1], X[1], Y[1]);
        and pp32(P1[0], X[0], Y[1]);
		
        nand pp33(sum2[15], X[15], Y[2]);
        and pp34(P2[14], X[14], Y[2]);
        and pp35(P2[13], X[13], Y[2]);
        and pp36(P2[12], X[12], Y[2]);
        and pp37(P2[11], X[11], Y[2]);
        and pp38(P2[10], X[10], Y[2]);
        and pp39(P2[9], X[9], Y[2]);
        and pp40(P2[8], X[8], Y[2]);
        and pp41(P2[7], X[7], Y[2]);
        and pp42(P2[6], X[6], Y[2]);
        and pp43(P2[5], X[5], Y[2]);
        and pp44(P2[4], X[4], Y[2]);
        and pp45(P2[3], X[3], Y[2]);
        and pp46(P2[2], X[2], Y[2]);
        and pp47(P2[1], X[1], Y[2]);
        and pp48(P2[0], X[0], Y[2]);
		
        nand pp49(sum3[15], X[15], Y[3]);
        and pp50(P3[14], X[14], Y[3]);
        and pp51(P3[13], X[13], Y[3]);
        and pp52(P3[12], X[12], Y[3]);
        and pp53(P3[11], X[11], Y[3]);
        and pp54(P3[10], X[10], Y[3]);
        and pp55(P3[9], X[9], Y[3]);
        and pp56(P3[8], X[8], Y[3]);
        and pp57(P3[7], X[7], Y[3]);
        and pp58(P3[6], X[6], Y[3]);
        and pp59(P3[5], X[5], Y[3]);
        and pp60(P3[4], X[4], Y[3]);
        and pp61(P3[3], X[3], Y[3]);
        and pp62(P3[2], X[2], Y[3]);
        and pp63(P3[1], X[1], Y[3]);
        and pp64(P3[0], X[0], Y[3]);
		
        nand pp65(sum4[15], X[15], Y[4]);
        and pp66(P4[14], X[14], Y[4]);
        and pp67(P4[13], X[13], Y[4]);
        and pp68(P4[12], X[12], Y[4]);
        and pp69(P4[11], X[11], Y[4]);
        and pp70(P4[10], X[10], Y[4]);
        and pp71(P4[9], X[9], Y[4]);
        and pp72(P4[8], X[8], Y[4]);
        and pp73(P4[7], X[7], Y[4]);
        and pp74(P4[6], X[6], Y[4]);
        and pp75(P4[5], X[5], Y[4]);
        and pp76(P4[4], X[4], Y[4]);
        and pp77(P4[3], X[3], Y[4]);
        and pp78(P4[2], X[2], Y[4]);
        and pp79(P4[1], X[1], Y[4]);
        and pp80(P4[0], X[0], Y[4]);
		
        nand pp81(sum5[15], X[15], Y[5]);
        and pp82(P5[14], X[14], Y[5]);
        and pp83(P5[13], X[13], Y[5]);
        and pp84(P5[12], X[12], Y[5]);
        and pp85(P5[11], X[11], Y[5]);
        and pp86(P5[10], X[10], Y[5]);
        and pp87(P5[9], X[9], Y[5]);
        and pp88(P5[8], X[8], Y[5]);
        and pp89(P5[7], X[7], Y[5]);
        and pp90(P5[6], X[6], Y[5]);
        and pp91(P5[5], X[5], Y[5]);
        and pp92(P5[4], X[4], Y[5]);
        and pp93(P5[3], X[3], Y[5]);
        and pp94(P5[2], X[2], Y[5]);
        and pp95(P5[1], X[1], Y[5]);
        and pp96(P5[0], X[0], Y[5]);
		
        nand pp97(sum6[15], X[15], Y[6]);
        and pp98(P6[14], X[14], Y[6]);
        and pp99(P6[13], X[13], Y[6]);
        and pp100(P6[12], X[12], Y[6]);
        and pp101(P6[11], X[11], Y[6]);
        and pp102(P6[10], X[10], Y[6]);
        and pp103(P6[9], X[9], Y[6]);
        and pp104(P6[8], X[8], Y[6]);
        and pp105(P6[7], X[7], Y[6]);
        and pp106(P6[6], X[6], Y[6]);
        and pp107(P6[5], X[5], Y[6]);
        and pp108(P6[4], X[4], Y[6]);
        and pp109(P6[3], X[3], Y[6]);
        and pp110(P6[2], X[2], Y[6]);
        and pp111(P6[1], X[1], Y[6]);
        and pp112(P6[0], X[0], Y[6]);
		
        and pp113(sum7[15], X[15], Y[7]);
        nand pp114(P7[14], X[14], Y[7]);
        nand pp115(P7[13], X[13], Y[7]);
        nand pp116(P7[12], X[12], Y[7]);
        nand pp117(P7[11], X[11], Y[7]);
        nand pp118(P7[10], X[10], Y[7]);
        nand pp119(P7[9], X[9], Y[7]);
        nand pp120(P7[8], X[8], Y[7]);
        nand pp121(P7[7], X[7], Y[7]);
        nand pp122(P7[6], X[6], Y[7]);
        nand pp123(P7[5], X[5], Y[7]);
        nand pp124(P7[4], X[4], Y[7]);
        nand pp125(P7[3], X[3], Y[7]);
        nand pp126(P7[2], X[2], Y[7]);
        nand pp127(P7[1], X[1], Y[7]);
        nand pp128(P7[0], X[0], Y[7]);

        // Array Reduction
        full_adder  HA1(carry1[14],sum1[14],P1[14],P0[15],1'b1);
        half_adder  HA2(carry1[13],sum1[13],P1[13],P0[14]);
        half_adder  HA3(carry1[12],sum1[12],P1[12],P0[13]);
        half_adder  HA4(carry1[11],sum1[11],P1[11],P0[12]);
        half_adder  HA5(carry1[10],sum1[10],P1[10],P0[11]);
        half_adder  HA6(carry1[9],sum1[9],P1[9],P0[10]);
        half_adder  HA7(carry1[8],sum1[8],P1[8],P0[9]);
        half_adder  HA8(carry1[7],sum1[7],P1[7],P0[8]);
        full_adder  HA9(carry1[6],sum1[6],P1[6],P0[7],1'b1);
        half_adder  HA10(carry1[5],sum1[5],P1[5],P0[6]);
        half_adder  HA11(carry1[4],sum1[4],P1[4],P0[5]);
        half_adder  HA12(carry1[3],sum1[3],P1[3],P0[4]);
        half_adder  HA13(carry1[2],sum1[2],P1[2],P0[3]);
        half_adder  HA14(carry1[1],sum1[1],P1[1],P0[2]);
        half_adder  HA15(carry1[0],sum1[0],P1[0],P0[1]);
		
        full_adder  FA1(carry2[14],sum2[14],P2[14],sum1[15],carry1[14]);
        full_adder  FA2(carry2[13],sum2[13],P2[13],sum1[14],carry1[13]);
        full_adder  FA3(carry2[12],sum2[12],P2[12],sum1[13],carry1[12]);
        full_adder  FA4(carry2[11],sum2[11],P2[11],sum1[12],carry1[11]);
        full_adder  FA5(carry2[10],sum2[10],P2[10],sum1[11],carry1[10]);
        full_adder  FA6(carry2[9],sum2[9],P2[9],sum1[10],carry1[9]);
        full_adder  FA7(carry2[8],sum2[8],P2[8],sum1[9],carry1[8]);
        full_adder  FA8(carry2[7],sum2[7],P2[7],sum1[8],carry1[7]);
        full_adder  FA9(carry2[6],sum2[6],P2[6],sum1[7],carry1[6]);
        full_adder  FA10(carry2[5],sum2[5],P2[5],sum1[6],carry1[5]);
        full_adder  FA11(carry2[4],sum2[4],P2[4],sum1[5],carry1[4]);
        full_adder  FA12(carry2[3],sum2[3],P2[3],sum1[4],carry1[3]);
        full_adder  FA13(carry2[2],sum2[2],P2[2],sum1[3],carry1[2]);
        full_adder  FA14(carry2[1],sum2[1],P2[1],sum1[2],carry1[1]);
        full_adder  FA15(carry2[0],sum2[0],P2[0],sum1[1],carry1[0]);
		
        full_adder  FA16(carry3[14],sum3[14],P3[14],sum2[15],carry2[14]);
        full_adder  FA17(carry3[13],sum3[13],P3[13],sum2[14],carry2[13]);
        full_adder  FA18(carry3[12],sum3[12],P3[12],sum2[13],carry2[12]);
        full_adder  FA19(carry3[11],sum3[11],P3[11],sum2[12],carry2[11]);
        full_adder  FA20(carry3[10],sum3[10],P3[10],sum2[11],carry2[10]);
        full_adder  FA21(carry3[9],sum3[9],P3[9],sum2[10],carry2[9]);
        full_adder  FA22(carry3[8],sum3[8],P3[8],sum2[9],carry2[8]);
        full_adder  FA23(carry3[7],sum3[7],P3[7],sum2[8],carry2[7]);
        full_adder  FA24(carry3[6],sum3[6],P3[6],sum2[7],carry2[6]);
        full_adder  FA25(carry3[5],sum3[5],P3[5],sum2[6],carry2[5]);
        full_adder  FA26(carry3[4],sum3[4],P3[4],sum2[5],carry2[4]);
        full_adder  FA27(carry3[3],sum3[3],P3[3],sum2[4],carry2[3]);
        full_adder  FA28(carry3[2],sum3[2],P3[2],sum2[3],carry2[2]);
        full_adder  FA29(carry3[1],sum3[1],P3[1],sum2[2],carry2[1]);
        full_adder  FA30(carry3[0],sum3[0],P3[0],sum2[1],carry2[0]);
		
        full_adder  FA31(carry4[14],sum4[14],P4[14],sum3[15],carry3[14]);
        full_adder  FA32(carry4[13],sum4[13],P4[13],sum3[14],carry3[13]);
        full_adder  FA33(carry4[12],sum4[12],P4[12],sum3[13],carry3[12]);
        full_adder  FA34(carry4[11],sum4[11],P4[11],sum3[12],carry3[11]);
        full_adder  FA35(carry4[10],sum4[10],P4[10],sum3[11],carry3[10]);
        full_adder  FA36(carry4[9],sum4[9],P4[9],sum3[10],carry3[9]);
        full_adder  FA37(carry4[8],sum4[8],P4[8],sum3[9],carry3[8]);
        full_adder  FA38(carry4[7],sum4[7],P4[7],sum3[8],carry3[7]);
        full_adder  FA39(carry4[6],sum4[6],P4[6],sum3[7],carry3[6]);
        full_adder  FA40(carry4[5],sum4[5],P4[5],sum3[6],carry3[5]);
        full_adder  FA41(carry4[4],sum4[4],P4[4],sum3[5],carry3[4]);
        full_adder  FA42(carry4[3],sum4[3],P4[3],sum3[4],carry3[3]);
        full_adder  FA43(carry4[2],sum4[2],P4[2],sum3[3],carry3[2]);
        full_adder  FA44(carry4[1],sum4[1],P4[1],sum3[2],carry3[1]);
        full_adder  FA45(carry4[0],sum4[0],P4[0],sum3[1],carry3[0]);
		
        full_adder  FA46(carry5[14],sum5[14],P5[14],sum4[15],carry4[14]);
        full_adder  FA47(carry5[13],sum5[13],P5[13],sum4[14],carry4[13]);
        full_adder  FA48(carry5[12],sum5[12],P5[12],sum4[13],carry4[12]);
        full_adder  FA49(carry5[11],sum5[11],P5[11],sum4[12],carry4[11]);
        full_adder  FA50(carry5[10],sum5[10],P5[10],sum4[11],carry4[10]);
        full_adder  FA51(carry5[9],sum5[9],P5[9],sum4[10],carry4[9]);
        full_adder  FA52(carry5[8],sum5[8],P5[8],sum4[9],carry4[8]);
        full_adder  FA53(carry5[7],sum5[7],P5[7],sum4[8],carry4[7]);
        full_adder  FA54(carry5[6],sum5[6],P5[6],sum4[7],carry4[6]);
        full_adder  FA55(carry5[5],sum5[5],P5[5],sum4[6],carry4[5]);
        full_adder  FA56(carry5[4],sum5[4],P5[4],sum4[5],carry4[4]);
        full_adder  FA57(carry5[3],sum5[3],P5[3],sum4[4],carry4[3]);
        full_adder  FA58(carry5[2],sum5[2],P5[2],sum4[3],carry4[2]);
        full_adder  FA59(carry5[1],sum5[1],P5[1],sum4[2],carry4[1]);
        full_adder  FA60(carry5[0],sum5[0],P5[0],sum4[1],carry4[0]);
		
        full_adder  FA61(carry6[14],sum6[14],P6[14],sum5[15],carry5[14]);
        full_adder  FA62(carry6[13],sum6[13],P6[13],sum5[14],carry5[13]);
        full_adder  FA63(carry6[12],sum6[12],P6[12],sum5[13],carry5[12]);
        full_adder  FA64(carry6[11],sum6[11],P6[11],sum5[12],carry5[11]);
        full_adder  FA65(carry6[10],sum6[10],P6[10],sum5[11],carry5[10]);
        full_adder  FA66(carry6[9],sum6[9],P6[9],sum5[10],carry5[9]);
        full_adder  FA67(carry6[8],sum6[8],P6[8],sum5[9],carry5[8]);
        full_adder  FA68(carry6[7],sum6[7],P6[7],sum5[8],carry5[7]);
        full_adder  FA69(carry6[6],sum6[6],P6[6],sum5[7],carry5[6]);
        full_adder  FA70(carry6[5],sum6[5],P6[5],sum5[6],carry5[5]);
        full_adder  FA71(carry6[4],sum6[4],P6[4],sum5[5],carry5[4]);
        full_adder  FA72(carry6[3],sum6[3],P6[3],sum5[4],carry5[3]);
        full_adder  FA73(carry6[2],sum6[2],P6[2],sum5[3],carry5[2]);
        full_adder  FA74(carry6[1],sum6[1],P6[1],sum5[2],carry5[1]);
        full_adder  FA75(carry6[0],sum6[0],P6[0],sum5[1],carry5[0]);
		
        full_adder  FA76(carry7[14],sum7[14],P7[14],sum6[15],carry6[14]);
        full_adder  FA77(carry7[13],sum7[13],P7[13],sum6[14],carry6[13]);
        full_adder  FA78(carry7[12],sum7[12],P7[12],sum6[13],carry6[12]);
        full_adder  FA79(carry7[11],sum7[11],P7[11],sum6[12],carry6[11]);
        full_adder  FA80(carry7[10],sum7[10],P7[10],sum6[11],carry6[10]);
        full_adder  FA81(carry7[9],sum7[9],P7[9],sum6[10],carry6[9]);
        full_adder  FA82(carry7[8],sum7[8],P7[8],sum6[9],carry6[8]);
        full_adder  FA83(carry7[7],sum7[7],P7[7],sum6[8],carry6[7]);
        full_adder  FA84(carry7[6],sum7[6],P7[6],sum6[7],carry6[6]);
        full_adder  FA85(carry7[5],sum7[5],P7[5],sum6[6],carry6[5]);
        full_adder  FA86(carry7[4],sum7[4],P7[4],sum6[5],carry6[4]);
        full_adder  FA87(carry7[3],sum7[3],P7[3],sum6[4],carry6[3]);
        full_adder  FA88(carry7[2],sum7[2],P7[2],sum6[3],carry6[2]);
        full_adder  FA89(carry7[1],sum7[1],P7[1],sum6[2],carry6[1]);
        full_adder  FA90(carry7[0],sum7[0],P7[0],sum6[1],carry6[0]);

        // Generate lower product bits YBITS
        buf b1(Z[0], P0[0]);
        assign Z[1] = sum1[0];
        assign Z[2] = sum2[0];
        assign Z[3] = sum3[0];
        assign Z[4] = sum4[0];
        assign Z[5] = sum5[0];
        assign Z[6] = sum6[0];
        assign Z[7] = sum7[0];

        // Final Carry Propagate Addition
        half_adder CPA1(carry8[0],Z[8],carry7[0],sum7[1]);
        full_adder CPA2(carry8[1],Z[9],carry7[1],carry8[0],sum7[2]);
        full_adder CPA3(carry8[2],Z[10],carry7[2],carry8[1],sum7[3]);
        full_adder CPA4(carry8[3],Z[11],carry7[3],carry8[2],sum7[4]);
        full_adder CPA5(carry8[4],Z[12],carry7[4],carry8[3],sum7[5]);
        full_adder CPA6(carry8[5],Z[13],carry7[5],carry8[4],sum7[6]);
        full_adder CPA7(carry8[6],Z[14],carry7[6],carry8[5],sum7[7]);
        full_adder CPA8(carry8[7],Z[15],carry7[7],carry8[6],sum7[8]);
        full_adder CPA9(carry8[8],Z[16],carry7[8],carry8[7],sum7[9]);
        full_adder CPA10(carry8[9],Z[17],carry7[9],carry8[8],sum7[10]);
        full_adder CPA11(carry8[10],Z[18],carry7[10],carry8[9],sum7[11]);
        full_adder CPA12(carry8[11],Z[19],carry7[11],carry8[10],sum7[12]);
        full_adder CPA13(carry8[12],Z[20],carry7[12],carry8[11],sum7[13]);
        full_adder CPA14(carry8[13],Z[21],carry7[13],carry8[12],sum7[14]);
        full_adder_inv CPA15(Z[23],Z[22],carry7[14],carry8[13],sum7[15]);

endmodule
