module fulladder_cla_4bit (output [3:0] sum, output [3:0] p, output [3:0] g, input [3:0] a, input [3:0] b, c_in);


	wire [3:0] c;
	
	wire and_result_0;
	wire [1:0] and_result_1;
	wire [2:0] and_result_2;
	wire [3:0] and_result_3;
	
	
	//level1 carry lookahead adder
	
	fulladder_cla_1bit fa0 (sum[0], p[0], g[0], a[0], b[0], c_in);

	//g0 + p0c0
	and and_result_00 (and_result_0, c_in, p[0]);
	or  or_result_00  (c[0], g[0], and_result_0);

	fulladder_cla_1bit fa1(sum[1], p[1], g[1], a[1], b[1], c[0]);
  
	//g1 + g0p1 + p1p0c0
	and and_result_10 (and_result_1[0], c_in, p[0], p[1]);
	and and_result_11 (and_result_1[1], g[0], p[1]);
	or  or_result_10  (c[1], g[1], and_result_1[0], and_result_1[1]);
  
  
  
	fulladder_cla_1bit fa2(sum[2], p[2], g[2], a[2], b[2], c[1]);
  
   //g2 + p2g1 + p2p1g0 + p2p1p0c0
	and and_result_20 (and_result_2[0], c_in, p[0], p[1], p[2]);
	and and_result_21 (and_result_2[1], g[0], p[1], p[2]);
	and and_result_22 (and_result_2[2], g[1], p[2]);
	or  or_result_20  (c[2], g[2], and_result_2[0], and_result_2[1], and_result_2[2]);
	
	fulladder_cla_1bit fa3(sum[3], p[3], g[3], a[3], b[3], c[2]);
  

endmodule