module MUX_5BIT( sel, a, b, y );
    input sel;
    input  [4:0] a, b;
    output [4:0] y;

    assign y = sel ? b : a;
endmodule