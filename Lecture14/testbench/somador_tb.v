module somador_tb ();

reg [2:0] X;
reg [2:0] Y;
wire [2:0]N1;

somador DUT (.X(X), .Y(Y), .N1(N1));
integer i;
initial begin
   
    for (i = 0; i < 8; i = i + 1) begin
        {X, Y} = i;  // Atribui valores binários automaticamente
        #10; // Espera 10 ns para simulação
    end
end
endmodule
