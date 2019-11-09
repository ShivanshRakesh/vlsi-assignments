module tb;
	// Inputs
	reg a;
	reg b;
	reg c_in;
	reg clk;
	reg rst;

	// Outputs
	wire c_out;
	wire s_out;

	// Instantiate the Unit Under Test (UUT)
	seradd uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.c_out(c_out), 
		.s_out(s_out), 
		.clk(clk), 
		.rst(rst)
	);

	always #5 clk = ~clk;
        
   initial begin
       clk = 1;
       rst = 0;
       a = 0;
       b = 0;
       c_in = 0;
       rst = 1;  
       #20;
       rst = 0;
		 
       //1101 + 1001
       a = 1; b = 1;  #10;
       a = 0; b = 0;  #10;
       a = 1; b = 0;  #10;
       a = 1; b = 1;  #10;
       rst = 1;
       #10;
       rst = 0;
		 
       //1000 + 0001
	   a = 0; b = 1;  #10;
       a = 0; b = 0;  #10;
       a = 0; b = 0;  #10;
       a = 1; b = 0;  #10;
       rst = 1;
       #10;
		 
	   //1011 + 1001 (with input carry 1)
	   a = 1; b = 1; c_in = 1; #10;
       a = 1; b = 0; c_in = 0; #10;
       a = 0; b = 0; c_in = 0; #10;
       a = 1; b = 1; c_in = 0; #10;
       rst = 1;
       #10;
    end
     
endmodule

