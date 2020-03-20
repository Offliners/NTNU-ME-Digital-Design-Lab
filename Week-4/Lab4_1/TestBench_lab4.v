module TestBench_lab4;

reg [2:0] I;
wire w;

GL_lab4 G0(w, I);

initial
	begin
	      I <= 3'b000;
	#50   I <= 3'b001;
	#50   I <= 3'b010;
	#50   I <= 3'b011;
	#50   I <= 3'b100;
	#50   I <= 3'b101;
	#50   I <= 3'b110;
	#50   I <= 3'b111;
	#50   $finish;
	end
initial
	$monitor($time, "\t In=%b,Out=%b", I, w);
endmodule
