class AlterarAplicacao < SitePrism::Page
  include Pages
  element :descricaoAplicacao, 'procenge-inputtext[identificador="descricao"] input'

  def pesquisarAplicacao
    gerais.preencherDropdownrange("aplicacao", "1303")
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def alteraraplicacao
    descricaoAplicacao.send_keys [:control, 'a'], :backspace
    descricaoAplicacao.set "xablau13"
    click_button "Salvar"
  end
end
