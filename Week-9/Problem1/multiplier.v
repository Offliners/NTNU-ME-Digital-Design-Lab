module multiplier(output [6:0]S, input[3:0]A, input[2:0]B);

wire [16:0]w;

assign w[0] = A[0]&&B[0];
assign w[1] = A[1]&&B[0];
assign w[2] = A[2]&&B[0];
assign w[3] = A[3]&&B[0];
assign w[4] = A[0]&&B[1];
assign w[5] = A[1]&&B[1];
assign w[6] = A[2]&&B[1];
assign w[7] = A[3]&&B[1];
assign w[8] = A[0]&&B[2];
assign w[9] = A[1]&&B[2];
assign w[10] = A[2]&&B[2];
assign w[11] = A[3]&&B[2];
assign S[0] = w[0];

ripple_carry_adder RCA0(w[15:12], w[16], w[7:4], {1'b0, w[3:1]}, 1'b0),
                   RCA1(S[5:2], S[6], w[11:8], w[16:13], 1'b0);

assign S[1] = w[12];	 
		
endmodule
