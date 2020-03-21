module DF_lab2_3(F1, F2, F3, A, B, C ,D);

input A, B, C, D;
output F1, F2, F3;

assign F1 = A||B&&C||(!B)&&D;
assign F2 = (!B)&&C||B&&(!C)&&(!D);
assign F3 = F1||F2||(!F1)&&F2;

endmodule
