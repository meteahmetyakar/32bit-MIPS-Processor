module instruction_block(
    output reg [31:0] instruction,
    input [31:0] pc
);
	 // Define a memory to store instructions
    reg [31:0] instructionMemory [31:0];


	 // Initialize memory with contents from "instructions.mem" file
    initial begin
	 
        $readmemb("instructions.mem", instructionMemory);
    end

    // Fetch instruction according to the program counter
    always @(pc[11:2]) begin
	 
        instruction <= instructionMemory[pc[11:2]]; 
    end
endmodule
