// 4-to-1 Multiplexer
module mux(
    input [3:0] i, 
    input [1:0] s, 
    output f     
);

wire o0, o1, o2, o3;

not_cmos not1(s[0] , s0bar);
not_cmos not2(s[1] , s1bar);

wire [1:0] sbar = {s1bar , s0bar};


and3_cmos and0 (sbar[1], sbar[0], i[0], o0); // s=00 : i[0]
and3_cmos and1 (sbar[1], s[0], i[1], o1);   // s=01 : i[1]
and3_cmos and2 (s[1], sbar[0], i[2], o2);   // s=10 : i[2]
and3_cmos and3 (s[1], s[0], i[3], o3);      // s=11 : i[3]

or4_cmos or0 (o0, o1, o2, o3, f);

endmodule