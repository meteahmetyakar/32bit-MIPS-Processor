module alu(
    output [31:0] alu_result, // Output: Result of the ALU operation
    output zero_bit, // Output: Indicates if the result is zero
    
    input [31:0] alu_src1, // Input: Operand 1 for the ALU
    input [31:0] alu_src2, // Input: Operand 2 for the ALU
    
    input [2:0] alu_ctr // Input: ALU control signal
);

    wire [31:0] addResult, subResult, orResult, sltResult, andResult; // Intermediate results
    wire c_out; // Carry-out signal
    
    
	 // perform all operations with alu_src1 and alu_src2
    and_32bit and32(andResult, alu_src1, alu_src2);
    or_32bit or32(orResult, alu_src1, alu_src2);
    sub_32bit sub32(subResult, c_out, alu_src1, alu_src2, 1'b1);
    lessthan_32bit lt32(sltResult, alu_src1, alu_src2);
    fulladder_cla_32bit add32(addResult, c_out, alu_src1, alu_src2, 1'b0);
    zerobit_32bit zerobit32(zero_bit, subResult);
	 mux_8x1 mux(alu_result, andResult, orResult, 32'b0, 32'b0, sltResult, addResult, subResult, 32'b0, alu_ctr);

endmodule
