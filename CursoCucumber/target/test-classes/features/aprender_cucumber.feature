# language: pt
@unitarios
Funcionalidade: Aprender cucumber
	Como aluno
	Eu quero aprender a utilizar cucumber
	Para que eu possa automatizar critérios de aceitação
	
Cenário: Deve executar especificação
	Dado que criei o arquivo corretamente
	Quando executá-lo
	Então a especificação deve finalizar com sucesso
	
Cenário: Deve incrementar contador
	Dado que o valor do contador é 15
	Quando eu incrementar em 3
	Então o valor do contador será 18

@esse
Cenário: Deve calcular atraso na entega
	Dado que a entrega é dia 05/04/2022
	Quando a entrega atrasar em 2 dias
	Então a entrega será efetuada em 07/04/2022
	
@tipo1	
Cenário: Deve calcular atraso na entega da China
	Dado que a entrega é dia 05/04/2022
	Quando a entrega atrasar em 2 meses
	Então a entrega será efetuada em 05/06/2022
	
@tipo2	
Cenário: Deve criar steps genéricos para estes passos
    Dado que o ticket é AF345
    E que o valor da passagem é R$ 230,45
    E que o nome do passageiro é "Fulano da Silva"
    E que o telefone do passageiro é 9999-9999
    Quando criar os steps
    Então o teste vai funcionar
    
@tipo1 @tipo2
Cenário: Deve reaproveitar os steps "Dado" do cenário anterior
    * que o ticket é AB167
    * que o ticket especial é AB167
    * que o valor da passagem é R$ 1120,23
    Dado que o nome do passageiro é "Cicrano de Oliveira"
    Dado que o telefone do passageiro é 9888-8888

@ignore
Cenário: Deve negar todos os steps "Dado" dos cenários anteriores
    Dado que o ticket é CD123
    Dado que o ticket é AG1234
    Dado que o valor da passagem é R$ 1.1345,56
    Dado que o nome do passageiro é "Beltrano Souza Matos de Alcântara Azevedo"
    Dado que o telefone do passageiro é 1234-5678
    Dado que o telefone do passageiro é 999-2223