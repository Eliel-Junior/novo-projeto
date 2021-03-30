class IncluirReserva < SitePrism::Page
  include Pages
  element :acessarTelaReserva, 'href="/P360AUTOMATO/estoque/reserva"] span'
  element :quantidadeReserva, 'procenge-inputnumber[nome="Quantidade Reserva"] input'
  
  def acessarTelaIncluirReserva
    find('.modulo', text: 'Estoque', wait: 5).click
    sleep 5
    click_link 'Operações'
    click_link 'Reserva'
    click_link 'Cadastro de Reserva'
    #acessarTelaReserva.click
    sleep 3
  end
  
  def incluirReserva(quantidade, filtroFilial, filtroResponsavel, filtroAlmoxarifado, filtroProduto)
    click_button 'Incluir'
    gerais.preencherDropdown("aplicacao", filtroAplicacao)#aut - teste
    gerais.preencherDropdown("responsavel", filtroResponsavel)#4 - GDEGF
    gerais.preencherDropdown("almoxarifado", filtroAlmoxarifado)#faltas
    click_button 'Itens'
    gerais.preencherDropdownpaginado("produto", filtroProduto)#aaa
    produto.click
    itemProduto.click
    quantidadeReserva.set quantidade
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2
  end  
end
# element :filial, 'procenge-dropdown[identificador="filial"] p-dropdown span'
# element :itemFilial, 'procenge-dropdown[identificador="filial"] p-dropdown p-dropdownitem li[aria-label="001 - ICOM COMÉRCIO E INDÚSTRIA LTDA - PE"] span'
# element :aplicacao, 'procenge-dropdown[identificador="aplicacao"] p-dropdown span'
# element :itemAplicacao, 'procenge-dropdown[identificador="aplicacao"] p-dropdown p-dropdownitem li[aria-label="AUT - TESTE"] span'
# element :responsavel, 'procenge-dropdown[identificador="responsavel"] p-dropdown span'
# element :itemResponsavel, 'procenge-dropdown[identificador="responsavel"] p-dropdown p-dropdownitem li[aria-label="4 - GDEGF"] span'
# element :almoxarifado, 'procenge-dropdown[identificador="almoxarifado"] p-dropdown span'
# element :itemAlmoxarifado, 'procenge-dropdown[identificador="almoxarifado"] p-dropdown p-dropdownitem li[aria-label="06 - FALTAS"] span'
# almoxarifado.click
# itemAlmoxarifado.click
# aplicacao.click
# itemAplicacao.click
# responsavel.click
# itemResponsavel.click
#  element :produto, 'procenge-dropdownpaginado[identificador="produto"] p-dropdown span'
#  element :itemProduto, 'procenge-dropdownpaginado[identificador="produto"] p-dropdown p-dropdownitem li[aria-label="AAA - AAAAA"]'
