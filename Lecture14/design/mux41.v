module mux41 (

input [2:0] N1,
input [2:0] Z,
input sel,
output reg [2:0] N2
);


always @(*)
begin
    if(sel)
    N2 = Z;
    else N2 = N1;
 end
endmodule
