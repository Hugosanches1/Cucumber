# language: pt
@unitarios
Funcionalidade: Alugar filme
 Como um usuario
 Eu quero cadastrar alugueis de filmes
 Para controlar preços e datas de entrega
 
Cenário: Deve alugar um filme com sucesso
	Dado um filme
	|estoque |2     |
	|preco   |3     |
	|tipo		 |comum |
	Quando alugar 
	Então o preço do aluguel será R$ 3
	E a data de entrega sera em 1 dia
	E o estoque do filme será 1 unidade

Cenário: Não deve alugar filme sem estoque
	Dado um filme com estoque de 0 unidades
	Quando alugar
	Então não será possivel por falta de estoque
	E o estoque do filme será 0 unidade

#Scenario Outline	
Esquema do Cenário: Deve dar condições conforme tipo de aluguel	
	Dado um filme com estoque de 2 unidades
	E que o preço do aluguel seja R$ <preco>
	E que o tipo de aluguel seja <tipo>
	Quando alugar
	Então o preço do aluguel será R$ <valor>
	E a data de entrega sera em <qtdDias> dias
	E a pontuação será de <pontuacao> pontos
	
	#Examples:
	Exemplos:
	|preco |   tipo   |valor|qtdDias|pontuacao|
	|4     |extendido |8    |3      |2        |
	|4     |comum     |4    |1      |1        |	
	|5     |semanal   |15   |7      |3        |
	