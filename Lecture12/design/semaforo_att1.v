module semaforo_att1 (
    input A, B, C, D,
    output reg FA, FB, FC, FD
  );

  always @*
  begin
    FA = A;
    FB = (~A) & B;
    FC = (~A) & (~B) & C;
    FD = (~A) & (~B) & (~C) & D;
  end

endmodule
