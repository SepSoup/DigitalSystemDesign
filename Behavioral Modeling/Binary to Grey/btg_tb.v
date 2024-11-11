`timescale 1 ns / 1 ps 

module tb();

reg [3:0] a; 
wire [3:0] g; 

btg u1(a,g);

integer i;
initial 
begin
a = 4'b0000; #5;
a = 4'b0001; #5;
a = 4'b0010; #5;
a = 4'b0011; #5;
a = 4'b0100; #5;
a = 4'b0101; #5;
a = 4'b0110; #5;
a = 4'b0111; #5;
a = 4'b1000; #5;
a = 4'b1001; #5;
a = 4'b1010; #5;
a = 4'b1011; #5;
a = 4'b1100; #5;
a = 4'b1101; #5;
a = 4'b1110; #5;
a = 4'b1111; #5;

end

endmodule