module xor_32bit(output [31:0] result, input [31:0] a, input [31:0] b);

	xor_1bit xor0 (result[0], a[0], b[0]);
	xor_1bit xor1 (result[1], a[1], b[1]);
	xor_1bit xor2 (result[2], a[2], b[2]);
	xor_1bit xor3 (result[3], a[3], b[3]);
	xor_1bit xor4 (result[4], a[4], b[4]);
	xor_1bit xor5 (result[5], a[5], b[5]);
	xor_1bit xor6 (result[6], a[6], b[6]);
	xor_1bit xor7 (result[7], a[7], b[7]);
	xor_1bit xor8 (result[8], a[8], b[8]);
	xor_1bit xor9 (result[9], a[9], b[9]);
	xor_1bit xor10 (result[10], a[10], b[10]);
	xor_1bit xor11 (result[11], a[11], b[11]);
	xor_1bit xor12 (result[12], a[12], b[12]);
	xor_1bit xor13 (result[13], a[13], b[13]);
	xor_1bit xor14 (result[14], a[14], b[14]);
	xor_1bit xor15 (result[15], a[15], b[15]);
	xor_1bit xor16 (result[16], a[16], b[16]);
	xor_1bit xor17 (result[17], a[17], b[17]);
	xor_1bit xor18 (result[18], a[18], b[18]);
	xor_1bit xor19 (result[19], a[19], b[19]);
	xor_1bit xor20 (result[20], a[20], b[20]);
	xor_1bit xor21 (result[21], a[21], b[21]);
	xor_1bit xor22 (result[22], a[22], b[22]);
	xor_1bit xor23 (result[23], a[23], b[23]);
	xor_1bit xor24 (result[24], a[24], b[24]);
	xor_1bit xor25 (result[25], a[25], b[25]);
	xor_1bit xor26 (result[26], a[26], b[26]);
	xor_1bit xor27 (result[27], a[27], b[27]);
	xor_1bit xor28 (result[28], a[28], b[28]);
	xor_1bit xor29 (result[29], a[29], b[29]);
	xor_1bit xor30 (result[30], a[30], b[30]);
	xor_1bit xor31 (result[31], a[31], b[31]);


endmodule