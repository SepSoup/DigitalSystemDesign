module alu( 
    input a,
    input b,
    input i3,               // SLT
    input add_sub,          // ADD/SUB
    input cin,
    input [1:0] op,         // Operation
    output co,              // Carry out
    output r                // Result
);

wire out_and, out_or, out_xor, out_fa;

// Operations :
and u1(out_and, a, b);        // AND
or  u2(out_or, a, b);        // OR
xor u3(out_xor, b, add_sub);
fa  fa1(a, out_xor, cin, co, out_fa); // ADD | SUB based on cin

// MUX - Concatenate i3 with the 3-bit i bus
mux u4({i3,out_fa,out_or,out_and}, op, r);

endmodule
