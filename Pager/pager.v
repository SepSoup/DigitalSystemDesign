`timescale 1ns/1ps

module pager (
    input x,
    input rst,
    output reg z
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] current_state, next_state;

// Internal clock:
reg clk = 0;
always #20 clk = ~clk;

// State transition
always @(posedge clk or posedge rst) begin
    if (rst)
        current_state <= S0;
    else
        current_state <= next_state;
end

always @(*) begin
    next_state = current_state;
    z = 0;
    
    case (current_state)
        S0: if (x == 0) next_state = S1;
        S1: if (x == 0) next_state = S2;
        S2: begin
            if (x == 0) begin
                next_state = S3;
                z = 1;
            end else
                next_state = S0;
        end
        S3: z = 1;  // Stay in S3
    endcase
end

endmodule
