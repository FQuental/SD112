module circuito_tb();
reg [2:0] X;
reg [2:0] Y;
reg [2:0] Z;
reg SEL;
wire [2:0] s_n1;
wire [2:0] s_n2;
wire [2:0] S;

circuito uut (.X(X), .Y(Y), .Z(Z), .SEL(SEL), .s_n1(s_n1), .s_n2(s_n2), .S(S));

initial begin
SEL = 0;
X = 3'b001;
Y = 3'b010;
Z = 3'b100;
#40 SEL = 1;
#40 SEL = 0;
#40 SEL = 1;
#40 SEL = 0;

#40 $stop;
end

endmodule