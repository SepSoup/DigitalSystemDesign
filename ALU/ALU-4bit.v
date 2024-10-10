module fourbit_alu(
    input [3:0] a,
    input [3:0] b,
    input [3:0] i3,
    input [1:0] op,
    input cin,
    output zero,
    output overflow
);

wire [3:0] f; // each alu output
wire co0,co1,co2,co3;
wire fa_s4;   // 4th ALU's full adder sum
assign fa_s4 = alu4.fa1_s;

// First ALU's i3 is connected to the full adder sum (fa_s4) from the 4th ALU
alu alu1(a[0], b[0], fa_s4, op, cin, co0, f[0]);
alu alu2(a[1],b[1],1'b0,op,co0,co1,f[1]);
alu alu3(a[2],b[2],1'b0,op,co1,co2,f[2]);
alu alu4(a[3],b[3],1'b0,op,co2,co3,f[3]);

xor(overflow,co2,co3);
nor(zero,f[0],f[1],f[2],f[3]);


endmodule