#language:pt
@incluir_aplicacao
Funcionalidade: Incluir Aplicação
  Como um usuário logado no sistema
	Posso acessar a página de incluir aplicação
	Para incluir uma nova aplicação

	Contexto: Login e acesso a página
		Dado que eu faça o login no pirâmide 360
		E acesso a página de incluir aplicação
  
		Cenário: Incluir aplicação com sucesso
			Quando eu incluir uma aplicação com "1303" e "xablau"
			Então devo ver a seguinte mensagem "Incluído com sucesso ."
