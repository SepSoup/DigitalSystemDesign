`timescale 1ns/1ps

module controller(
    input x , rst ,
    output reg [1:0] z // wheels
);

parameter S0 = 2'b00 ;
parameter S1 = 2'b01 ;
parameter S2 = 2'b10 ;
parameter S3 = 2'b11 ;

reg [1:0] current_state;
reg [1:0] next_state;

// internal clock :
reg clk = 0;
always #20 clk = ~clk;

// if a < posedge clk > *or* a < posedge rst > exists :
always @ ( posedge clk or posedge rst)
    begin

        if ( rst ) 
            begin next_state = S0 ; z = 2'b11; end

        else

            case ( current_state )
                S0 : if (x == 1) 
                        begin next_state = S1 ; z = 2'b01; end
                    else
                        begin next_state = S0 ; z = 2'b11; end
                S1 : if (x == 1)
                        begin next_state = S1 ; z = 2'b01; end
                    else 
                        begin next_state = S2 ; z = 2'b11; end
                S2 : if (x == 1)
                        begin next_state = S3 ; z = 2'b10; end
                    else
                        begin next_state = S2 ; z = 2'b11; end
                S3 : if (x == 1)
                        begin next_state = S3 ; z = 2'b10; end
                    else 
                        begin next_state = S0 ; z = 2'b11; end
            endcase
            #5 current_state = next_state;
            
    end

endmodule