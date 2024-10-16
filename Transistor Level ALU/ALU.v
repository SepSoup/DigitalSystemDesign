module alu( 
    input a,
    input b,
    input i3,               // SLT
    input add_sub,          // ADD (0) | SUB (1)
    input cin,
    input [1:0] op,         // Operation
    output co,              // Carry out
    output r                // Result
);

wire out_and, out_or, out_xor, out_fa;

// Operations :      
and_cmos u1(a , b , out_and);    // AND
or_cmos u2(a , b , out_or);      // OR
xor_cmos u3(b , add_sub , out_xor);
fa  fa1(a, out_xor, cin, co, out_fa); // ADD | SUB based on cin

// MUX - Concatenate i3 with the 3-bit i bus
mux u4({i3,out_fa,out_or,out_and}, op, r);

endmodule
