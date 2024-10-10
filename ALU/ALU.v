module alu( 
    input a,
    input b,
    input i3,
    input [1:0] op,
    input cin,
    output co,
    output r
);

wire [2:0] i ; // mux inputs
wire outxor ;

// operations
and u1(i[0],a,b); // AND
or u2(i[1],a,b);  // OR
xor u3(outxor,a,cin);
fa fa1(a,outxor,cin,co,i[2]); // ADD | SUB

// MUX
mux u4(i,i3,op,r);

endmodule
