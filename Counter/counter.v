`timescale 1ns/1ps

module counter(
    input x , rst ,
    output reg [3:0] z // increase | decrease
);

parameter S0 =  4'b0000 ;
parameter S1 =  4'b0001 ;
parameter S2 =  4'b0010 ;
parameter S3 =  4'b0011 ;
parameter S4 =  4'b0100 ;
parameter S5 =  4'b0101 ;
parameter S6 =  4'b0110 ;
parameter S7 =  4'b0111 ;
parameter S8 =  4'b1000 ;
parameter S9 =  4'b1001 ;
parameter S10 = 4'b1010 ;
parameter S11 = 4'b1011 ;
parameter S12 = 4'b1100 ;
parameter S13 = 4'b1101 ;
parameter S14 = 4'b1110 ;
parameter S15 = 4'b1111 ;

reg [3:0] current_state;
reg [3:0] next_state;

// internal clock :
reg clk = 0;
always #20 clk = ~clk;

always @ ( posedge clk or posedge rst)
    begin

        if ( rst ) 
            begin next_state = S0 ; z = 4'b0000; end

        else

            case ( current_state )

                S0 : if (x == 1) 
                        begin next_state = S1 ; z = 4'b0001; end
                    else
                        begin next_state = S15 ; z = 4'b1111; end
                S1 : if (x == 1)
                        begin next_state = S2 ; z = 4'b0010; end
                    else 
                        begin next_state = S0 ; z = 4'b0000; end
                S2 : if (x == 1)
                        begin next_state = S3 ; z = 4'b0011; end
                    else
                        begin next_state = S1 ; z = 4'b0001; end
                S3 : if (x == 1)
                        begin next_state = S4 ; z = 4'b0100; end
                    else 
                        begin next_state = S2 ; z = 4'b0010; end
                S4 : if (x == 1) 
                        begin next_state = S5 ; z = 4'b0101; end
                    else
                        begin next_state = S3 ; z = 4'b0011; end
                S5 : if (x == 1)
                        begin next_state = S6 ; z = 4'b0110; end
                    else 
                        begin next_state = S4 ; z = 4'b0100; end
                S6 : if (x == 1)
                        begin next_state = S7 ; z = 4'b0111; end
                    else
                        begin next_state = S5 ; z = 4'b0101; end
                S7 : if (x == 1)
                        begin next_state = S8 ; z = 4'b1000; end
                    else 
                        begin next_state = S6 ; z = 4'b0110; end
                S8 : if (x == 1) 
                        begin next_state = S9 ; z = 4'b1001; end
                    else
                        begin next_state = S7 ; z = 4'b0111; end
                S9 : if (x == 1)
                        begin next_state = S10 ; z = 4'b1010; end
                    else 
                        begin next_state = S8 ; z = 4'b1000; end
                S10 : if (x == 1)
                        begin next_state = S11 ; z = 4'b1011; end
                    else
                        begin next_state = S9 ; z = 4'b1001; end
                S11 : if (x == 1)
                        begin next_state = S12 ; z = 4'b1100; end
                    else 
                        begin next_state = S10 ; z = 4'b1010; end
                S12 : if (x == 1) 
                        begin next_state = S13 ; z = 4'b1101; end
                    else
                        begin next_state = S11 ; z = 4'b1011; end
                S13 : if (x == 1)
                        begin next_state = S14 ; z = 4'b1110; end
                    else 
                        begin next_state = S12 ; z = 4'b1100; end
                S14 : if (x == 1)
                        begin next_state = S15 ; z = 4'b1111; end
                    else
                        begin next_state = S13 ; z = 4'b1101; end
                S15 : if (x == 1)
                        begin next_state = S0 ; z = 4'b0000; end
                    else 
                        begin next_state = S14 ; z = 4'b1110; end

            endcase
            #5 current_state = next_state;
            
    end


endmodule