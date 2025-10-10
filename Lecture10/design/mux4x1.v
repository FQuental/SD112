module mux4x1 (
    input D0,D1,D2,D3,
    input [1:0]S,
    output reg Y
  );

  always @ (*)
  begin
    if(S == 3)
      Y = D3;
    else if(S == 2)
      Y = D2;
    else if(S == 1)
      Y = D1;
    else
      Y = D0;
  end

endmodule
