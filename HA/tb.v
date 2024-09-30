`timescale 1 ns / 1 ps 
// vahed/toolgam
module tb();

reg a,b,cin; // reg is used because the values are initialized
wire co,s; // wire is used because the values are not initialized

fa fa1(a,b,cin,co,s);

initial 
begin
// instruction delay = 5ns
{a,b,cin} = 3'b000; #5;
{a,b,cin} = 3'b001; #5;
{a,b,cin} = 3'b010; #5;
{a,b,cin} = 3'b011; #5;
{a,b,cin} = 3'b100; #5;
{a,b,cin} = 3'b101; #5;
{a,b,cin} = 3'b110; #5;
{a,b,cin} = 3'b111; #5;

end
endmodule