#language:pt
@alterar_tipo_lancamento
Funcionalidade: Alterar Tipo de Lançamento
  Como um usuário logado no sistema
  Posso acessar a página de tipo de lançamento
  Para alterar um novo tipo de lançamento

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesse a página de alterar tipo de lançamento
  
    Cenário: Alterar Tipo de Lançamento com Sucesso
      Quando eu alterar um tipo de lançamento
      Então devo ver a seguinte mensagem "Atualizado com sucesso ."
