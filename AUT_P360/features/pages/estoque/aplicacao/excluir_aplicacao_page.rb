class ExcluirAplicacao < SitePrism::Page
  include Pages
  def pesquisarAplicacao
    gerais.preencherDropdownrange("aplicacao", "1303")
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def excluirAplicacao
    click_button 'Excluir'
    click_button 'Sim'
  end
end
