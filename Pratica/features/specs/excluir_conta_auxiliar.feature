#language:pt
@excluir_conta_auxiliar
Funcionalidade: Excluir Conta Auxiliar
  Como um usuário logado no sistema
	Posso acessar a página de contas auxiliares
	Para excluir uma conta auxiliar

   Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de contas auxiliares
  
    Cenário: Excluir Conta Auxiliar com Sucesso
      Quando eu excluir uma conta auxiliar
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
    