module lessthan_32bit(output [31:0] result, input [31:0] a, input [31:0] b);

	wire [31:0] diff;

	//If substract result have overflow (c_out is 1) this mean is result is negative
	sub_32bit sub(diff, c_out, a, b, 0);
	
	//then reverse result thus we obtain 0 or 1 in result[0]
	or or1(result[0], 1'b0, diff[31]);
	and and2(result[1], 1'b0, 1'b0);
	and and3(result[2], 1'b0, 1'b0);
	and and4(result[3], 1'b0, 1'b0);
	and and5(result[4], 1'b0, 1'b0);
	and and6(result[5], 1'b0, 1'b0);
	and and7(result[6], 1'b0, 1'b0);
	and and8(result[7], 1'b0, 1'b0);
	and and9(result[8], 1'b0, 1'b0);
	and and10(result[9], 1'b0, 1'b0);
	and and11(result[10], 1'b0, 1'b0);
	and and12(result[11], 1'b0, 1'b0);
	and and13(result[12], 1'b0, 1'b0);
	and and14(result[13], 1'b0, 1'b0);
	and and15(result[14], 1'b0, 1'b0);
	and and16(result[15], 1'b0, 1'b0);
	and and17(result[16], 1'b0, 1'b0);
	and and18(result[17], 1'b0, 1'b0);
	and and19(result[18], 1'b0, 1'b0);
	and and20(result[19], 1'b0, 1'b0);
	and and21(result[20], 1'b0, 1'b0);
	and and22(result[21], 1'b0, 1'b0);
	and and23(result[22], 1'b0, 1'b0);
	and and24(result[23], 1'b0, 1'b0);
	and and25(result[24], 1'b0, 1'b0);
	and and26(result[25], 1'b0, 1'b0);
	and and27(result[26], 1'b0, 1'b0);
	and and28(result[27], 1'b0, 1'b0);
	and and29(result[28], 1'b0, 1'b0);
	and and30(result[29], 1'b0, 1'b0);
	and and31(result[30], 1'b0, 1'b0);
	and and32(result[31], 1'b0, 1'b0);
	
	
endmodule