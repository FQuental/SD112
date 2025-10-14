module mux41_tb();
// Entradas de dados
    reg [2:0] Z;
    reg [2:0] N1;  
    reg sel; //entrada de seleção
    wire [2:0]N2;  // Saída do multiplexador

    // Instancia o multiplexador
    mux41 uut (.sel(sel), .Z(Z), .N1(N1), .N2(N2));

   
    initial begin
        N1 = 3'b001;
        Z = 3'b000;
        sel = 0;
       
    end
    always begin
        #20  sel = ~sel;
    end
    
    initial #80 $stop;
    

endmodule