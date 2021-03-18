#language:pt
@incluir_genero
Funcionalidade: Incluir Gênero
  Como um usuário logado no sistema
	Posso acessar a página de incluir gênero
	Para incluir um novo gênero
  
	Cenário: Incluir gênero com sucesso
		Dado que eu faça o login no pirâmide 360
		E acesse a página de incluir gênero
		Quando eu incluir um gênero com "1303" e "xablau"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."
