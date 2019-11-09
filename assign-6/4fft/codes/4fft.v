module fft4 (inp, rout_0, rout_1, rout_2, rout_3, iout_0, iout_1, iout_2, iout_3);
	input [3:0] inp; 
	output [2:0] rout_0;
	output [2:0] rout_1;
	output [2:0] rout_2;
	output [2:0] rout_3;
	
	output [2:0] iout_0;
	output [2:0] iout_1;
	output [2:0] iout_2;
	output [2:0] iout_3;

	assign rout_0 = inp[0] + inp[1] + inp[2] + inp[3];
	assign iout_0 = 0;

	assign rout_1 = inp[0] - inp[2];
	assign iout_1 = inp[3] - inp[1];

	assign rout_2 = inp[0] - inp[1] + inp[2] - inp[3];
	assign iout_2 = 0;

	assign rout_3 = rout_1;
	assign iout_3 = inp[1] - inp[3];

endmodule
