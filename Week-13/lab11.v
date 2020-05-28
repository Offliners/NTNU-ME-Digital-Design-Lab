module lab11(output [11:0]Y, input clk, rst);

wire clk_1000Hz, clk_10Hz;
wire [15:0]data;
wire carry_ss, carry_s, carry_ts, carry;

FrequencyDivider FD0(clk_1000Hz, 25000);
FrequencyDivider FD1(clk_10Hz, 2500000);
BCD_Counter BCDC0(data[3:0], carry_ss, clk_10Hz, rst);
BCD_Counter BCDC1(data[7:4], carry_s, carry_ss, rst);
modulo_six MS(data[11:8], carry_ts, carry_s, rst);
BCD_Counter BCDC2(data[15:12], carry, carry_ts, rst);
fourDigital FD(Y[11:0], clk_1000Hz, data[15:0]);

endmodule
