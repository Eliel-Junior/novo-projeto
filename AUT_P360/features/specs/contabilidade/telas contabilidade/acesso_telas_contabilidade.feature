#language:pt
Funcionalidade: Acesso as Telas de Contabilidade

  Contexto: Login e Acesso ao Módulo
    Dado que eu faça o login no pirâmide 360
    E que eu acesse o módulo de Contabilidade

    @acessar_tela_hisp
    Cenário: Acessar Tela de Histórico Padrão
      Quando eu acesso a página de histórico padrão
      Então deve exibir a tela de histórico padrão
    
    @acessar_tela_conta_auxiliar
    Cenário: Acessar Tela de Conta Auxiliar
      Quando eu acesso a página de conta auxiliar      
      Então deve exibir a tela de conta auxiliar
    
    @acessar_tela_conta_contabil
    Cenário: Acessar Tela de Conta Contábil
      Quando eu acesso a página de conta contábil
      Então deve exibir a tela de conta contábil
    
    @acessar_tela_tipo_lancamento
    Cenário: Acessar Tela de Tipo Lançamento
      Quando eu acesso a página de tipo lançamento
      Então deve exibir a tela de tipo lançamento