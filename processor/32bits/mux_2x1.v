module mux_2x1 (output [31:0] result, input [31:0] source1, input [31:0] source2, input sel);


	wire [31:0] source_1;
	wire [31:0] source_2;
	
	wire [31:0] select;
	wire [31:0] select_not;
	
	
	// fill select with sel if sel is 0 then select fully 0, if sel is 1 then select fully 1
	
	and_1bit and1 (select[0], sel, sel);
	and_1bit and2 (select[1], sel, sel);
	and_1bit and3 (select[2], sel, sel);
	and_1bit and5 (select[3], sel, sel);
	and_1bit and6 (select[4], sel, sel);
	and_1bit and7 (select[5], sel, sel);
	and_1bit and8 (select[6], sel, sel);
	and_1bit and9 (select[7], sel, sel);
	and_1bit and10 (select[8], sel, sel);
	and_1bit and11 (select[9], sel, sel);
	and_1bit and12 (select[10], sel, sel);
	and_1bit and13 (select[11], sel, sel);
	and_1bit and14 (select[12], sel, sel);
	and_1bit and15 (select[13], sel, sel);
	and_1bit and16 (select[14], sel, sel);
	and_1bit and17 (select[15], sel, sel);
	and_1bit and18 (select[16], sel, sel);
	and_1bit and19 (select[17], sel, sel);
	and_1bit and20 (select[18], sel, sel);
	and_1bit and21 (select[19], sel, sel);
	and_1bit and22 (select[20], sel, sel);
	and_1bit and23 (select[21], sel, sel);
	and_1bit and24 (select[22], sel, sel);
	and_1bit and25 (select[23], sel, sel);
	and_1bit and26 (select[24], sel, sel);
	and_1bit and27 (select[25], sel, sel);
	and_1bit and28 (select[26], sel, sel);
	and_1bit and29 (select[27], sel, sel);
	and_1bit and30 (select[28], sel, sel);
	and_1bit and31 (select[29], sel, sel);
	and_1bit and32 (select[30], sel, sel);
	and_1bit and33 (select[31], sel, sel);
	
	// assign source2 to source_2 if select is 1. if select is 0, source_2 fully 0
	and_32bit assign_and1(source_2, source2, select);
	
	
	// fill select_not with sel_not. if sel_not is 0 then select_not fully 0, if sel_not is 1 then select_not fully 1
	not not1 (sel_not, sel);	
	and_1bit and_1 (select_not[0], sel_not, sel_not);
	and_1bit and_2 (select_not[1], sel_not, sel_not);
	and_1bit and_3 (select_not[2], sel_not, sel_not);
	and_1bit and_5 (select_not[3], sel_not, sel_not);
	and_1bit and_6 (select_not[4], sel_not, sel_not);
	and_1bit and_7 (select_not[5], sel_not, sel_not);
	and_1bit and_8 (select_not[6], sel_not, sel_not);
	and_1bit and_9 (select_not[7], sel_not, sel_not);
	and_1bit and_10 (select_not[8], sel_not, sel_not);
	and_1bit and_11 (select_not[9], sel_not, sel_not);
	and_1bit and_12 (select_not[10], sel_not, sel_not);
	and_1bit and_13 (select_not[11], sel_not, sel_not);
	and_1bit and_14 (select_not[12], sel_not, sel_not);
	and_1bit and_15 (select_not[13], sel_not, sel_not);
	and_1bit and_16 (select_not[14], sel_not, sel_not);
	and_1bit and_17 (select_not[15], sel_not, sel_not);
	and_1bit and_18 (select_not[16], sel_not, sel_not);
	and_1bit and_19 (select_not[17], sel_not, sel_not);
	and_1bit and_20 (select_not[18], sel_not, sel_not);
	and_1bit and_21 (select_not[19], sel_not, sel_not);
	and_1bit and_22 (select_not[20], sel_not, sel_not);
	and_1bit and_23 (select_not[21], sel_not, sel_not);
	and_1bit and_24 (select_not[22], sel_not, sel_not);
	and_1bit and_25 (select_not[23], sel_not, sel_not);
	and_1bit and_26 (select_not[24], sel_not, sel_not);
	and_1bit and_27 (select_not[25], sel_not, sel_not);
	and_1bit and_28 (select_not[26], sel_not, sel_not);
	and_1bit and_29 (select_not[27], sel_not, sel_not);
	and_1bit and_30 (select_not[28], sel_not, sel_not);
	and_1bit and_31 (select_not[29], sel_not, sel_not);
	and_1bit and_32 (select_not[30], sel_not, sel_not);
	and_1bit and_33 (select_not[31], sel_not, sel_not);
	
	// assign source1 to source_1 if select is 1. if select_not is 0, source_2 fully 0
	and_32bit assign_and12(source_1, source1, select_not);
	
	
	
	// Here, the result whose content is not 0 is printed.
	or_1bit or__0 (result[0], source_1[0], source_2[0]);
	or_1bit or__1 (result[1], source_1[1], source_2[1]);
	or_1bit or__2 (result[2], source_1[2], source_2[2]);
	or_1bit or__3 (result[3], source_1[3], source_2[3]);
	or_1bit or__4 (result[4], source_1[4], source_2[4]);
	or_1bit or__5 (result[5], source_1[5], source_2[5]);
	or_1bit or__6 (result[6], source_1[6], source_2[6]);
	or_1bit or__7 (result[7], source_1[7], source_2[7]);
	or_1bit or__8 (result[8], source_1[8], source_2[8]);
	or_1bit or__9 (result[9], source_1[9], source_2[9]);
	or_1bit or__10 (result[10], source_1[10], source_2[10]);
	or_1bit or__11 (result[11], source_1[11], source_2[11]);
	or_1bit or__12 (result[12], source_1[12], source_2[12]);
	or_1bit or__13 (result[13], source_1[13], source_2[13]);
	or_1bit or__14 (result[14], source_1[14], source_2[14]);
	or_1bit or__15 (result[15], source_1[15], source_2[15]);
	or_1bit or__16 (result[16], source_1[16], source_2[16]);
	or_1bit or__17 (result[17], source_1[17], source_2[17]);
	or_1bit or__18 (result[18], source_1[18], source_2[18]);
	or_1bit or__19 (result[19], source_1[19], source_2[19]);
	or_1bit or__20 (result[20], source_1[20], source_2[20]);
	or_1bit or__21 (result[21], source_1[21], source_2[21]);
	or_1bit or__22 (result[22], source_1[22], source_2[22]);
	or_1bit or__23 (result[23], source_1[23], source_2[23]);
	or_1bit or__24 (result[24], source_1[24], source_2[24]);
	or_1bit or__25 (result[25], source_1[25], source_2[25]);
	or_1bit or__26 (result[26], source_1[26], source_2[26]);
	or_1bit or__27 (result[27], source_1[27], source_2[27]);
	or_1bit or__28 (result[28], source_1[28], source_2[28]);
	or_1bit or__29 (result[29], source_1[29], source_2[29]);
	or_1bit or__30 (result[30], source_1[30], source_2[30]);
	or_1bit or__31 (result[31], source_1[31], source_2[31]);

	
	
endmodule
