#language:pt
@incluir_histp
Funcionalidade: Incluir Histórico Padrão
  Como um usuário logado no sistema
	Posso acessar a página de incluir histórico padrão
	Para incluir um novo histórico padrão
  
	Cenário: Incluir histórico padrão com sucesso
		Dado que eu acesse o sistema
		E faça login com "AUTO03" e "piramide"
		E acesse a página de incluir histórico padrão
		Quando eu incluir um histórico com "1303" e "AAA"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."