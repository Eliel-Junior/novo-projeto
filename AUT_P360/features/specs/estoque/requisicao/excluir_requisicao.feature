#language:pt
@excluir_requisicao
Funcionalidade: Excluir Requisição
  Como um usuário logado no sistema
	Posso acessar a página de requisição
	Para excluir uma requisição

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de requisição

    Cenário: Excluir Requisição com Sucesso
      Quando eu excluir uma requisição
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
  