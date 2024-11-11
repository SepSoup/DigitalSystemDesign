module nor4_cmos(
    input a , b, c, d,
    output out 
);

supply1 vdd;
supply0 gnd;

// nor : 
pmos mp1 (smp3 , vdd , a );
pmos mp2 (smp2 , smp3 , b );
pmos mp3 (smp1 , smp2 , c );
pmos mp4 (out , smp1 , d );

nmos mn4 (out , gnd , d );
nmos mn3 (out , gnd , c);
nmos mn2 (out , gnd , b );
nmos mn1 (out , gnd , a);


endmodule