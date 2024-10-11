// 4-to-1 Multiplexer
module mux(
    input [3:0] i, 
    input [1:0] s, 
    output f     
);

wire o0, o1, o2, o3;

and(o0, ~s[1], ~s[0], i[0]); // s=00 : i[0]
and(o1, ~s[1],  s[0], i[1]); // s=01 : i[1]
and(o2,  s[1], ~s[0], i[2]); // s=10 : i[2]
and(o3,  s[1],  s[0], i[3]); // s=11 : i[3]

or(f, o0, o1, o2, o3);

endmodule