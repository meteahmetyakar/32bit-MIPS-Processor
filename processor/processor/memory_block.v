module memory_block(
    output reg [31:0] read_data,
    input byteOperations,
    input [17:0] address,
    input [31:0] write_data,
    input memRead,
    input memWrite
);

	 // Memory array with 256 entries (0 to 255)
    reg [31:0] memory [255:0]; 
	 
	 // Initialize memory from file
    initial begin
        $readmemb("memory.mem", memory);
    end

    // Memory read and write operations
    always @* begin
        // Memory read operation
        if(memRead) begin
				read_data <= (byteOperations) ? {24'b0, memory[address][7:0]} : memory[address];
        end
       
        if(memWrite) begin
           // Memory write operation
            if(byteOperations) begin
                memory[address][7:0] = write_data[7:0];
            end else begin
                memory[address] = write_data;
            end
				// Write back to memory file
            $writememb("memory.mem", memory);
        end
    end
endmodule
