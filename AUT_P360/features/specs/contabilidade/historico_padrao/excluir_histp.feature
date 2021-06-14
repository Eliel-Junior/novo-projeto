#language:pt
@excluir_histp
Funcionalidade: Excluir Histórico Padrão
  Como um usuário logado no sistema
	Posso acessar a página de histórico padrão
	Para excluir um histórico padrão

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de excluir histórico padrão

    Cenário: Excluir Histórico Padrão com Sucesso
      Quando eu excluir um histórico padrão
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
  