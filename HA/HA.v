module ha(
input a , b,
output co ,s 
);

xor u1(s,a,b); // output first, rest are input
and u2(co,a,b);

endmodule
