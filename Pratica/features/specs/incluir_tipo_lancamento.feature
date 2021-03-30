#language:pt
@incluir_tipo_lancamento
Funcionalidade: Incluir Tipo de Lançamento
  Como um usuário logado no sistema
  Posso acessar a página de tipo de lançamento
  Para incluir um novo tipo de lançamento

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesse a página de tipo de lançamento
  
    Cenário: Incluir Tipo de Lançamento com Sucesso
      Quando eu incluir um tipo de lançamento com "15" e "XXX"
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
