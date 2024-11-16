module mux41(
    input [1:0] s , 
    input [3:0] I,
    output out
);

// assign out = ( s == 2'b00 ) ? I[0] :
//              ( s == 2'b01 ) ? I[1] :
//              ( s == 2'b10 ) ? I[2] :
//              I[3];

assign out = I[s];



endmodule