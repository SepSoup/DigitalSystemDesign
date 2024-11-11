module alu4(
    input [3:0] a,
    input [3:0] b,
    input [3:0] i3,
    input [1:0] op,
    input add_sub,
    output zero,
    output overflow,
    output [3:0] f
);


wire co0,co1,co2,co3;

alu alu1(a[0], b[0], i3[0],add_sub ,add_sub, op,  co0, f[0]);
alu alu2(a[1], b[1], i3[1],add_sub, co0, op,  co1, f[1]);
alu alu3(a[2], b[2], i3[2],add_sub, co1, op,  co2, f[2]);
alu alu4(a[3], b[3], i3[3],add_sub, co2, op,  co3, f[3]);

xor_cmos xor1(co2 , co3 , overflow);
nor4_cmos nor1(f[0],f[1],f[2],f[3] , zero);


endmodule