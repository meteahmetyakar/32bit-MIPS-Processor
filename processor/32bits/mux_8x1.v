module mux_8x1(output [31:0] result, input [31:0] src_and, input [31:0] src_or, input [31:0] src_xor, input [31:0] src_nor, input [31:0] src_lessthan, input [31:0] src_add, input [31:0] src_sub, input [31:0] src_mod, input [2:0] opcode);
	
	wire [31:0] mux1_res;
	wire [31:0] mux2_res;
	wire [31:0] mux3_res;
	wire [31:0] mux4_res;
	wire [31:0] mux5_res;
	wire [31:0] mux6_res;
	wire [31:0] mux7_res;
	
	
	mux_2x1 mux1 (mux1_res, src_and, src_lessthan, opcode[2]);
	mux_2x1 mux2 (mux2_res, src_or, src_add, opcode[2]);
	mux_2x1 mux3 (mux3_res, src_xor, src_sub, opcode[2]);
	mux_2x1 mux4 (mux4_res, src_nor, src_mod, opcode[2]);
	
	mux_2x1 mux5 (mux5_res, mux1_res, mux3_res, opcode[1]);
	mux_2x1 mux6 (mux6_res, mux2_res, mux4_res, opcode[1]);
	
	mux_2x1 mux7 (result, mux5_res, mux6_res, opcode[0]);
	
	
	/*
	
		// The first four muxes give the result according to opcode[2],
		// which ensures that only functions with the same value as opcode[2] are passed in the next check.
		// For example, if opcode = 101, the result of the first four muxes will be values starting with 1,
		// that is, 100, 101, 110, 111.
		//	In the next control, filtering is done according to opcode[1], then opcode[0] and the result is obtained.
		
	
	 000 ---
		     |mux1 ---- 
	 100 ---			  |
						   ----
							    |mux5 ----
							----			 |
	 001 ---			  |	  			 |
		     |mux2 ----				 |
	 101 									 ---
											    |mux7 ---- result
											 ---
	 010 ---								 |
		     |mux3 ----				 |
	 110 ---			  |				 |
						   ----			 |
							    |mux6 ----
							----
	 011 ---			  |	  
		     |mux4 ----
	 111 ---			 
	 
	
	*/
	


endmodule