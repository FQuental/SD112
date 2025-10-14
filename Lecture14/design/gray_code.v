module gray_code(

input [2:0] N2,
output reg [2:0] S
);

always @(*) begin
    case (N2)
        3'b000: S = 3'b000;
        3'b001: S = 3'b001;
        3'b010: S = 3'b011;
        3'b011: S = 3'b010;
        3'b100: S = 3'b110;
        3'b101: S = 3'b111;
        3'b110: S = 3'b101;
        default: S = 3'b100;
    endcase
end
endmodule