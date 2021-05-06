#language:pt
@incluir_titulo_pagar
Funcionalidade: Incluir Título a Pagar
  Como um usuário logado no sistema
  Posso acessar a página de títulos a pagar
  Para incluir um novo título

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
    E acesse a página de título a pagar

    Cenário: Incluir Título a Pagar com Sucesso
      Quando eu incluir um novo título
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
