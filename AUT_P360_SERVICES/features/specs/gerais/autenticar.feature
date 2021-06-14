#language: pt
@autenticar_api
Funcionalidade: Autenticar
  Com um token válido
	Posso autenticar
	Para utilizar o sistema

  Cenário: Autenticar com sucesso
		Quando eu autenticar o token
		Então devo ser autenticado com sucesso
