module nor_1bit (output result, input a, b);

	wire out_or1;
	//not or
	or or1(out_or1, a,b);
	not(result, out_or1);
	
endmodule