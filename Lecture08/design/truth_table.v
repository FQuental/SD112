module truth_table(
    input [3:0]IN,
    output Y
);
wire A,B,C,D;

    assign A = IN[3];
    assign B = IN[2];
    assign C = IN[1];
    assign D = IN[0];

    assign Y = (~A&~C&~D) | (~A&B&~D) |(~A&~B&C&D) | (A&~B&~C&D) | (A&~B&C&~D) | (&IN); 

endmodule

// y = A'C'D' + A'BD' + A'B'CD + AB'C'D + AB'CD' + ABCD