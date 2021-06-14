class ExcluirTipoLancamento < SitePrism::Page
  include Capybara::DSL
  element :codigoInicial, 'procenge-inputtextrange[identificador="codigolancamentotipo"] input[id="codigolancamentotipovalorInicial"]'
  element :descricaoInicial, 'procenge-inputtextrange[identificador="descricaolancamentotipo"] input[id="descricaolancamentotipovalorInicial"]'
  
  def pesquisarTipoLancamento
    codigoInicial.set '13'
    descricaoInicial.set 'xablau'
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def excluirTipoLancamento
    click_button 'Excluir'
    click_button 'Sim'
  end
end
