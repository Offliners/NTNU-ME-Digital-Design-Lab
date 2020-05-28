module FrequencyDivider(output reg clk_slow, input [31:0]times, input clk);

reg [31:0]counter;

initial 
begin
	clk_slow <= 0;
	counter <= 0;
end

always @ (negedge clk)
begin
	counter <= counter + 1;
	if(counter == times)
		begin
				counter <= 0;
				clk_slow <= ~clk_slow;
		end
end

endmodule
