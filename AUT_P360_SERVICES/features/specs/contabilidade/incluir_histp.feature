#language:pt
@incluir_histp_api
Funcionalidade: Incluir Histórico Padrão
  Com um token válido
	Posso acessar a API de histórico padrão
	Para incluir um novo histórico padrão
  
  Cenário: Incluir histórico padrão com sucesso
    Dado que eu tenha um token válido
    Quando eu incluir um histórico
    Então devo ter os dados validados
