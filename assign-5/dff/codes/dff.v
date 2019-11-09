module dff (d, clk, rst, q);
	input d, clk, rst ; 
	output q;
	reg q;
	always @ ( posedge clk)
	#1
	if (~rst) begin
  		q <= d;
	end  
	else begin
  		q <= 1'b0;  				
	end
endmodule
