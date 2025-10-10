module mux4x1_att3 (
    input D0, D1, D2, D3,
    input [1:0]S,
    output reg Y
);

always @ (*) begin
 Y = ~S[1]&~S[0] ? D0: ~S[1]&S[0] ? D1: S[1]&~S[0] ? D2: D3;
end
endmodule