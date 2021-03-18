#language:pt
@incluir_conta_auxiliar
Funcionalidade: Incluir Conta Auxiliar
  Como um usuário logado no sistema
  Posso acessar a página de Contas Auxiliares
  Para incluir uma nova conta auxiliar
  
  Cenário: Incluir Conta Auxiliar com Sucesso
    Dado que eu faça o login no pirâmide 360
		E acesso a página de incluir contas auxiliares
    Quando eu incluir uma conta auxiliar com grupo, "1303" e "conta xablau"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."
