module GL_lab2_3(F1, F2, F3, A, B, C, D);

input A, B, C, D;
output F1, F2, F3;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9;

not G0(w1, D);
not G1(w2, C);
not G2(w3, B);
and G3(w4, w1, B, w2);
and G4(w5, w3, C);
and G5(w6, w3, D);
and G6(w7, B, C);
or G7(F1, w7, w6, A);
or G8(F2, w4, w5);
not G10(w8, F1);
and G11(w9, w8, F2);
or G12(F3, w9, F1, F2);

endmodule
