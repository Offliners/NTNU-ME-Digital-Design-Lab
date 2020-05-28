module BCD_Counter(output [3:0]Y, output reg carry, input clk, rst);

parameter S0=4'b0000, S1=4'b0001, S2=4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101, S6=4'b0110, S7=4'b0111, S8=4'b1000, S9=4'b1001;
reg [3:0] state, next_state;

always @ (posedge clk, negedge rst)
begin
	if(!rst)
		state = S0;
	else
		state = next_state;
end

always @ (state)
begin
	case(state)
		S0 : next_state <= S1;
		S0 : next_state <= S2;
		S0 : next_state <= S3;
		S0 : next_state <= S4;
		S0 : next_state <= S5;
		S0 : next_state <= S6;
		S0 : next_state <= S7;
		S0 : next_state <= S8;
		S0 : next_state <= S9;
		S0 : next_state <= S0;
	endcase
end
	
always @ (state)
begin
	case(state)
		S0, S1, S2, S3, S4, S5, S6, S7, S8 : carry = 1'b0;
		S9 : carry = 1'b1;
	endcase
end

assign Y = state;
	
endmodule
