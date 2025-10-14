module somador (

input [2:0] X,
input [2:0] Y,
output [2:0] N1

);
	wire [3:0] soma_aux;
	
	assign soma_aux = {1'b0,X} + {1'b0,Y};

	assign N1 = soma_aux[2:0];

endmodule
