module TestBench_multiplier;

wire [6:0]S;
reg [4:0]A;
reg [3:0]B;

multiplier mul(S, A[3:0], B[2:0]);

initial
	begin
		for(A = 5'b00000; A <= 5'b01111; A = A + 5'b00001)
			for(B = 4'b0000; B <= 4'b0111; B = B + 4'b0001)
				#50;
	end

initial
	$monitor($time," A=%d B=%d S=%d", A[3:0], B[2:0], S);
	
endmodule
