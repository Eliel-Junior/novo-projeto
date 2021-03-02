#language:pt
@incluir_conta_contabil
Funcionalidade: Incluir Conta Contábil
  Como um usuário logado no sistema
  Posso acessar a página de Contas Contábeis
  Para incluir uma nova conta contábil
  
  Cenário: Incluir Conta Contábil com Sucesso
    Dado que eu acesse o sistema
		E faça login com "AUTO03" e "piramide"
		E acesse a página de contas contábeis
    Quando eu incluir uma conta contábil com versão, "1110299", "conta xablau" e "aaaaa"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."