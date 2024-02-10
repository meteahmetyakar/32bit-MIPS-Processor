module sub_32bit(output [31:0] sub, output c_out, input [31:0] a, input [31:0] b, input c_in);

	reg c_out2;
	wire [31:0] res;
	
	wire [31:0] b_not;
	
	//The two's complement of the number b is taken and added to the number a, thus subtraction is performed.

	not_32bit not32(b_not, b);
	fulladder_cla_32bit fa1(sub, c_out, a, b_not, 1);
	

endmodule