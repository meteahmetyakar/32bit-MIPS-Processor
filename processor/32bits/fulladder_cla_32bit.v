module fulladder_cla_32bit (output [31:0] sum, output c_out, input [31:0] a, input [31:0] b, input c_in);

	
	wire [7:0] c;
	wire [31:0] p;
	wire [31:0] g;
	
	wire [3:0] and_result_0;
	wire [7:0] and_result_1;
	wire [11:0] and_result_2;
	wire [15:0] and_result_3;
	wire [19:0] and_result_4;
	wire [23:0] and_result_5;
	wire [27:0] and_result_6;
	wire [31:0] and_result_7;

	
	// level2 carry lookahead adder working the same as shown in the fulladder_cla_4bit.v module
	
	fulladder_cla_4bit fa0(sum[3:0], p[3:0], g[3:0], a[3:0], b[3:0], c_in);
	
	and and0 (and_result_0[0], p[3], p[2], p[1], p[0], c_in);
	and and1 (and_result_0[1], p[3], p[2], p[1], g[0]);
	and and2 (and_result_0[2], p[3], p[2], g[1]);
	and and3 (and_result_0[3], p[3], g[2]);
	
	or or0(c[0], g[3], and_result_0[0], and_result_0[1], and_result_0[2], and_result_0[3]);
	
	
	fulladder_cla_4bit fa1(sum[7:4], p[7:4], g[7:4], a[7:4], b[7:4], c[0]);
	
	
	and and4 (and_result_1[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
	and and5 (and_result_1[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7]);
	and and6 (and_result_1[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7]);
	and and7 (and_result_1[3], g[2], p[3], p[4], p[5], p[6], p[7]);
	and and8 (and_result_1[4], g[3], p[4], p[5], p[6], p[7]);
	and and9 (and_result_1[5], g[4], p[5], p[6], p[7]);
	and and10 (and_result_1[6], g[5], p[6], p[7]);
	and and11 (and_result_1[7], g[6], p[7]);
	
	
	or or1(c[1], g[7], and_result_1[0], and_result_1[1], and_result_1[2], and_result_1[3], and_result_1[4], and_result_1[5], and_result_1[6], and_result_1[7]);
	
	
	fulladder_cla_4bit fa2(sum[11:8], p[11:8], g[11:8], a[11:8], b[11:8], c[1]);
	
	and and12 (and_result_2[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and13 (and_result_2[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and14 (and_result_2[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and15 (and_result_2[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and16 (and_result_2[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and17 (and_result_2[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and18 (and_result_2[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11]);
	and and19 (and_result_2[7], g[6], p[7], p[8], p[9], p[10], p[11]);
	and and20 (and_result_2[8], g[7], p[8], p[9], p[10], p[11]);
	and and21 (and_result_2[9], g[8], p[9], p[10], p[11]);
	and and22 (and_result_2[10], g[9], p[10], p[11]);
	and and23 (and_result_2[11], g[10], p[11]);

	
	or or2(c[2], g[11], and_result_2[0], and_result_2[1], and_result_2[2], and_result_2[3], and_result_2[4], and_result_2[5], and_result_2[6], and_result_2[7], and_result_2[8], and_result_2[9], and_result_2[10], and_result_2[11]);
	
	
	fulladder_cla_4bit fa3(sum[15:12], p[15:12], g[15:12], a[15:12], b[15:12], c[2]);
	
	and and24 (and_result_3[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and25 (and_result_3[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and26 (and_result_3[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and27 (and_result_3[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and28 (and_result_3[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and29 (and_result_3[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and30 (and_result_3[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and31 (and_result_3[7], g[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and32 (and_result_3[8], g[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and33 (and_result_3[9], g[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and34 (and_result_3[10], g[9], p[10], p[11], p[12], p[13], p[14], p[15]);
	and and35 (and_result_3[11], g[10], p[11], p[12], p[13], p[14], p[15]);
	and and36 (and_result_3[12], g[11], p[12], p[13], p[14], p[15]);
	and and37 (and_result_3[13], g[12], p[13], p[14], p[15]);
	and and38 (and_result_3[14], g[13], p[14], p[15]);
	and and39 (and_result_3[15], g[14], p[15]);
	
	
	or or3(c[3], g[15], and_result_3[0], and_result_3[1], and_result_3[2], and_result_3[3], and_result_3[4], and_result_3[5], and_result_3[6], and_result_3[7], and_result_3[8], and_result_3[9], and_result_3[10], and_result_3[11], and_result_3[12], and_result_3[13], and_result_3[14], and_result_3[15]);
	
	
	
	fulladder_cla_4bit fa4(sum[19:16], p[19:16], g[19:16], a[19:16], b[19:16], c[3]);
	
	and and40 (and_result_4[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and41 (and_result_4[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and42 (and_result_4[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and43 (and_result_4[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and44 (and_result_4[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and45 (and_result_4[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and46 (and_result_4[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and47 (and_result_4[7], g[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and48 (and_result_4[8], g[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and49 (and_result_4[9], g[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and50 (and_result_4[10], g[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and51 (and_result_4[11], g[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and52 (and_result_4[12], g[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and53 (and_result_4[13], g[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and54 (and_result_4[14], g[13], p[14], p[15], p[16], p[17], p[18], p[19]);
	and and55 (and_result_4[15], g[14], p[15], p[16], p[17], p[18], p[19]);
	and and56 (and_result_4[16], g[15], p[16], p[17], p[18], p[19]);
	and and57 (and_result_4[17], g[16], p[17], p[18], p[19]);
	and and58 (and_result_4[18], g[17], p[18], p[19]);
	and and59 (and_result_4[19], g[18], p[19]);
	
	
	or or4(c[4], g[19], and_result_4[0], and_result_4[1], and_result_4[2], and_result_4[3], and_result_4[4], and_result_4[5], and_result_4[6], and_result_4[7], and_result_4[8], and_result_4[9], and_result_4[10], and_result_4[11], and_result_4[12], and_result_4[13], and_result_4[14], and_result_4[15], and_result_4[16], and_result_4[17], and_result_4[18], and_result_4[19]);
	
	
	
	fulladder_cla_4bit fa5(sum[23:20], p[23:20], g[23:20], a[23:20], b[23:20], c[4]);
	
	and and60 (and_result_5[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and61 (and_result_5[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and62 (and_result_5[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and63 (and_result_5[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and64 (and_result_5[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and65 (and_result_5[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and66 (and_result_5[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and67 (and_result_5[7], g[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and68 (and_result_5[8], g[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and69 (and_result_5[9], g[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and70 (and_result_5[10], g[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and71 (and_result_5[11], g[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and72 (and_result_5[12], g[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and73 (and_result_5[13], g[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and74 (and_result_5[14], g[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and75 (and_result_5[15], g[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and76 (and_result_5[16], g[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and77 (and_result_5[17], g[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and78 (and_result_5[18], g[17], p[18], p[19], p[20], p[21], p[22], p[23]);
	and and79 (and_result_5[19], g[18], p[19], p[20], p[21], p[22], p[23]);
	and and80 (and_result_5[20], g[19], p[20], p[21], p[22], p[23]);
	and and81 (and_result_5[21], g[20], p[21], p[22], p[23]);
	and and82 (and_result_5[22], g[21], p[22], p[23]);
	and and83 (and_result_5[23], g[22], p[23]);
	
	or or5(c[5], g[23], and_result_5[0], and_result_5[1], and_result_5[2], and_result_5[3], and_result_5[4], and_result_5[5], and_result_5[6], and_result_5[7], and_result_5[8], and_result_5[9], and_result_5[10], and_result_5[11], and_result_5[12], and_result_5[13], and_result_5[14], and_result_5[15], and_result_5[16], and_result_5[17], and_result_5[18], and_result_5[19], and_result_5[20], and_result_5[21], and_result_5[22], and_result_5[23]);
	
	
	
	fulladder_cla_4bit fa6(sum[27:24], p[27:24], g[27:24], a[27:24], b[27:24], c[5]);
	
	and and84 (and_result_6[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and85 (and_result_6[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and86 (and_result_6[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and87 (and_result_6[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and88 (and_result_6[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and89 (and_result_6[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and90 (and_result_6[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and91 (and_result_6[7], g[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and92 (and_result_6[8], g[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and93 (and_result_6[9], g[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and94 (and_result_6[10], g[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and95 (and_result_6[11], g[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and96 (and_result_6[12], g[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and97 (and_result_6[13], g[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and98 (and_result_6[14], g[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and99 (and_result_6[15], g[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and100 (and_result_6[16], g[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and101 (and_result_6[17], g[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and102 (and_result_6[18], g[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and103 (and_result_6[19], g[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and104 (and_result_6[20], g[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and105 (and_result_6[21], g[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and106 (and_result_6[22], g[21], p[22], p[23], p[24], p[25], p[26], p[27]);
	and and107 (and_result_6[23], g[22], p[23], p[24], p[25], p[26], p[27]);
	and and108 (and_result_6[24], g[23], p[24], p[25], p[26], p[27]);
	and and109 (and_result_6[25], g[24], p[25], p[26], p[27]);
	and and110 (and_result_6[26], g[25], p[26], p[27]);
	and and111 (and_result_6[27], g[26], p[27]);
	
	
	
	
	or or6(c[6], g[27], and_result_6[0], and_result_6[1], and_result_6[2], and_result_6[3], and_result_6[4], and_result_6[5], and_result_6[6], and_result_6[7], and_result_6[8], and_result_6[9], and_result_6[10], and_result_6[11], and_result_6[12], and_result_6[13], and_result_6[14], and_result_6[15], and_result_6[16], and_result_6[17], and_result_6[18], and_result_6[19], and_result_6[20], and_result_6[21], and_result_6[22], and_result_6[23], and_result_6[24], and_result_6[25], and_result_6[26], and_result_6[27]);
	
	
	fulladder_cla_4bit fa7(sum[31:28], p[31:28], g[31:28], a[31:28], b[31:28], c[6]);
	
	and and112 (and_result_7[0], c_in, p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and113 (and_result_7[1], g[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and114 (and_result_7[2], g[1], p[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and115 (and_result_7[3], g[2], p[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and116 (and_result_7[4], g[3], p[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and117 (and_result_7[5], g[4], p[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and118 (and_result_7[6], g[5], p[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and119 (and_result_7[7], g[6], p[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and120 (and_result_7[8], g[7], p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and121 (and_result_7[9], g[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and122 (and_result_7[10], g[9], p[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and123 (and_result_7[11], g[10], p[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and124 (and_result_7[12], g[11], p[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and125 (and_result_7[13], g[12], p[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and126 (and_result_7[14], g[13], p[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and127 (and_result_7[15], g[14], p[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and128 (and_result_7[16], g[15], p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and129 (and_result_7[17], g[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and130 (and_result_7[18], g[17], p[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and131 (and_result_7[19], g[18], p[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and132 (and_result_7[20], g[19], p[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and133 (and_result_7[21], g[20], p[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and134 (and_result_7[22], g[21], p[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and135 (and_result_7[23], g[22], p[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and136 (and_result_7[24], g[23], p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and137 (and_result_7[25], g[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and138 (and_result_7[26], g[25], p[26], p[27], p[28], p[29], p[30], p[31]);
	and and139 (and_result_7[27], g[26], p[27], p[28], p[29], p[30], p[31]);
	and and140 (and_result_7[28], g[27], p[28], p[29], p[30], p[31]);
	and and141 (and_result_7[29], g[28], p[29], p[30], p[31]);
	and and142 (and_result_7[30], g[29], p[30], p[31]);
	and and143 (and_result_7[31], g[30], p[31]);
	
	
	
	or or7(c_out, g[31], and_result_7[0], and_result_7[1], and_result_7[2], and_result_7[3], and_result_7[4], and_result_7[5], and_result_7[6], and_result_7[7], and_result_7[8], and_result_7[9], and_result_7[10], and_result_7[11], and_result_7[12], and_result_7[13], and_result_7[14], and_result_7[15], and_result_7[16], and_result_7[17], and_result_7[18], and_result_7[19], and_result_7[20], and_result_7[21], and_result_7[22], and_result_7[23], and_result_7[24], and_result_7[25], and_result_7[26], and_result_7[27], and_result_7[28], and_result_7[29], and_result_7[30], and_result_7[31]);
	

endmodule