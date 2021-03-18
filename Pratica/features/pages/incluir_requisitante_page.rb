class IncluirRequisitante < SitePrism::Page

  element :telaRequisitante, 'a[href="/P360AUTOMATO/estoque/requisitante"] span'
  element :campoBuscaFilial, '#filial p-dropdown span'
  element :itemBuscaFilial, 'p-dropdownitem li[aria-label="056 - AGRO IND. DO VALE S. FRCº S/A-AGROVALE"] span'
  element :campoCodigo, 'input#codigo'
  element :campoNome, 'input#nome'
  element :receberEmailSim, '#indRecebeEmail div[class="ui-radiobutton-box ui-widget ui-state-default"] span'
  element :indAtivo, '#indAtivo div[class="ui-radiobutton-box ui-widget ui-state-default"] span'

  def acessarTelaIncluirRequisitante
    sleep 5
    find('.modulo', text: 'Estoque').click
    sleep 5
    click_link 'Cadastros Básicos'
    telaRequisitante.click
    sleep 3
    click_button 'Incluir'
  end

  def incluirRequisitante(codigo, nome)
    campoBuscaFilial.click
    itemBuscaFilial.click
    campoCodigo.set codigo
    campoNome.set nome
    receberEmailSim.click
    indAtivo.click
    sleep 5
    click_button('Salvar')
    sleep 2
  end
  
end