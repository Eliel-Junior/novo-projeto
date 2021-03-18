#language:pt
@incluir_requisitante
Funcionalidade: Incluir Requisitante
  Como um usuário logado no sistema
  Posso acessar a página de incluir requisitante
  Para incluir um novo requisitante

  Cenário: Incluir Requisitante com Sucesso
    Dado que eu faça o login no pirâmide 360
    E acesse a página de incluir requisitante
    Quando eu incluir um histórico com filial, "1303" e "xablau"
    Então devo ver a seguinte mensagem "Incluído com sucesso ."
