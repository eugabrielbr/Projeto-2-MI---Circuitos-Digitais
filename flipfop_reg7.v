module flipflop_registrador7b(valores_registrador,d,q,clk,clk2,saida_flipposterior,ch1, ch0,sinal);
	
	input d,clk,saida_flipposterior,ch1, ch0, valores_registrador,sinal;
	output reg q;
	wire saida_mux;
	wire saida;
	wire f1,f2;
	
	mux mux0(valores_registrador,saida_flipposterior,d,ch1,ch0,saida_mux);
	
	and and1(f1, saida_mux, sinal);
	and and2(f2, valores_registrador, ~sinal);
	
	or or1(saida, f1,f2);
	
	always @(posedge clk)begin
          q = saida;
     end
	
endmodule