// pmos name (drain , source , gate );
// nmos name (drain , source , gate );


module ha(
input a , b,
output co ,s 
);

// sum
xor_cmos xor1(a , b , s);
// carry
and_cmos and1(a , b , co);

endmodule
