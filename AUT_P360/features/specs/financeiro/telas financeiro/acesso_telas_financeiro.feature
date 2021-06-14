#language:pt
Funcionalidade: Acesso as Telas de Financeiro

  Contexto: Login e Acesso ao Módulo
    Dado que eu faça o login no pirâmide 360
    E que eu acesse o módulo de Financeiro

    @acessar_tela_cliente
    Cenário: Acessar Tela de Cliente
      Quando eu acesso a página de Cliente
      Então deve exibir a tela de Cliente

    @acessar_tela_titulo_pagar
    Cenário: Acessar Tela de Título a Pagar
      Quando eu acesso a página de Título a Pagar
      Então deve exibir a tela de Título a Pagar