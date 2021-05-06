#language:pt
@excluir_titulo_pagar
Funcionalidade: Excluir Título a Pagar
  Como um usuário logado no sistema
	Posso acessar a página de título a pagar
	Para excluir um título a pagar

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesse a página de título a pagar

    Cenário: Excluir Título a Pagar 
      Quando eu excluir um título a pagar
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
