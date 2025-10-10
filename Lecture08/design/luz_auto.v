module luz_auto (

    input [3:0]IN,
    output L
);

    assign P = IN[3];
    assign N = IN[2];
    assign H = IN[1];
    assign E = IN[0];

    assign L = ((N == 0)&(P == 1)) ? 1 : (H == 1) ? 1 : (E == 1) ? 1 : 0;    

endmodule