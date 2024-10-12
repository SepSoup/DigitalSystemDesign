module not_cmos(
    input a,
    output out 
);
supply1 vdd;
supply0 gnd;

pmos mp3 (out , vdd , a );
nmos mn3 (out , gnd , a );
endmodule