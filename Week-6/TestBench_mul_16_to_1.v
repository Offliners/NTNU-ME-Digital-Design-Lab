module TestBench_mul_16_to_1;

wire Y;
reg [15:0]D;
reg [3:0]S;

Multiplexer_16_to_1 Mul(Y, D, S);

initial 
begin
	D <= 16'b0000000000000000;
	S <= 4'b0000;
end

initial forever #20 D[0] <= ~D[0];
initial forever #25 D[1] <= ~D[1];
initial forever #30 D[2] <= ~D[2];
initial forever #35 D[3] <= ~D[3];
initial forever #40 D[4] <= ~D[4];
initial forever #45 D[5] <= ~D[5];
initial forever #50 D[6] <= ~D[6];
initial forever #55 D[7] <= ~D[7];
initial forever #60 D[8] <= ~D[8];
initial forever #65 D[9] <= ~D[9];
initial forever #70 D[10] <= ~D[10];
initial forever #75 D[11] <= ~D[11];
initial forever #80 D[12] <= ~D[12];
initial forever #85 D[13] <= ~D[13];
initial forever #90 D[14] <= ~D[14];
initial forever #95 D[15] <= ~D[15];

initial 
	#100 $finish;
	
initial 
	$monitor($time ,"\t D=%b S=%b Y=%b", D, S, Y);
	
endmodule
