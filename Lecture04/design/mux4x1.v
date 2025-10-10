module mux4x1(
    output Y,
    input wire [0:1] S,
    input D0,
    input D1,
    input D2,
    input D3

);

wire W1, W2;

mux2x1 m0 (.Y(W1),. S(S[0]), .D0(D0),. D1(D1));
mux2x1 m1(.Y(W2), .S(S[0]), .D0(D2), .D1(D3));
mux2x1 mY(.Y(Y), .S(S[1]), .D0(W1), .D1(W2));

endmodule