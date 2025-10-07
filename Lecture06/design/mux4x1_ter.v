module mux4x1_ter(
    input [3:0]D,
    input [1:0]sel,
    output Y
);

    assign Y = (sel == 2'b00) ? D[0] : (sel == 2'b01) ? D[1] : (sel == 2'b10) ? D[2] : D[3] ;

endmodule