module fourbit_adder(
input [3:0] a,
input [3:0] b,
output [3:0] s,
output cout
);

ha ha1(a[0],b[0],c0,s[0]);
fa fa1(a[1],b[1],c0,c1,s[1]);
fa fa2(a[2],b[2],c1,c2,s[2]);
fa fa3(a[3],b[3],c2,cout,s[3]);

endmodule 