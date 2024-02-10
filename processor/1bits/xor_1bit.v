module xor_1bit(output result, input a, b);

	and_1bit and1(and1_output, a, b);
	and_1bit and2(and2_output, a, !and1_output);
	and_1bit and3(and3_output, !and1_output, b);
	and_1bit and4(and4_output, !and2_output, !and3_output);
	not not1(result, and4_output);


endmodule