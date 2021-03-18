#language:pt
@incluir_aplicacao
Funcionalidade: Incluir Aplicação
  Como um usuário logado no sistema
	Posso acessar a página de incluir aplicação
	Para incluir uma nova aplicação
  
	Cenário: Incluir aplicação com sucesso
		Dado que eu faça o login no pirâmide 360
		E acesse a página de incluir aplicação
		Quando eu incluir uma aplicação com "1303" e "xablau"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."
