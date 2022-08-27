#language: pt
@funcional
Funcionalidade: Cadastro de contas

Como um usuário 
Gostaria de cadastrar contas
Para que eu possa distribuir meu dinheiro de uma forma mais organizada

#Background
Contexto:
Dado que desejo adicionar uma conta

Esquema do Cenário: Deve validar regras cadastro contas
Quando adiciona a conta "<conta>"
Então recebo a mensagem "<msg>"

Exemplos:
|conta            |msg                                |
|Conta do hugo    |Conta adicionada com sucesso!      |
|                 |Informe o nome da conta            |
|Conta mesmo nome |Já existe uma conta com esse nome! |


