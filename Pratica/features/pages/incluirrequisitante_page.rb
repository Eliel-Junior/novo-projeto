class IncluirRequisitante < SitePrism::Page
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
end
# element :campoBuscaFilial, '#filial p-dropdown span'
# element :itemBuscaFilial, 'p-dropdownitem li[aria-label="056 - AGRO IND. DO VALE S. FRCº S/A-AGROVALE"] span'
# campoBuscaFilial.click
# itemBuscaFilial.click
