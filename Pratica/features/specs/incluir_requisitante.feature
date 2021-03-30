#language:pt
@incluir_requisitante
Funcionalidade: Incluir Requisitante
  Como um usuário logado no sistema
  Posso acessar a página de incluir requisitante
  Para incluir um novo requisitante

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
    E acesse a página de requisitante

    Cenário: Incluir Requisitante com Sucesso
      Quando eu incluir um histórico com filial, "1303" e "xablau"
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
