class Requisitante < SitePrism::Page
  include Pages
  element :telaRequisitante, 'a[href="/P360AUTOMATO/estoque/requisitante"] span'
  element :campoCodigo, 'input#codigo'
  element :campoNome, 'input#nome'
  element :receberEmailSim, '#indRecebeEmail div[class="ui-radiobutton-box ui-widget ui-state-default"] span'
  element :indAtivo, '#indAtivo div[class="ui-radiobutton-box ui-widget ui-state-default"] span'
  
  def acessarTelaIncluirRequisitante
    find('.modulo', text: 'Estoque', wait: 5).click
    sleep 5
    click_link 'Cadastros Básicos'
    telaRequisitante.click
    sleep 3
  end
  
  def incluirRequisitante(codigo, nome, filtroFilial)
    click_button 'Incluir'
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
    find('procenge-dropdownrange[identificador="requisitante"] p-dropdown label').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end

