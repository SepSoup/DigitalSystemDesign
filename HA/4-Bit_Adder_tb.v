`timescale 1 ns / 1 ps 

module fba_tb();

reg [3:0] a =  4'b0001;
reg [3:0] b = 4'b0100;
wire [3:0] s;
wire cout; 

fourbit_adder fba1(a,b,s,cout);

endmodule
