module mux21(
    input [1:0] I,
    input s,
    output out
);

supply1 vdd;
supply0 gnd;

not_cmos not1(s , sbar);

cmos tg1 (out , I[0] , sbar , s );
cmos tg2 (out , I[1] , s , sbar );


endmodule