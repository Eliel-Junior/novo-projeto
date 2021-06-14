#language:pt
@alterar_cliente
Funcionalidade: Alterar Cliente
  Como um usuário logado no sistema
  Posso acessar a página de cliente
	Para alterar um cliente

  Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de cliente

    Cenário: Alterar Cliente com Sucesso
      Quando eu alterar um cliente
      Então devo ver a seguinte mensagem "Atualizado com sucesso ."