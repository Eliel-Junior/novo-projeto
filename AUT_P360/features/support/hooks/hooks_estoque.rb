#Inicio dos services de Aplicação
Before '@excluir_aplicacao' do
  gerarToken 
  @aplicacao_url = 'wsAPLICACAO.asmx?wsdl'
  @aplicacao_urlservice = @base_url + @aplicacao_url
  @aplicacao_body_incluir = {
    'CODAPLICA' => '1303',
    'NOME' => 'xablau',
    'IND_INATIVA' => 'N',
    'IND_ALT_FORNEC_COT' => 'N',
    'IND_GERA_NFS_ATENDIMENTO_REQ' => 'N',
    'IND_EXIGE_ORDEM_PRODUCAO' => 'N',
    'IND_EXIGE_OSI' => 'N'
  }
  @setup_aplicacao = AplicacaoService.new(@aplicacao_body_incluir, @aplicacao_urlservice)
  @setup_aplicacao.operacoesAplicacao(@asserts[:token], 'incluir')
end
After '@incluir_aplicacao' do
  gerarToken 
  @aplicacao_url = 'wsAPLICACAO.asmx?wsdl'
  @aplicacao_urlservice = @base_url + @aplicacao_url
  @aplicacao_body_excluir = {
    'CODAPLICA' => '1303',
    'NOME' => 'xablau',
    'IND_INATIVA' => 'N',
    'IND_ALT_FORNEC_COT' => 'N',
    'IND_GERA_NFS_ATENDIMENTO_REQ' => 'N',
    'IND_EXIGE_ORDEM_PRODUCAO' => 'N',
    'IND_EXIGE_OSI' => 'N'
  }
  @setup_aplicacao = AplicacaoService.new(@aplicacao_body_ecluir, @aplicacao_urlservice)
  @setup_aplicacao.operacoesAplicacao(@asserts[:token], 'excluir')
end

#Inicio dos services de Gênero
Before '@excluir_genero' do
  gerarToken 
  @genero_url = 'wsPIR_GENERO_PRODUTO.asmx?wsdl'
  @genero_urlservice = @base_url + @genero_url
  @genero_body_incluir = {
    'COD_GENERO' => '132',
    'DSC_GENERO' => 'xablau13',
    'IND_COMBUSTIVEL' => 'N',
    'IND_MEDICAMENTO' => 'N',
    'IND_PETROLEO' => 'N'
  }
  @setup_genero = GeneroService.new(@genero_body_incluir, @genero_urlservice)
  @setup_genero.operacoesGenero(@asserts[:token], 'incluir')
end
After '@incluir_genero' do
  gerarToken 
  @genero_url = 'wsPIR_GENERO_PRODUTO.asmx?wsdl'
  @genero_urlservice = @base_url + @genero_url
  @genero_body_excluir = {
    'COD_GENERO' => '132',
    'DSC_GENERO' => 'xablau13',
    'IND_COMBUSTIVEL' => 'N',
    'IND_MEDICAMENTO' => 'N',
    'IND_PETROLEO' => 'N'
  }
  @setup_genero = GeneroService.new(@genero_body_excluir, @genero_urlservice)
  @setup_genero.operacoesGenero(@asserts[:token], 'incluir')
end

