#language:pt
@incluir_cliente
Funcionalidade: Incluir Cliente
  Como um usuário logado no sistema
	Posso acessar a página de incluir cliente
	Para incluir um novo cliente
  
	Cenário: Incluir cliente com sucesso
		Dado que eu acesse o sistema
		E faça login com "AUTO03" e "piramide"
		E acesse a página de incluir cliente
		Quando eu incluir um cliente
		Então devo ver a seguinte mensagem "Incluído com sucesso ."
