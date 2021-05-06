#language:pt
@excluir_tipo_lancamento
Funcionalidade: Excluir Tipo de Lançamento
  Como um usuário logado no sistema
	Posso acessar a página de tipo de lançamento
	Para excluir um tipo de lançamento

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
	  E acesse a página de tipo de lançamento

    Cenário: Excluir Tipo Lançamento com Sucesso
      Quando eu excluir um tipo de lançamento
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
