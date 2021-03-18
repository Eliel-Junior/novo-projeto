#language:pt
@incluir_titulo_pagar
Funcionalidade: Incluir Título a Pagar
  Como um usuário logado no sistema
  Posso acessar a página de incluir títulos a pagar
  Para incluir um novo título

  Cenário: Incluir Título a Pagar com Sucesso
    Dado que eu faça o login no pirâmide 360
    E acesse a página de incluir título a pagar
    Quando eu incluir um novo título
    Então devo ver a seguinte mensagem "Incluído com sucesso ."
