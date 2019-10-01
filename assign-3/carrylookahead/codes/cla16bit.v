module cla4bit (a, b, c, sum);
	input [3:0] a, b;
	input c;
	output [3:0] sum;
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
	wire [15:0] carry;
	
	assign carry[0] = c;
	assign carry[1] = (a[0] & b[0]) | ((a[0] ^ b[0]) & carry[0]);
	assign carry[2] = (a[1] & b[1]) | ((a[1] ^ b[1]) & carry[1]);
	assign carry[3] = (a[2] & b[2]) | ((a[2] ^ b[2]) & carry[2]);
	assign carry[4] = (a[3] & b[3]) | ((a[3] ^ b[3]) & carry[3]);
	assign carry[5] = (a[4] & b[4]) | ((a[4] ^ b[4]) & carry[4]);
	assign carry[6] = (a[5] & b[5]) | ((a[5] ^ b[5]) & carry[5]);
	assign carry[7] = (a[6] & b[6]) | ((a[6] ^ b[6]) & carry[6]);
	assign carry[8] = (a[7] & b[7]) | ((a[7] ^ b[7]) & carry[7]);
	assign carry[9] = (a[8] & b[8]) | ((a[8] ^ b[8]) & carry[8]);
	assign carry[10] = (a[9] & b[9]) | ((a[9] ^ b[9]) & carry[9]);
	assign carry[11] = (a[10] & b[10]) | ((a[10] ^ b[10]) & carry[10]);
	assign carry[12] = (a[11] & b[11]) | ((a[11] ^ b[11]) & carry[11]);
	assign carry[13] = (a[12] & b[12]) | ((a[12] ^ b[12]) & carry[12]);
	assign carry[14] = (a[13] & b[13]) | ((a[13] ^ b[13]) & carry[13]);
	assign carry[15] = (a[14] & b[14]) | ((a[14] ^ b[14]) & carry[14]);
	assign c_out = (a[15] & b[15]) | ((a[15] ^ b[15]) & carry[15]);

	cla4bit cla1(a[3:0], b[3:0], carry[0], s_out[3:0]);
	cla4bit cla2(a[7:4], b[7:4], carry[4], s_out[7:4]);
	cla4bit cla3(a[11:8], b[11:8], carry[8], s_out[11:8]);
	cla4bit cla4(a[15:12], b[15:12], carry[12], s_out[15:12]);
endmodule
