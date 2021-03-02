#language:pt
@incluir_tipo_lancamento
Funcionalidade: Incluir Tipo de Lançamento
  Como um usuário logado no sistema
  Posso acessar a página de tipo de lançamento
  Para incluir um novo tipo de lançamento
  
  Cenário: Incluir Tipo de Lançamento com Sucesso
    Dado que eu acesse o sistema
		E faça login com "AUTO03" e "piramide"
		E acesse a página de tipo de lançamento
    Quando eu incluir um tipo de lançamento com "15" e "XXX"
		Então devo ver a seguinte mensagem "Incluído com sucesso ."
