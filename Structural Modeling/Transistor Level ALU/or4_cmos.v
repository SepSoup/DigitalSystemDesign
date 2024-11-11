module or4_cmos(
    input a , b, c, d,
    output out 
);

supply1 vdd;
supply0 gnd;

// nor : 
pmos mp1 (smp1 , vdd , a );
pmos mp2 (smp2 , smp1 , b );
pmos mp3 (smp3 , smp2 , c );
pmos mp4 (o1 , smp3 , d );

nmos mn4 (o1 , gnd , d );
nmos mn3 (o1 , gnd , c);
nmos mn2 (o1 , gnd , b );
nmos mn1 (o1 , gnd , a);
// not : 
not_cmos not1(o1 , out );

endmodule