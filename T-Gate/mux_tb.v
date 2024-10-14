`timescale 1 ns / 1 ps 
module mux21_tb();

reg [1:0] I;
reg s;
wire out;

mux21 mux1(I,s,out);

// integer j;

initial
begin
I[0] = 0;
I[1] = 0;
s = 0;

#100 $stop;
end

always #40 I[0]=~I[0]; // always takes only one instruction if not using being/end
always #20 I[1]=~I[1];
always #10 s = ~s;


// initial 
// begin
// for (j=0;j<2;j=j+1)
//     begin
//     s = j;
//     I = 2'b00; #5;
//     I = 2'b01; #5;
//     I = 2'b10; #5;
//     I = 2'b11; #5;
//     end
// end

endmodule
