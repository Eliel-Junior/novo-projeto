class AlterarHisP < SitePrism::Page
  include Pages
  element :descricaoHistp, 'procenge-inputtext[identificador="historico"] input'
  element :campoDescriçãoInicial, 'procenge-inputtextrange[identificador="codigohistorico"] [placeholder="Inicial"]'
  element :campoDescriçãoFinal, 'procenge-inputtextrange[identificador="codigohistorico"] [placeholder="Final"]'

  def pesquisarHistp(filtroHistP)
    campoDescriçãoInicial.set filtroHistP
    campoDescriçãoFinal.set filtroHistP
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def alterarHistorico
    descricaoHistp.send_keys [:control, 'a'], :backspace
    descricaoHistp.set "xablau13"
    click_button 'Salvar'
  end
end
