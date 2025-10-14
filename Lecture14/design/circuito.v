module circuito (

    input [2:0]X,
    input [2:0]Y,
    input [2:0]Z,
    input SEL,
    output [2:0] s_n1,
    output [2:0] s_n2,
    output [2:0] S
);

somador I1 (.X(X), .Y(Y), .N1(s_n1));
mux41 I2 (.N1(s_n1), .Z(Z), .sel(SEL), .N2(s_n2));
gray_code I3 (.N2(s_n2), .S(S));


endmodule
