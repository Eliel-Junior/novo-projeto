#language:pt
@excluir_cliente
Funcionalidade: Excluir Cliente
  Como um usuário logado no sistema
	Posso acessar a página de cliente
	Para excluir um cliente

  Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de cliente

    Cenário: Excluir Cliente com Sucesso
      Quando eu excluir um cliente
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
  