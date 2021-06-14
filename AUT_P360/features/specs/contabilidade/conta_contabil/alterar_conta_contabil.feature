#language:pt
@alterar_conta_contabil
Funcionalidade: Alterar Conta Contábil
  Como um usuário logado no sistema
  Posso acessar a página de Contas Contábeis
  Para alterar uma conta contábil

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de alterar contas contábeis
  
    Cenário: Alterar Conta Contábil com Sucesso
      Quando eu alterar uma conta contábil
      Então devo ver a seguinte mensagem "Atualizar com sucesso ."
    