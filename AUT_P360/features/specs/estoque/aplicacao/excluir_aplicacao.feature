#language:pt
@excluir_aplicacao
Funcionalidade: Excluir aplicação
  Como um usuário logado no sistema
	Posso acessar a página de aplicação
	Para excluir uma aplicação

  Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de excluir aplicação

    Cenário: Excluir aplicação com sucesso
      Quando eu excluir uma aplicação
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
    