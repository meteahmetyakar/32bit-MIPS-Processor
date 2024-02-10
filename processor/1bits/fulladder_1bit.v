module fulladder_1bit(output sum, c_out, input a, b, c_in);

	xor_1bit xor1 (out_xor1, a, b);
	xor_1bit xor2 (sum, out_xor1, c_in);
	and_1bit and1 (out_and1, out_xor1, c_in);
	and_1bit and2 (out_and2, a, b);
	or_1bit or1 (c_out, out_and1, out_and2);


endmodule