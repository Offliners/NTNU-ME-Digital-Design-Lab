module TestBench_Zero_Detector;

reg X, clk, rst;
wire Y;

Zero_Detector ZD(Y, X, clk, rst);

initial #200 $finish;

initial
begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial
fork
	     rst = 0;
	#2   rst = 1;
	#87  rst = 0;
	#89  rst = 1;
	#10  X = 1;
	#30  X = 0;
	#40  X = 1;
	#50  X = 0;
	#52  X = 1;
	#54  X = 0;
	#70  X = 1;
	#80  X = 1;
	#90  X = 1;
	#100 X = 0;
	#120 X = 1;
	#160 X = 0;
	#170 X = 1;
join
	
initial
	$monitor($time, "\t clk=%b X=%b rst=%b Y=%b", clk, X, rst, Y);

endmodule
