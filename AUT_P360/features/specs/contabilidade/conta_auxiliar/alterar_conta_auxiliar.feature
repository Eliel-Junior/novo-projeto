#language:pt
@alterar_conta_auxiliar
Funcionalidade: Alterar Conta Auxiliar
  Como um usuário logado no sistema
  Posso acessar a página de contas auxiliares
  Para alterar uma conta auxiliar

  Contexto: Login e Acesso a Página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de alterar conta auxiliar
  
    Cenário: Alterar Conta Auxiliar com Sucesso
      Quando eu alterar uma conta auxiliar
      Então devo ver a seguinte mensagem "Atualizado com sucesso ."
    