module TestBench_JK_counter;

wire [1:0]state;
reg E, U, clk, rst;

JK_two_counter JKTC(state, E, U, clk, rst);

initial 
begin 
	clk = 0;
	forever #30 clk = ~clk;
end

initial 
fork
	#0   rst = 0;
	#0   E = 0;
	#0   U = 0;
	#50  rst = 1;
	#150 E = 0;
	#150 U = 1;
	#450 E = 1;
	#450 U = 0;
	#750 E = 1;
	#750 U = 1;
join

initial
	#1500 $finish;

initial
	$monitor($time, "\t E=%b U=%b rst=%b clk=%b Y=%b", E, U, rst, clk, state);

endmodule
