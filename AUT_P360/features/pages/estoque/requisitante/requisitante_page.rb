class Requisitante < SitePrism::Page
  include Pages
  element :campoCodigo, 'input#codigo'
  element :campoNome, 'input#nome'
  element :receberEmailSim, '#indRecebeEmail div[class="ui-radiobutton-box ui-widget ui-state-default"] span'
  element :indAtivo, '#indAtivo div[class="ui-radiobutton-box ui-widget ui-state-default"] span'

  def incluirRequisitante(codigo, nome, filtroFilial)
    gerais.preencherDropdown("filial", filtroFilial)#automacao
    campoCodigo.set codigo
    campoNome.set nome
    receberEmailSim.click
    indAtivo.click
    sleep 5
    click_button('Salvar')
    sleep 2
  end  

  def excluirrequisitante
    gerais.preencherDropdownrange('requisitante', '1303')
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
