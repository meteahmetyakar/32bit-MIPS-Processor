module control_unit(
	output regDst,
	output branch,
	output memRead,
	output memWrite,
	output [2:0] ALUop,
	output ALUsrc,
	output regWrite,
	output jump,
	output byteOperations,
	output move,
	input [5:0] opcode
);

	wire [5:0] opNot;
	wire r_type, i_type, j_type, lw, sw, bne, beq;
	wire andi, ori, slti, addi, subi, lb, sb, j, jal;
	
	not not1(opNot[0],opcode[0]);
	not not2(opNot[1],opcode[1]);
	not not3(opNot[2],opcode[2]);
	not not4(opNot[3],opcode[3]);
	not not5(opNot[4],opcode[4]);
	not not6(opNot[5],opcode[5]);
	
	// Checking each opcode for instruction type
	and isAddi(addi, opNot[5], opNot[4], opNot[3], opNot[2], opcode[1], opNot[0]); 	// 000010
	and isAndi(andi, opNot[5], opNot[4], opNot[3], opcode[2], opNot[1], opNot[0]); 	// 000100
	and isRri(ori, opNot[5], opNot[4], opNot[3], opcode[2], opNot[1], opcode[0]); 	// 000101
	and isBeq(beq, opcode[5], opNot[4], opNot[3], opNot[2], opcode[1], opcode[0]); 	// 100011
	and isBne(bne, opcode[5], opNot[4], opNot[3], opcode[2], opcode[1], opcode[0]); 	// 100111
	and isSlti(slti, opNot[5], opNot[4], opNot[3], opcode[2], opcode[1], opcode[0]); // 000111
	and isLw(lw, opNot[5], opNot[4], opcode[3], opNot[2], opNot[1], opNot[0]); 		// 001000
	and isSw(sw, opNot[5], opcode[4], opNot[3], opNot[2], opNot[1], opNot[0]); 		// 010000
	and isLb(lb,opNot[5], opNot[4], opcode[3], opNot[2], opNot[1], opcode[0]); 		// 001001
	and isSb(sb,opNot[5], opcode[4], opNot[3], opNot[2], opNot[1], opcode[0]); 		// 010001
	and isR_type(r_type,opNot[0],opNot[1],opNot[2],opNot[3],opNot[4],opNot[5]);		// 000000
	and isSubi(subi,opNot[5], opNot[4], opNot[3], opNot[2], opcode[1], opcode[0]); 	// 000011
	and isJ(j,opcode[5], opcode[4], opcode[3], opNot[2], opNot[1], opNot[0]); 			// 111000
	and isJal(jal,opcode[5], opcode[4], opcode[3], opNot[2], opNot[1], opcode[0]); 	// 111001
	and isMove(move,opcode[5], opNot[4], opNot[3], opNot[2], opNot[1], opNot[0]); 	// 100000
	
	
	or isByteOperation(byteOperations,sb,lb);
   and regDestination(regDst,r_type,1'b1);
	or isBranch(branch,bne,beq);
	or isMemRead(memRead,lw,lb);
	or isRegWrite(regWrite,r_type,lw,andi,ori,slti,addi,subi,lb,move);
	or isJump(jump,j,jal);
	or isMemWrite(memWrite,sw,sb);
	nor isALUsrc(ALUsrc,r_type,bne,beq);
	

	
	nor bit2Aluop(ALUop[2],andi,ori);
	or bit1Aluop(ALUop[1],subi,beq,bne,r_type);
	nor bit0Aluop(ALUop[0],andi,slti,subi,beq,bne);

endmodule
