class AlterarTipoLancamento < SitePrism::Page
  include Capybara::DSL
  element :codigoInicial, 'procenge-inputtextrange[identificador="codigolancamentotipo"] input[id="codigolancamentotipovalorInicial"]'
  element :descricaoInicial, 'procenge-inputtextrange[identificador="descricaolancamentotipo"] input[id="descricaolancamentotipovalorInicial"]'
  element :descricaoAlterar, 'procenge-inputtext[identificador="descricaoLancamento"] input'

  def pesquisarTipoLancamento
    codigoInicial.set '13'
    descricaoInicial.set 'xablau'
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def alterarTipoLancamento
    descricaoAlterar.send_keys [:control, 'a'], :backspace
    descricaoAlterar.set 'xablau13'
    click_button 'Salvar'
  end
end
