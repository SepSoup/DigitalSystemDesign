`timescale 1 ns / 1 ps 

module fba_tb();

reg [3:0] a,b;
wire [3:0] s;
wire cout; 

fourbit_adder fba1(a,b,s,cout);

integer i , j;

initial
begin

for(i=0;i<=15;i=i+1)
for(j=0;j<=15;j=j+1)
begin
a =i; b=j; #5;
end
end

endmodule
