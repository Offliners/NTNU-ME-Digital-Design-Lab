module slowclock_5(output reg clk_slow, input clk, rst);

reg [2:0]counter;

initial 
	clk_slow <= 0;

always @ (posedge clk, negedge rst)
begin
	if(!rst)
		begin
			clk_slow <= 0;
			counter <= 1;
		end
	else
		begin
			counter <= counter + 1'b1;
			if(counter == 5)
				begin
					counter <= 1;
					clk_slow <= ~clk_slow;
				end
		end
end

endmodule
