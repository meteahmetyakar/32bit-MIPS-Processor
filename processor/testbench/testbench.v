module testbench();


	 reg clock;
	 
   
    mips m(clock);

  
    always begin
        #100 clock = ~clock;
    end

   
    initial begin
        clock =0;
    end

endmodule
