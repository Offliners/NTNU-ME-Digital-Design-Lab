module TestBench_BAS;

wire signed [3:0]S, D;
wire Cs, Cd, Vs, Vd;
reg [4:0]A, B;
reg signed [3:0]sA, sB;

binaryAdderSubtractor_4_bit BAS0(S, Cs, Vs, A[3:0], B[3:0], 1'b0),
                            BAS1(D, Cd, Vd, A[3:0], B[3:0], 1'b1);

initial
begin
	for(A = 5'b00000; A <= 5'b01111; A = A + 5'b00001)
		for(B = 5'b00000; B <= 5'b01111; B = B + 5'b00001)
		begin
			sA = A[3:0];
			sB = B[3:0];
			#50;
		end
end

initial
	$monitor($time, "\t sA=%d sB=%d S=%d CS=%d Vs=%d D=%d Cd=%d Vd=%d", sA, sB, S, Cs, Vs, D, Cd, Vd);
	
endmodule
