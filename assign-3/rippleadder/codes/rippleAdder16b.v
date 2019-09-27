module fullAdder(a, b, c, s_out, c_out);
	input a, b, c;
	inout s_out, c_out; 
	
	assign s_out = a ^ b ^ c;
	assign c_out = ((a | b) & c) | (a & b);
endmodule

module rippleAdder4b(a, b, c, s_out, c_out);
	input [3:0] a, b;
	input c;
	inout [3:0] s_out;
	inout c_out;
 	wire carry0, carry1, carry2;

 	fullAdder fa1(a[0], b[0], c, s_out[0], carry0);
   fullAdder fa2(a[1], b[1], carry0, s_out[1], carry1);
   fullAdder fa3(a[2], b[2], carry1, s_out[2], carry2);
   fullAdder fa4(a[3], b[3], carry2, s_out[3], c_out);
endmodule

module rippleAdder16b(a, b, c, s_out, c_out);
	input [15:0] a ,b;
	input c;
	inout [15:0] s_out;
	inout c_out;
	wire carry0, carry1, carry2;

	rippleAdder4b ra1(a[3:0], b[3:0], c, s_out[3:0], carry0);
	rippleAdder4b ra2(a[7:4], b[7:4], carry0, s_out[7:4], carry1);
	rippleAdder4b ra3(a[11:8], b[11:8], carry1, s_out[11:8], carry2);
	rippleAdder4b ra4(a[15:12], b[15:12], carry2, s_out[15:12], c_out);
endmodule


