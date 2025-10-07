module demux1x4(
    input S0,
    input S1,
    input D,
    output Y0, Y1, Y2, Y3
);

assign Y0 = ~S1 & ~S0 & D;
assign Y1 = ~S1 & S0 & D;
assign Y2 = S1 & ~S0 & D;
assign Y3 = S1 & S0 & D;


endmodule