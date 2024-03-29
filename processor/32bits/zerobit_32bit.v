module zerobit_32bit(
	output zero_bit,
	input [31:0] A
);


	// Instantiate 32 OR gates for each bit of the input signal
	or I0(or1,A[0],1'b0);
	or I1(or2,A[1],1'b0);
	or I2(or3,A[2],1'b0);
	or I3(or4,A[3],1'b0);
	or I4(or5,A[4],1'b0);
	or I5(or6,A[5],1'b0);
	or I6(or7,A[6],1'b0);
	or I7(or8,A[7],1'b0);
	or I8(or9,A[8],1'b0);
	or I9(or10,A[9],1'b0);
	or I10(or11,A[10],1'b0);
	or I11(or12,A[11],1'b0);
	or I12(or13,A[12],1'b0);
	or I13(or14,A[13],1'b0);
	or I14(or15,A[14],1'b0);
	or I15(or16,A[15],1'b0);
	or I16(or17,A[16],1'b0);
	or I17(or18,A[17],1'b0);
	or I18(or19,A[18],1'b0);
	or I19(or20,A[19],1'b0);
	or I20(or21,A[20],1'b0);
	or I21(or22,A[21],1'b0);
	or I22(or23,A[22],1'b0);
	or I23(or24,A[23],1'b0);
	or I24(or25,A[24],1'b0);
	or I25(or26,A[25],1'b0);
	or I26(or27,A[26],1'b0);
	or II27(or28,A[27],1'b0);
	or II8(or29,A[28],1'b0);
	or I29(or30,A[29],1'b0);
	or I30(or31,A[30],1'b0);
	or I31(or32,A[31],1'b0);
	
	// Instantiate a NOR gate to combine the outputs of all OR gates
	nor i(zero_bit,or1,or2,or3,or4,or5,or6,or7,or8,or9,or10,or11,or12,or13,or14,or15,or16,or17,or18,or19,or20,or21,or22,or23,or24,or25,or26,or27,or28,or29,or30,or31,or32);
	

endmodule
