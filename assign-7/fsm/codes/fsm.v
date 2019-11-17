module Clock_divider(clock_in,clock_out);
	input clock_in;
	output clock_out;
	reg[27:0] counter=28'd0;
	parameter DIVISOR = 28'd25000000;
	
	always @(posedge clock_in)
	begin
	 counter <= counter + 28'd1;
	 if(counter>=(DIVISOR-1))
	  counter <= 28'd0;
	end
	assign clock_out = (counter<DIVISOR/2)?1'b0:1'b1;
endmodule

module fsm(CLK, RESET, ONE, ZERO, OUT, tmpout, tmpone, tmpzero, state);
    input CLK, RESET, ONE, ZERO;
    output OUT;
    output reg [3:0] state=0;
    reg prev0=0, prev1=0;
	 wire CLKOUT;
	 output tmpout, tmpone, tmpzero;
	
	 Clock_divider uut(CLK, CLKOUT);
	 reg flag=0;
		
    always @(negedge ZERO) begin prev0 <= 0; end
    always @(negedge ONE) begin prev1 <= 0; end
    
	 assign OUT = (state == 8);
	 assign tmpout = CLKOUT;
	 assign tmpone = ONE;
	 assign tmpzero = ZERO;
	 
    always @(posedge CLKOUT) begin
			
        if (RESET == 1) begin
            state <= 0;
            prev0 <= 0;
            prev1 <= 0;
        end
        else begin
            case (state)
				0 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 1; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 2; end
					end
				1 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 3; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 4; end
					end
				2 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 4; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 5; end
					end
				3 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 3; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 6; end
					end
			   4 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 6; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 7; end
					end
				5 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 7; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 5; end
				   end
				6 : begin 
						if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 6; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 8; end
					end
            7 : begin 
				   	if (~prev0 & ZERO) begin prev0 <= 1; prev1 <= 1; state <= 8; end
						else if (~prev1 & ONE) begin prev0 <= 1; prev1 <= 1; state <= 7; end
					end
				endcase
			end
			prev0 <= 1;
			prev1 <= 1;
		end		
endmodule