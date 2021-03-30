#language:pt
@incluir_genero
Funcionalidade: Incluir Gênero
  Como um usuário logado no sistema
	Posso acessar a página de incluir gênero
	Para incluir um novo gênero

	Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesse a página de gênero
  
		Cenário: Incluir gênero com sucesso
			Quando eu incluir um gênero com "1303" e "xablau"
			Então devo ver a seguinte mensagem "Incluído com sucesso ."
