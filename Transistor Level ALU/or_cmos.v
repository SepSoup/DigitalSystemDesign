module or_cmos(
    input a , b,
    output out 
);

supply1 vdd;
supply0 gnd;

// nor : 
pmos mp1 (smp1 , vdd , a );
pmos mp2 (o1 , smp1 , b );

nmos mn2 (o1 , gnd , b );
nmos mn1 (o1 , gnd , a);
// not : 
not_cmos not1(o1 , out );

endmodule