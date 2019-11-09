
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Oct 31 2019 20:25:11 IST (Oct 31 2019 14:55:11 UTC)

// Verification Directory fv/fft4 

module fft4(inp, rout_0, rout_1, rout_2, rout_3, iout_0, iout_1,
     iout_2, iout_3);
  input [3:0] inp;
  output [2:0] rout_0, rout_1, rout_2, rout_3, iout_0, iout_1, iout_2,
       iout_3;
  wire [3:0] inp;
  wire [2:0] rout_0, rout_1, rout_2, rout_3, iout_0, iout_1, iout_2,
       iout_3;
  wire n_0, n_1, n_2, n_3, n_4, n_6;
  assign iout_3[0] = iout_1[0];
  assign iout_3[1] = iout_3[2];
  assign iout_2[0] = 1'b0;
  assign iout_2[1] = 1'b0;
  assign iout_2[2] = 1'b0;
  assign iout_1[1] = iout_1[2];
  assign iout_0[0] = 1'b0;
  assign iout_0[1] = 1'b0;
  assign iout_0[2] = 1'b0;
  assign rout_3[0] = rout_1[0];
  assign rout_3[1] = rout_1[2];
  assign rout_3[2] = rout_1[2];
  assign rout_2[0] = rout_0[0];
  assign rout_1[1] = rout_1[2];
  ADDHXL g234(.A (n_0), .B (n_6), .CO (rout_0[2]), .S (rout_0[1]));
  AO21X1 g235(.A0 (n_4), .A1 (n_6), .B0 (rout_2[2]), .Y (rout_2[1]));
  NOR2XL g236(.A (n_4), .B (n_6), .Y (rout_2[2]));
  OAI2BB1XL g238(.A0N (inp[0]), .A1N (inp[2]), .B0 (n_3), .Y (n_6));
  CLKXOR2X1 g237(.A (rout_1[0]), .B (iout_1[0]), .Y (rout_0[0]));
  OAI21XL g239(.A0 (inp[2]), .A1 (inp[0]), .B0 (iout_1[0]), .Y (n_3));
  OAI21XL g241(.A0 (n_1), .A1 (inp[2]), .B0 (n_2), .Y (rout_1[0]));
  OR2X1 g240(.A (iout_3[2]), .B (iout_1[2]), .Y (iout_1[0]));
  INVXL g244(.A (n_2), .Y (rout_1[2]));
  NAND2XL g247(.A (inp[2]), .B (n_1), .Y (n_2));
  AND2X1 g245(.A (inp[1]), .B (inp[3]), .Y (n_0));
  NOR2BXL g243(.AN (inp[3]), .B (inp[1]), .Y (iout_3[2]));
  NOR2XL g242(.A (inp[1]), .B (inp[3]), .Y (n_4));
  NOR2BXL g246(.AN (inp[1]), .B (inp[3]), .Y (iout_1[2]));
  INVXL g248(.A (inp[0]), .Y (n_1));
endmodule

