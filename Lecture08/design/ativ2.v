module ativ2 (
    input [1:0]A,
    input [1:0]B ,
    output signed [3:0]Y1
);
    assign  Y1 = A - B;

endmodule