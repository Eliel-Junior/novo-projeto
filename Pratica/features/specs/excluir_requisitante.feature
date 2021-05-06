#language:pt
@excluir_requisitante
Funcionalidade: Excluir Requisitante
  Como um usuário logado no sistema
	Posso acessar a página de requisitante
	Para excluir um requisitante

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesse a página de requisitante

    Cenário: Excluir Requisitante com Sucesso
      Quando eu excluir um requisitante
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
    