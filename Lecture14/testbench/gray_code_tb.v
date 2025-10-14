module gray_code_tb();
// Entradas de dados
    reg [2:0] N2;
    wire [2:0] S; 


    gray_code uut (.N2(N2), .S(S));

   integer i;
initial begin
   for (i = 0; i < 8; i = i + 1) begin
    N2 = i;  // Atribui valores binários automaticamente
    #10; // Espera 10 ns para simulação
    end
end

    initial #80 $stop;
endmodule
