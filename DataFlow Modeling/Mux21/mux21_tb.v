`timescale 1 ns / 1 ps 

module mux_tb();

reg [1:0] i;
reg s;
wire f; 

mux21 mux1(s,i,f);

integer j , k;

initial
begin

for(j=0;j<=3;j=j+1)
for(k=0;k<=1;k=k+1)
begin
i =j; s=k; #5;
end
end

endmodule