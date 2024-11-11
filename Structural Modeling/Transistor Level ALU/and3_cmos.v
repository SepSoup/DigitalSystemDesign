module and3_cmos(
    input a , b, c,
    output out 
);

supply1 vdd;
supply0 gnd;

// nand : 
pmos mp1 (o1 , vdd , a );
pmos mp2 (o1 , vdd , b );
pmos mp3 (o1 , vdd , c );

nmos mn3 (o1 , smn2 , c );
nmos mn2 (smn2 , smn3 , b);
nmos mn1 (smn3 , gnd , a);

// not : 
not_cmos not1(o1 , out );

endmodule