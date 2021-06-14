#language:pt
Funcionalidade: Acesso as Telas de Estoque

  Contexto: Login e Acesso ao Módulo
    Dado que eu faça o login no pirâmide 360
    E que eu acesse o módulo de Estoque

    @acessar_tela_aplicacao
    Cenário: Acessar Tela de Aplicação
      Quando eu acesso a página de Aplicação
      Então deve exibir a tela de Aplicação

    @acessar_tela_genero
    Cenário: Acessar Tela de Gênero
      Quando eu acesso a página de Gênero
      Então deve exibir a tela de Gênero

    @acessar_tela_requisicao
    Cenário: Acessar Tela de Requisição
      Quando eu acesso a página de Requisição
      Então deve exibir a tela de Requisição

    @acessar_tela_requisitante
    Cenário: Acessar Tela de Requisitante
      Quando eu acesso a página de Requisitante
      Então deve exibir a tela de Requisitante