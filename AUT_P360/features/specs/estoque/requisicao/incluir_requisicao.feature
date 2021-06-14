#language:pt
@incluir_requisicao
Funcionalidade: Incluir Requisição
  Como um usuário logado no sistema
  Posso acessar a página requisição
  Para incluir uma nova requisição

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
    E acesso a página de incluir requisição

    Cenário: Incluir Requisição com Sucesso
      Quando eu incluir uma requisição
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
