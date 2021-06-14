#language:pt   
@alterar_histP
Funcionalidade: Aterar Histórico Padrão
  Como um usuário logado no sistema
	Posso acessar a página histórico padrão
	Para alterar um histórico padrão

  Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesso a página de alterar histórico padrão

    Cenário: Alterar Histórico Padrão com Sucesso
      Quando eu alterar um Histórico Padrão
      Então devo ver a seguinte mensagem 'Atualizado com sucesso .'