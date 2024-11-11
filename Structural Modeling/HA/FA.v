module fa(
input a , b, cin,
output co ,s 
);

// wire outxor1;
// wire outand1;
// wire outand2;

xor xor1(outxor1,a,b); // output first, rest are input
xor xor2(s,outxor1,cin);
and and1(outand1,a,b);
and and2(outand2,outxor1,cin);
or or1(co,outand2,outand1);

endmodule