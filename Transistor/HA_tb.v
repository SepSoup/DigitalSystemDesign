`timescale 1 ns / 1 ps 
module ha_tb();

reg a,b;
wire co,s;

ha ha1(a,b,co,s);

integer i;
initial 
begin
for (i=0;i<3;i=i+1)
begin
{a,b} = 2'b00; #5;
{a,b} = 2'b01; #5;
{a,b} = 2'b10; #5;
{a,b} = 2'b11; #5;
end

end
endmodule
