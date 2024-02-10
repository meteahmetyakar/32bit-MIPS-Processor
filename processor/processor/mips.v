module mips(
    input clock
);

	 // Program Counter (PC) initialized to zero
    reg [31:0] pc = 32'b0;
	 
	 // Control signals from the instruction
    wire [2:0] ALUop;
    wire [4:0] write_reg;
    wire [31:0] read_data;
    wire [31:0] writeData1;
    wire [31:0] ToJUMP;
	 wire zero_bit;
    wire [31:0] alu_src2;
    wire [31:0] shifted_address;
    wire [31:0] addedPC;
    wire [31:0] addedPC1;
    wire pcSelect;
    wire [31:0] jumpADDRESS;
    wire [31:0] read_data1, read_data2;
    wire [31:0] write_data;
    wire [31:0] sign_ext_imm;
    wire [2:0] alu_ctr;
    wire [31:0] alu_result;

	 // Instruction and PC related wires
    wire [31:0] instruction;
    wire [31:0] pc_temp;
    wire regDst, branch, memRead, memWrite, ALUsrc, regWrite, jump, byteOperations, move;
    

    /* INSTRUCTION BLOCK */
    instruction_block ib(instruction, pc);
	 
	 /* CONTROL UNIT */
    control_unit cu(regDst, branch, memRead, memWrite, ALUop, ALUsrc, regWrite, jump, byteOperations, move, instruction[31:26]);
						  
    /* REGISTER BLOCK */
    // 2x1 mux to choose the register destination                        
    assign writeRegister = (regDst) ? instruction[15:11] : instruction[20:16];
    register_block rb(read_data1, read_data2, byteOperations, write_data, instruction[25:21], instruction[20:16], write_reg, regWrite);

	 /* SIGN EXTEND */					
    sign_extend se(sign_ext_imm, instruction[15:0]);

	 /* ALU CONTROL */
    alu_control au(alu_ctr, instruction[5:0], ALUop);

 
    /* ALU */
    assign alu_src2 = (ALUsrc) ? sign_ext_imm : read_data2;
    alu alu1(alu_result, zero_bit, read_data1, alu_src2, alu_ctr);

	 /* SHIFT LEFT 2 */
    shift_left_2 sl2(shifted_address, sign_ext_imm);

	 // Full adder for incrementing PC by 4
    fulladder_cla_32bit adder1(pc_temp, c_out, pc, 32'd4, 1'b0); 
	 // Full adder for branching address calculation
    fulladder_cla_32bit adder2(addedPC1, c_out, shifted_address, pc_temp, 1'b0);

    // Branch check stage
    and and1(pcSelect, zero_bit, branch);

    // Select next PC based on branch condition
    assign addedPC = (pcSelect) ? addedPC1 : pc_temp;

    // Form jump address
    assign jumpADDRESS = {4'b0, instruction[25:0], 2'b0};

    // Select final PC based on jump condition
    assign ToJUMP = (jump) ? jumpADDRESS : addedPC;

    // Update PC at positive clock edges
    always @ (posedge clock) begin
        pc <= ToJUMP;
    end

    /* MEMORY BLOCK */
    memory_block mb(read_data, byteOperations, alu_result[17:0], read_data2, memRead, memWrite);

    // for write back
    assign writeData1 = (memRead) ? read_data : alu_result;

    // for move
    assign write_data = (move) ? read_data1 : writeData1;    
endmodule
