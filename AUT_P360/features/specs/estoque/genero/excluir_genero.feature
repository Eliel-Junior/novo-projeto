#language:pt
@excluir_genero
Funcionalidade: Excluir Gênero
  Como um usuário logado no sistema
	Posso acessar a página de gênero
	Para excluir um gênero

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de gênero

    Cenário: Excluir Gênero com Sucesso
      Quando eu excluir um gênero
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
    