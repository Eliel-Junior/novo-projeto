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
