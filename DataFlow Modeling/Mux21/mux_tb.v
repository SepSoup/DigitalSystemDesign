`timescale 1 ns / 1 ps 

module mux_tb();

reg [3:0] i;
reg [1:0] s;
wire f; 

mux21 mux1(i,s,f);

integer j , k;

initial
begin

for(j=0;j<=15;j=j+1)
for(k=0;k<=3;k=k+1)
begin
i =j; s=k; #5;
end
end

endmodule