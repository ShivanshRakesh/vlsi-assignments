module cla4bit (a, b, c, sum, c_out);
	input [3:0] a, b;
	input c;
	output [3:0] sum;
	output c_out;  
  	wire [3:0] carry;
  	wire [3:0] gi, pi;
	
	assign pi[0] = a[0] ^ b[0];
	assign pi[1] = a[1] ^ b[1];
	assign pi[2] = a[2] ^ b[2];
	assign pi[3] = a[3] ^ b[3];

	assign gi[0] = a[0] & b[0];
	assign gi[1] = a[1] & b[1];   
	assign gi[2] = a[2] & b[2];   
	assign gi[3] = a[3] & b[3];   
	
	assign carry[0] = c;
	assign carry[1] = gi[0] | (pi[0] & carry[0]);
	assign carry[2] = gi[1] | (pi[1] & carry[1]);
	assign carry[3] = gi[2] | (pi[2] & carry[2]);

	assign c_out = gi[3] | (pi[3] & carry[3]);

	assign sum[0] = pi[0] ^ carry[0];
	assign sum[1] = pi[1] ^ carry[1];
	assign sum[2] = pi[2] ^ carry[2];
	assign sum[3] = pi[3] ^ carry[3]; 

endmodule

module cla16bit(a, b, c, s_out, c_out);
	input [15:0] a ,b;
	input c;
	output [15:0] s_out;
	output c_out;
	wire carry0, carry1, carry2;

	cla4bit cla1(a[3:0], b[3:0], c, s_out[3:0], carry0);
	cla4bit cla2(a[7:4], b[7:4], carry0, s_out[7:4], carry1);
	cla4bit cla3(a[11:8], b[11:8], carry1, s_out[11:8], carry2);
	cla4bit cla4(a[15:12], b[15:12], carry2, s_out[15:12], c_out);
endmodule
