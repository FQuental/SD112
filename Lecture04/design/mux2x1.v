module mux2x1(
    output Y,
    input S,
    input D0,
    input D1

);

wire w_AndD0, w_AndD1;

and d0 (w_AndD0, D0, ~S);
and d1 (w_AndD1, D1, S);
or d2 (Y, w_AndD0, w_AndD1);

endmodule