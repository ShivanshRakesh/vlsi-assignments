module serial_multiplier(clk, rst, a, b, prod);
	input [3:0] a,b;
	input clk, rst;
	output reg[7:0] prod;
	reg [3:0] rot_a;
	reg [2:0] cnt;
	reg [7:0] partial_prod;
	wire [3:0] g,c,s;

	assign g = ({ 4 {rot_a[0]} } & b) & partial_prod[7:4];
	assign s = ({ 4 {rot_a[0]} } & b) ^ partial_prod[7:4];
	assign c[0] = g[0];
	assign c[1] = g[1] | (g[0] & s[1]) | (s[1] & s[0] & c[0]);
	assign c[2] = g[2] | (s[2] & g[1]) | (s[2] & s[1] & g[0]) | (s[2] & s[1] & s[0] & c[0]);
	assign c[3] = g[3] | (s[3] & g[2]) | (s[3] & s[2] & g[1]) | (s[3] & s[2] & s[1] & g[0]) | (s[3] & s[2] & s[1] & s[0] & c[0]);
	
	always @ (posedge clk or posedge rst) begin
	if (rst) begin
		rot_a <= a;
		cnt <= 0;
		partial_prod <= 0;
	end
	else begin
		if(cnt==4)                                                           
		begin
			prod <= partial_prod[7:0];
		end
		partial_prod[7:0] <= {c[3], s[3] ^ c[2], s[2] ^ c[1], s[1] ^ c[0], s[0], partial_prod[3:1]};
		rot_a[3:0] <= {rot_a[0], rot_a[3:1]};
		cnt <= cnt + 1;
		end
	end
endmodule
