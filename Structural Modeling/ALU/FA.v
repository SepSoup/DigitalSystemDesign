module fa(
input a , b, cin,
output co ,s 
);

xor xor1(outxor1,a,b); 
xor xor2(s,outxor1,cin);
and and1(outand1,a,b);
and and2(outand2,outxor1,cin);
or or1(co,outand2,outand1);

endmodule