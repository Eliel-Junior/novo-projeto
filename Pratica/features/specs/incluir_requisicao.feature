#language:pt
@incluir_requisicao
Funcionalidade: Incluir Requisição
  Como um usuário logado no sistema
  Posso acessar a página de incluir requisição
  Para incluir uma nova requisição

  Cenário: Incluir Requisição com Sucesso
    Dado que eu acesse o sistema
    E faça login com "AUTO03" e "piramide"
    E acesse a página de incluir requisição
    Quando eu incluir uma requisição com filial, almoxarifado, ndo, aplicação, requisição e "1"
    Então devo ver a seguinte mensagem "Incluído com sucesso ."
