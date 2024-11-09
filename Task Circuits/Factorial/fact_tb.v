`timescale 1 ns / 1 ps 

module fact_tb();

reg [3:0] n; 
wire [31:0] fact_n; 

fact u1(n,fact_n);

integer i;
initial 
begin
n = 4'b0000; #5;
n = 4'b0001; #5;
n = 4'b0010; #5;
n = 4'b0011; #5;
n = 4'b0100; #5;
n = 4'b0101; #5;
n = 4'b0110; #5;
n = 4'b0111; #5;
n = 4'b1000; #5;
n = 4'b1001; #5;
n = 4'b1010; #5;
n = 4'b1011; #5;
n = 4'b1100; #5;
n = 4'b1101; #5;
n = 4'b1110; #5;
n = 4'b1111; #5;

end

endmodule