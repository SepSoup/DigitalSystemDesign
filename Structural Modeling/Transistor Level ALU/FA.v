module fa(
input a , b, cin,
output co ,s 
);

xor_cmos xor1(a , b , outxor1); 
xor_cmos xor2(outxor1 , cin , s);
and_cmos and1(a , b , outand1 );
and_cmos and2(outxor1 , cin , outand2);
or_cmos or1(outand2 , outand1 , co );

endmodule