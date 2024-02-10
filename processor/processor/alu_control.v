module alu_control(
	output [2:0] alu_ctr,
	input [5:0] function_code,
	input [2:0] ALUop
);
	wire addResult, subResult, andResult, orResult, sltResult, jrResult;
	wire addi, subi, andi, ori, lw, sw, lb, sb, slti, beq, bne;
	wire [5:0] functionNOT;
	wire [2:0] ALUOP_NOT;
	wire andOp,subOp,orOp;
	not not1(functionNOT[0],function_code[0]);
	not not2(functionNOT[1],function_code[1]);
	not not3(functionNOT[2],function_code[2]);
	not not4(functionNOT[3],function_code[3]);
	not not5(functionNOT[4],function_code[4]);
	not not6(functionNOT[5],function_code[5]);
	not not7(ALUOP_NOT[0],ALUop[0]);
	not not8(ALUOP_NOT[1],ALUop[1]);
	not not9(ALUOP_NOT[2],ALUop[2]);
		
	// Checking each opcode for instruction type
	and isOr(orResult,functionNOT[5], functionNOT[4], functionNOT[3], function_code[2], functionNOT[1], function_code[0]); 		// 000101
	and isSlt(sltResult,functionNOT[5], functionNOT[4], functionNOT[3], function_code[2], function_code[1], function_code[0]); // 000111
	and isJr(jrResult,functionNOT[5], functionNOT[4], function_code[3], functionNOT[2], functionNOT[1], functionNOT[0]); 		// 001000
	and isAdd(addResult, functionNOT[5], functionNOT[4], functionNOT[3], functionNOT[2], function_code[1], functionNOT[0]); 	// 000010 // 000 	 
	and isSub(subResult,functionNOT[5], functionNOT[4], functionNOT[3], functionNOT[2], function_code[1], function_code[0]); 	// 000011
	and isAnd(andResult,functionNOT[5], functionNOT[4], functionNOT[3], function_code[2], functionNOT[1], functionNOT[0]); 		// 000100
	and isAndi(andi,ALUOP_NOT[2], ALUOP_NOT[1], ALUOP_NOT[0]); 	// 001
	and isOri(ori,ALUOP_NOT[2], ALUOP_NOT[1], ALUop[0]); 			// 100
	and isSlti(slti,ALUop[2], ALUOP_NOT[1], ALUop[0]); 			// 101
	
	
	and isAddi(addi,ALUop[2], ALUOP_NOT[1], ALUop[0]);
	and isLb(lb,addi,1'b1);
	and isSb(sb,addi,1'b1);
	and isLw(lw,addi,1'b1);
	and isSw(sw,addi,1'b1);
	
	//  110
	and isSubi(subi,ALUop[2], ALUop[1], ALUOP_NOT[0]);
	and isBne(bne,subi,1'b1);
	and isBeq(beq,subi,1'b1);
	
	
	or andOperatation(andOp,andResult,andi,orResult,ori);
	nor aluctrbit2(alu_ctr[2],andOp,1'b0);
	
	or subOperatation(subOp,subResult,subi,beq,bne);
	and aluctrbit1(alu_ctr[1],subOp,1'b1);
	
	or orOperatation(orOp,ori,addi,lb,sb,lw,sw,orResult,addResult);
	and aluctrbit0(alu_ctr[0],orOp,1'b1);
	
endmodule
