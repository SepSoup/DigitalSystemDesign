module mux21(
    input s , 
    input [1:0] I,
    output out
);

assign out = (s == 0) ? I[0] : I[1];

endmodule