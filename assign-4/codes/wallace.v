module fulladder(a, b, c, s_out, c_out);
	input a, b, c;
	inout s_out, c_out; 
	assign s_out = a ^ b ^ c;
	assign c_out = ((a | b) & c) | (a & b);
endmodule

module wallace(a, b, out);
    input [3:0] a, b;
    output [7:0] out;
    wire [6:0] p0, p1, p2, p3;
    wire s11, s12, s13, s14, s15, s22, s23, s24, s25, s26, s32, s33, s34, s35, s36, s37;
    wire c11, c12, c13, c14, c15, c22, c23, c24, c25, c26, c32, c33, c34, c35, c36, c37;

    assign  p0 = a & {4{b[0]}};
    assign  p1 = a & {4{b[1]}};
    assign  p2 = a & {4{b[2]}};
    assign  p3 = a & {4{b[3]}};

    assign out[0] = p0[0];
    assign out[1] = s11;
    assign out[2] = s22;
    assign out[3] = s32;
    assign out[4] = s34;
    assign out[5] = s35;
    assign out[6] = s36;
    assign out[7] = s37;

    fulladder fa11(p0[1], p1[0], 0,  s11, c11);
    fulladder fa12(p0[2], p1[1], p2[0], s12, c12);
    fulladder fa13(p0[3], p1[2], p2[1], s13, c13);
    fulladder fa14(p1[3], p2[2], p3[1], s14, c14);
    fulladder fa15(p2[3], p3[2], 0,  s15, c15);

    fulladder fa22(c11, s12, 0,  s22, c22);
    fulladder fa23(p3[0], c12, s13, s23, c23);
    fulladder fa24(c13, c32, s14, s24, c24);
    fulladder fa25(c14, c24, s15, s25, c25);
    fulladder fa26(c15, c25, p3[3], s26, c26);

    fulladder fa32(c22, s23, 0, s32, c32);
    fulladder fa34(c23, s24, 0, s34, c34);
    fulladder fa35(c34, s25, 0, s35, c35);
    fulladder fa36(c35, s26, 0, s36, c36);
    fulladder fa37(c36, c26, 0, s37, c37);
endmodule