#language:pt
Funcionalidade: Login
	Para que eu possa cadastrar e grenciar minhas tarefas
	Sendo um usuário
	Posso acessar o sistema com meu email e senha previamente cadastrados.

	# Contexto: Página principal
	# 	Dado que eu acesso a página principal

	@temp
	@logout
	Cenario: Usuário deve ser autorizado

	Dado que eu acesso a página principal
	Quando eu faço login com "arrudaa227@gmail.com" e "a12345manda21a"
	Então devo ser autenticado com sucesso
	E devo ver a seguinte mensagem "Início"

	# Cenario: Senha errada

	# Dado que eu acesso a página principal
	# Quando eu faço login com "12148447408" e "123408kakjh"
	# Então devo ver a seguinte mensagem "Sua senha está incorreta"

	# Cenario: Usuário não existe 
	
	# Quando eu faço login com "eu@papito.net" e "123408"
	# Então devo ver a seguinte mensagem "Usuário não cadastrado."

	# Cenario: Email incorreto

	# Quando eu faço login com "eupapito.net" e "123408"
	# Então devo ver a seguinte mensagem "Email incorreto ou ausente."