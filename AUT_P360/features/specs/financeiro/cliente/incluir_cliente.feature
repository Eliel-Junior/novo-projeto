#language:pt
@incluir_cliente
Funcionalidade: Incluir Cliente
  Como um usuário logado no sistema
	Posso acessar a página de incluir cliente
	Para incluir um novo cliente

	Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de incluir cliente

		Cenário: Incluir cliente com sucesso
			Quando eu incluir um cliente
			Então devo ver a seguinte mensagem "Incluído com sucesso ."
