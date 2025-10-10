module mux4x1_att2(
    input D0, D1, D2, D3,
    input [1:0]S,
    output reg Y
);

always @ (*) begin
   case (S)
    2'b00: Y = D0;
    2'b01: Y = D1;
    2'b10: Y = D2;
    2'b11: Y = D3;
    default: Y = 0;
   endcase    
end

endmodule