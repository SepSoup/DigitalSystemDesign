module ha(
input a , b,
output co ,s 
);

// sum
bufif0 u1(s,b,a);
notif1 u2(s,b,a);
// carry
bufif0 u3(co,1'b0,a);
bufif1 u4(co,b,a);

endmodule
