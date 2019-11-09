module univShiftReg(CLK, INP, OUT, select, leftInp, rightInp);
	input CLK, leftInp, rightInp;
	input [3:0] INP;
	input [1:0] select;
	output [3:0] OUT;
	reg [3:0] tmp;

	always @ (posedge CLK) begin
		case ({select[1], select[0]})
			2'b00 : tmp = INP;
			2'b01 : tmp = {leftInp, INP[3:1]};
			2'b10 : tmp = {INP[2:0], rightInp};
			2'b11 : tmp = OUT;
		endcase
	end

	assign OUT = tmp;

endmodule  