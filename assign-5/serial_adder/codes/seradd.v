module seradd(a, b, c_in, c_out, s_out, clk, rst);
     input a, b, c_in;
	  input clk, rst;
	  output c_out;
     output s_out;
		
	  reg s_out, c_out, c, firstitr = 1;

	  always @(posedge clk or posedge rst) begin
	  #1
	  if (rst == 1) begin
		  c_out = c;
		  firstitr = 1;
		  s_out = 0;
     end 
	  else begin
		  if (firstitr) begin
				c = c_in;
				firstitr = 0;
		  end
		  s_out = a ^ b ^ c;
		  c = (a&b) | (b&c) | (c&a);
	 end
	 end
endmodule
