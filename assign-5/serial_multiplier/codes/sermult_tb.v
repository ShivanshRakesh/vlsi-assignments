module serial_mult_tb;
	// Inputs
	reg clk;
	reg rst;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] prod;

	serial_multiplier uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.prod(prod)
	);

	always #5 clk = ~clk;
	initial begin
		clk=0;
		rst = 1;
		a =0;
		b= 0;
		#6;
		rst =0;
		#57;
		repeat(16) begin
		repeat(15) begin
		rst = 1;
		if(b==15)
		begin
		a = a+1;
		end
		b = b+4'b0001;
		#6;
		rst = 0;
		#54;
		end
		end
	end
      
endmodule

