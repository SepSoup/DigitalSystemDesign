`timescale 1 ns / 1 ps 

module afa_tb();

reg a,b,cin; 
wire co,s; 

afa fa1(a,b,cin,co,s);

integer i;
initial 
begin

for (i=0;i<3;i=i+1)
begin
{a,b,cin} = 3'b000; #5;
{a,b,cin} = 3'b001; #5;
{a,b,cin} = 3'b010; #5;
{a,b,cin} = 3'b011; #5;
{a,b,cin} = 3'b100; #5;
{a,b,cin} = 3'b101; #5;
{a,b,cin} = 3'b110; #5;
{a,b,cin} = 3'b111; #5;
end

end
endmodule