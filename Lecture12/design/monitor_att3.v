module monitor_att3 #(
    parameter N = 8,
    parameter LIMITE_BAIXO = 8'd50,
    parameter LIMITE_ALTO  = 8'd150
  )(
    input  [N-1:0] pressao,
    output reg [1:0] alerta
  );

  always @*
  begin
    if (pressao < LIMITE_BAIXO)
      alerta = 2'b00;   // Baixa
    else if (pressao > LIMITE_ALTO)
      alerta = 2'b10;   // Alta
    else
      alerta = 2'b01;   // Normal
  end

endmodule
