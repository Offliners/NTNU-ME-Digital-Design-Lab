module ripple_carry_adder(output [1:0] S, output Cout, input[1:0] A, B, input Cin);

wire [3:1] C;

full_adder FA0(S[0], C[1], A[0], B[0], Cin),
	        FA1(S[1], Cout, A[1], B[1], C[1]);
	        FA2(S[2], C[3], A[2], B[2], C[2]),
	        FA3(S[3], Cout, A[3], B[3], C[3]);
			 
endmodule
