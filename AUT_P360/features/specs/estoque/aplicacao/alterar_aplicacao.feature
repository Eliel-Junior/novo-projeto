#language:pt
@alterar_aplicacao
Funcionalidade: Alterar Aplicação
  Como um usuário logado no sistema
  Posso acessar a página de aplicação
	Para alterar uma aplicação

  Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de alterar aplicação

    Cenário: Alterar Aplicação com Sucesso
      Quando eu alterar uma aplicação
      Então devo ver a seguinte mensagem "Atualizado com sucesso ."