#Inicio dos services de Requisição
Before '@excluir_requisicao' do
  gerarToken 
  @requisicao_url = 'wsREQUISICAO.asmx?wsdl'
  @requisicao_urlservice = @base_url + @requisicao_url
  @requisicao_body_incluir = {
  '_fcEMPRESA' => {
    'EMPRESA' => '001',
    'MATRIZ' => '001'
  },   
  '_fcAPLICACAO' => {
    'CODAPLICA' => 'APL003'
  },
  '_fcCCUSTO' => {
    'CCUSTO' => '14101'
  },
  '_fcNDO' => {
    'CODIGO' => 'ES0001'
  },
  '_fcORIGEM' => {
    'CODIGO' => '13'
  },
  '_fcREQUISITANTE' => {
    'CODREQUIS' => 'REQ001'
  },
  '_fcITENS_REQ' => {
    'fcITENS_REQ_dados' => {
      '_fcEMPRESA' => {
        'EMPRESA' => '001',
        'MATRIZ' => '001'
      },
      '_fcITEM_SOLICITACAO' => {
        'ProdEmpresaDep' => {
          '_fcPIR_HIST_LOC_PROD' => {
            'fcPIR_HIST_LOC_PRODUTO_dados' => {
              'COD_DEPOSITO' => 'ALMOX1'
            }
          },
          
          '_fcDEPOSITO_EMPRESA' => {
            'FILIAL' => '001',
            'CODDEP' => '01'
          }
        }, #fechar com ,
        'Produtos' => {
          '_fcPROD_EMPRESA_DEP' => {
            'fcPROD_EMPRESA_DEP_dados' => {
              '_fcPIR_HIST_LOC_PROD' => {
                'fcPIR_HIST_LOC_PRODUTO_dados' => {
                  'COD_DEPOSITO' => 'ALMOX1'
                }
              }
            }
          },
          '_fcPROD_TABELA_PRECO' => {
            'fcPROD_TABELA_PRECO_dados' => {
              '_fcUNIMED' => {
                'CODMED' => '003'
              }
            }
          }
        }      
      }, #fechar com ,
      '_fcPROD_EMPRESA_DEP' => {      
        '_fcEMPRESA' => {
          'EMPRESA' => '001',
          'MATRIZ' => '001'
        },
        '_fcDEPOSITO_EMPRESA' => {
          'FILIAL' => '001',
          'CODDEP' => '01'
        }          
      },
      '_fcUNIMED' => {
        'CODMED' => '003'
      },
      '_fcPRODUTO' => {
        'CODPROD' => '1000000000000',
        'DESCRICAO' => 'GASOLINA COMUM'
      },
      'QTD_REQ' => '10',
      'COMPLEMENTO' => 'COMPLEMENTO AUTOMAÇÃO',
      'OBSERVACAO' => 'OBSERVAÇÃO AUTOMAÇÃO'
    } #fecha sem ,
  }, #fecha com ,
  '_fcITENS_REQ_OPERACAO' => {
    'fcITENS_REQ_OPERACAO' => {
      'OBSERVACAO' => 'OBSERVAÇÃO REQUISIÇÃO AUTOMAÇÃO'
    }
  },
  'DT_REQ' => '08/03/2021'
  }
  @setup_requisicao = RequisicaoService.new(@requisicao_body_incluir, @requisicao_urlservice)
  @setup_requisicao.operacoesRequisicao(@asserts[:token], 'incluir')
end

#Inicio dos services de Requisitante
Before '@excluir_requisitante' do
  gerarToken 
  @requisitante_url = 'wsREQUISITANTE.asmx?wsdl'
  @requisitante_urlservice = @base_url + @requisitante_url
  @requisitante_body_incluir = {
  'CODREQUIS' => '1303',
  'NOME' => 'xablau',
  'IND_RECEBE_EMAIL' => 'S',
  'IND_ATIVO' => 'N',
  'fc_EMPRESA' => {
    'EMPRESA' => '004',
    'MATRIZ' => '001'
  }
  }
  @setup_requisitante = RequisitanteService.new(@requisitante_body_incluir, @requisitante_urlservice)
  @setup_requisitante.operacoesRequisitante(@asserts[:token], 'incluir')
end
After '@incluir_requisitante' do
  gerarToken 
  @requisitante_url = 'wsREQUISITANTE.asmx?wsdl'
  @requisitante_urlservice = @base_url + @requisitante_url
  @requisitante_body_excluir = {
  'CODREQUIS' => '1303',
  'NOME' => 'xablau',
  'fc_EMPRESA' => {
    'EMPRESA' => '004',
    'MATRIZ' => '001'
  }
  }
  @setup_requisitante = RequisitanteService.new(@requisitante_body_excluir, @requisitante_urlservice)
  @setup_requisitante.operacoesRequisitante(@asserts[:token], 'excluir')
end
