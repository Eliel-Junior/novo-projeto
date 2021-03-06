#language:pt
@incluir_histp
Funcionalidade: Incluir Histórico Padrão
  Como um usuário logado no sistema
	Posso acessar a página histórico padrão
	Para incluir um novo histórico padrão
  
	Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de incluir histórico padrão

		Cenário: Incluir histórico padrão com sucesso
			Quando eu incluir um histórico com "1303" e "xablau"
			Então devo ver a seguinte mensagem "Incluído com sucesso ."
