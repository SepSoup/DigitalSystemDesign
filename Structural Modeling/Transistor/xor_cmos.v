module xor_cmos(
    input a , b,
    output out
);

supply1 vdd;
supply0 gnd;

// Creating complements :
not_cmos nota (a , abar);
not_cmos notb (b , bbar);

// Pull-Up
pmos mp1 (out , smp1 , b );
pmos mp2 (smp1 , vdd , abar );
pmos mp3 (out , smp3 , bbar );
pmos mp4 (smp3 , vdd , a );

// Pull-Down
nmos mn2 (out , smn1 , b );
nmos mn1 (smn1 , gnd , a);
nmos mn3 (out , smn3 , bbar );
nmos mn4 (smn3 , gnd , abar);

endmodule