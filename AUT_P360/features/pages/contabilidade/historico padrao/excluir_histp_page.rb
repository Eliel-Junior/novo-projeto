class ExcluirHisP < SitePrism::Page
  include Pages
  element :campoDescriçãoInicial, 'procenge-inputtextrange[identificador="codigohistorico"] [placeholder="Inicial"]'
  element :campoDescriçãoFinal, 'procenge-inputtextrange[identificador="codigohistorico"] [placeholder="Final"]'
  
  def pesquisarHistp(filtroHistP)
    campoDescriçãoInicial.set filtroHistP
    campoDescriçãoFinal.set filtroHistP
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def excluirHistorico
    click_button 'Excluir'
    click_button 'Sim'
  end
end