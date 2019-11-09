module wallace_tb;
	reg [3:0] a;
	reg [3:0] b;
	wire [7:0] out;

	wallace uut (
		.a(a), 
		.b(b), 
		.out(out)
	);

	initial begin
		a = 0;
		b = 0;

		#100;
	end
   always #1 a[0] = ~a[0];
	always #2 a[1] = ~a[1];
	always #4 a[2] = ~a[2];
	always #8 a[3] = ~a[3];
   always #16 b[0] = ~b[0];
	always #32 b[1] = ~b[1];  
   always #64 b[2] = ~b[2];
	always #128 b[3] = ~b[3];
endmodule

