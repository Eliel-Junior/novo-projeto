#language:pt
@excluir_conta_contabil
Funcionalidade: Excluir Conta Contábil
  Como um usuário logado no sistema
	Posso acessar a página de contas contábeis
	Para excluir uma conta contábil

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de excluir contas contábeis

    Cenário: Excluir Conta Contábil com Sucesso
      Quando eu excluir uma conta contábil
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
    