#language:pt
@incluir_requisicao
Funcionalidade: Incluir Requisição
  Como um usuário logado no sistema
  Posso acessar a página de incluir requisição
  Para incluir uma nova requisição

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
    E acesse a página de requisição

    Cenário: Incluir Requisição com Sucesso
      Quando eu incluir uma requisição
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
