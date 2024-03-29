module register_block (
    output reg [31:0] read_data1,
    output reg [31:0] read_data2,
    input byteOperations,
    input [31:0] write_data,
    input [4:0] read_reg1,
    input [4:0] read_reg2,
    input [4:0] write_reg,
    input  regWrite
);

    reg [31:0] registers [31:0];

	 // Initialize registers from file
    initial begin
        $readmemb("registers.mem", registers);
    end


    always @(*) begin
		  // Write data to register file if regWrite is enabled
        if (regWrite) begin
				registers[write_reg] = (byteOperations) ? {24'b0, write_data[7:0]} : write_data;
            $writememb("registers.mem", registers);
        end

		  // Read data from specified registers
        read_data1 = registers[read_reg1];
        read_data2 = registers[read_reg2];
    end

endmodule
