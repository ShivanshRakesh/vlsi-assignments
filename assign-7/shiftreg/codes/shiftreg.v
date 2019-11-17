module Clock_divider(clock_in,clock_out);
	input clock_in;
	output clock_out;
	reg[27:0] counter=28'd0;
	parameter DIVISOR = 28'd100000000;
	
	always @(posedge clock_in)
	begin
	 counter <= counter + 28'd1;
	 if(counter>=(DIVISOR-1))
	  counter <= 28'd0;
	end
	assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule

module univShiftReg(CLK, INP, OUT, select, leftInp, rightInp, tmpout, RESET);
	input CLK, leftInp, rightInp, RESET;
	input [3:0] INP;
	input [1:0] select;
	output [3:0] OUT;
	reg [3:0] tmp;
	wire CLKOUT;
	output tmpout;
	
	
	Clock_divider uut(CLK, CLKOUT);

	always @ (posedge CLKOUT) begin
		if (RESET) begin
		tmp = 0;
		end
		else begin
		case ({select[1], select[0]})
			2'b00 : tmp = INP;
			2'b01 : tmp = {leftInp, tmp[3:1]};
			2'b10 : tmp = {tmp[2:0], rightInp};
			2'b11 : tmp = OUT;
		endcase
		end
	end
	assign tmpout = CLKOUT;
	assign OUT = tmp;

endmodule  