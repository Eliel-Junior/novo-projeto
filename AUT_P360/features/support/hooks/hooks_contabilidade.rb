#Inicio dos services de Histórico Padrão
Before '@excluir_histp or @alterar_histP' do
  gerarToken
  @histp_url = 'wsHistorico.asmx?wsdl'
  @histp_urlservice = @base_url + @histp_url
  @histp_body_incluir = {
    'CODHIST' => '1303',
    'HISTORICO' => 'xablau',
    'COMPLEMENTO' => 'N',
    'IND_FORMATA_COMPL' => 'N'
  }
  @setup_histp = HistoricoPadraoService.new(@histp_body_incluir, @histp_urlservice)
  @setup_histp.operacoesHistoricoPadrao(@asserts[:token], 'incluir')
end

After '@incluir_histp or @alterar_histP' do
  gerarToken
  @histp_url = 'wsHistorico.asmx?wsdl'
  @histp_urlservice = @base_url + @histp_url
  @histp_body_excluir = {
    'CODHIST' => '1303',
    'HISTORICO' => 'xablau'
  }
  @setup_histp = HistoricoPadraoService.new(@histp_body_excluir, @histp_urlservice)
  @setup_histp.operacoesHistoricoPadrao(@asserts[:token], 'excluir')
end

#Inicio dos services de Conta Auxiliar
Before '@excluir_conta_auxiliar or @alterar_conta_auxiliar' do
  gerarToken
  @conta_aux_url = 'wsITEM_CNTAUX.asmx?wsdl'
  @conta_aux_urlservice = @base_url + @conta_aux_url
  @conta_aux_body_incluir = {
    'EMPRESA' => '001',
    'CNT_AUX' => '2019',
    'ITEM_CNTAUX' => '2019',
    'DESCRICAO' => 'xablau',
    'IND_INATIVA' =>'N'
  }
  @setup_conta_aux = ContaAuxiliarService.new(@conta_aux_body_incluir, @conta_aux_urlservice)
  @setup_conta_aux.operacoesContaAuxiliar(@asserts[:token], 'incluir')
end

After '@incluir_conta_auxiliar or @alterar_conta_auxiliar' do
  gerarToken
  @conta_aux_url = 'wsITEM_CNTAUX.asmx?wsdl'
  @conta_aux_urlservice = @base_url + @conta_aux_url
  @conta_aux_body_excluir = {
    'EMPRESA' => '001',
    'CNT_AUX' => '2019',
    'ITEM_CNTAUX' => '2019',
    'DESCRICAO' => 'xablau',
    'IND_INATIVA' =>'N'
  }
  @setup_conta_aux = ContaAuxiliarService.new(@conta_aux_body_excluir, @conta_aux_urlservice)
  @setup_conta_aux.operacoesContaAuxiliar(@asserts[:token], 'excluir')
end

#Inicio dos services de Conta Contábil
Before '@excluir_conta_contabil' do #add alterar
  gerarToken
  @conta_contabil_url = 'wsCONTAS.asmx?wsdl'
  @conta_contabil_urlservice = @base_url + @conta_contabil_url
  @conta_contabil_body_incluir = {
    'EMPRESA' => '001',
    'CONTA' => '1.1.1.02.99',
    'REDUZIDO' => 'aaaaa',
    'DESCRICAO' => 'xablau',
    'NATUREZA' => 'D',
    'TIPO' => 'A',
    'CCUSTO' => 'N',
    'TEM_CNTAUX' => 'N',
    'DEF_CCUSTO' => 'N',
    'IND_SINTETIZA_CNTAUX' => 'N',
    'IND_INTEGRA_LANCAMENTO' => 'N',
    'IND_ITEM_MONETARIO' => 'N',
    'IND_NAO_PARTICIPA_TRANSF_INTER' => 'N',
    'COD_VERSAO' => '0',
    'IND_CONC_AUTOMATICA' => 'N',
    'IND_CONTA_ESTOQUE' => 'N',
    'IND_ATIVA' => 'S'
  }
  @setup_conta_contabil = ContaContabilService.new(@conta_contabil_body_incluir, @conta_contabil_urlservice)
  @setup_conta_contabil.operacoesContaContabil(@asserts[:token], 'incluir')
end

After '@incluir_conta_contabil' do #add alterar
  gerarToken
  @conta_contabil_url = 'wsCONTAS.asmx?wsdl'
  @conta_contabil_urlservice = @base_url + @conta_contabil_url
  @conta_contabil_body_excluir = {
    'EMPRESA' => '001',
    'CONTA' => '1.1.1.02.99',
    'REDUZIDO' => 'aaaaa',
    'TIPO' => 'A',
    'COD_VERSAO' => '0'
  }
  @setup_conta_contabil = ContaContabilService.new(@conta_contabil_body_excluir, @conta_contabil_urlservice)
  @setup_conta_contabil.operacoesContaContabil(@asserts[:token], 'excluir')
end

#Inicio dos services de Tipo Lançamento
Before '@excluir_tipo_lancamento' do #add alterar
  gerarToken
  @tipo_lancamento_url = 'wstipolanc.asmx?wsdl'
  @tipo_lancamento_urlservice = @base_url + @tipo_lancamento_url
  @tipo_lancamento_body_incluir = {
  'TCODIGO' => '13',
  'TNOME' => 'xablau'
  }
  @setup_conta_aux = TipoLancamentoService.new(@tipo_lancamento_body_incluir, @tipo_lancamento_urlservice)
  @setup_conta_aux.operacoesTipoLancamento(@asserts[:token], 'incluir')
end

After '@incluir_tipo_lancamento' do #add alterar
  gerarToken
  @tipo_lancamento_url = 'wstipolanc.asmx?wsdl'
  @tipo_lancamento_urlservice = @base_url + @tipo_lancamento_url
  @tipo_lancamento_body_excluir = {
  'TCODIGO' => '13',
  'TNOME' => 'xablau'
  }
  @setup_conta_aux = TipoLancamentoService.new(@tipo_lancamento_body_excluir, @tipo_lancamento_urlservice)
  @setup_conta_aux.operacoesTipoLancamento(@asserts[:token], 'excluir')
end
