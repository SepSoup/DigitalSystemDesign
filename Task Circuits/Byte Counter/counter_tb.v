`timescale 1 ns / 1 ps 

module counter_tb();

reg [7:0] num; 
wire [3:0] ones;
wire [3:0] zeroes; 

counter u1(num,ones,zeroes);

integer i;
initial 
begin
num = 8'b00000000; #5;
num = 8'b00010001; #5;
num = 8'b00100010; #5;
num = 8'b00110011; #5;
num = 8'b01000100; #5;
num = 8'b01010101; #5;
num = 8'b01100110; #5;
num = 8'b01110111; #5;
num = 8'b10001000; #5;
num = 8'b10011001; #5;
num = 8'b10101010; #5;
num = 8'b10111011; #5;
num = 8'b11001100; #5;
num = 8'b11011101; #5;
num = 8'b11101110; #5;
num = 8'b11111111; #5;

end

endmodule