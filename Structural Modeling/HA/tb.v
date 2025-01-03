`timescale 1 ns / 1 ps 
// vahed/toolgam
module tb();

reg a,b,cin; // reg is used because the values are initialized
wire co,s; // wire is used because the values are not initialized

fa fa1(a,b,cin,co,s);

integer i;
initial 
begin
// repeat(3) // repeat 3 times , needs being and end
for (i=0;i<3;i=i+1)
begin
// instruction delay = 5ns ( based on vahed timescale )
// concatination place multiple wires together
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