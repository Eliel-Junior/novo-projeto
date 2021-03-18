#language: pt
@login
Funcionalidade: Login
  Com um usuário válido
	Posso logar
	Para utilizar o sistema

  Cenário: Login com sucesso
    Dado que eu acesse o pirâmide 360
		Quando logar com "AUTO04" e "piramide"
		Então devo selecionar a empresa de teste
		Então devo ser autenticado com sucesso
