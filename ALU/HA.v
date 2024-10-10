module ha(
    input a , b,
    output co ,s 
);

xor u1(s,a,b); 
and u2(co,a,b);

endmodule
