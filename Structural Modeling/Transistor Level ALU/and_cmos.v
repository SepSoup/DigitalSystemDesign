module and_cmos(
    input a , b,
    output out 
);

supply1 vdd;
supply0 gnd;

// nand : 
pmos mp1 (o1 , vdd , a );
pmos mp2 (o1 , vdd , b );

nmos mn2 (o1 , smn2 , b );
nmos mn1 (smn2 , gnd , a);
// not : 
not_cmos not1(o1 , out );

endmodule