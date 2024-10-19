module bfa1(
    input a , b , c,
    output reg cout , s 
);

always @ (a or b or c)
begin
    if (a == 0 && b == 0 && c == 0)
    begin
        cout = 0;
        s = 0;
    end
    else if (a == 0 && b == 0 && c == 1)
    begin
        cout = 0;
        s = 1;
    end
    else if (a == 0 && b == 1 && c == 0)
    begin
        cout = 0;
        s = 1;
    end
    else if (a == 0 && b == 1 && c == 1)
    begin
        cout = 1;
        s = 0;
    end
    else if (a == 1 && b == 0 && c == 0)
    begin
        cout = 0;
        s = 1;
    end
    else if (a == 1 && b == 0 && c == 1)
    begin
        cout = 1;
        s = 0;
    end
    else if (a == 1 && b == 1 && c == 0)
    begin
        cout = 1;
        s = 0;
    end
    else if (a == 1 && b == 1 && c == 1)
    begin
        cout = 1;
        s = 1;
    end

end

endmodule
