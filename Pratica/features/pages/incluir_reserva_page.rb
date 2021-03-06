class IncluirReserva < SitePrism::Page

  element :acessarTelaReserva, 'href="/P360AUTOMATO/estoque/reserva"] span'
  element :filial, 'procenge-dropdown[identificador="filial"] p-dropdown span'
  element :itemFilial, 'procenge-dropdown[identificador="filial"] p-dropdown p-dropdownitem li[aria-label="001 - ICOM COMÉRCIO E INDÚSTRIA LTDA - PE"] span'
  element :aplicacao, 'procenge-dropdown[identificador="aplicacao"] p-dropdown span'
  element :itemAplicacao, 'procenge-dropdown[identificador="aplicacao"] p-dropdown p-dropdownitem li[aria-label="AUT - TESTE"] span'
  element :responsavel, 'procenge-dropdown[identificador="responsavel"] p-dropdown span'
  element :itemResponsavel, 'procenge-dropdown[identificador="responsavel"] p-dropdown p-dropdownitem li[aria-label="4 - GDEGF"] span'
  element :almoxarifado, 'procenge-dropdown[identificador="almoxarifado"] p-dropdown span'
  element :itemAlmoxarifado, 'procenge-dropdown[identificador="almoxarifado"] p-dropdown p-dropdownitem li[aria-label="06 - FALTAS"] span'
  element :produto, 'procenge-dropdownpaginado[identificador="produto"] p-dropdown span'
  element :itemProduto, 'procenge-dropdownpaginado[identificador="produto"] p-dropdown p-dropdownitem li[aria-label="AAA - AAAAA"]'
  element :quantidadeReserva, 'procenge-inputnumber[nome="Quantidade Reserva"] input'

  def acessarTelaIncluirReserva
    sleep 5
    find('.modulo', text: 'Estoque').click
    sleep 5
    click_link 'Operações'
    click_link 'Reserva'
    click_link 'Cadastro de Reserva'
    #acessarTelaReserva.click
    sleep 3
    click_button 'Incluir'
  end

  def incluirReserva(quantidade)
    filial.click
    itemFilial.click
    aplicacao.click
    itemAplicacao.click
    responsavel.click
    itemResponsavel.click
    almoxarifado.click
    itemAlmoxarifado.click
    click_button 'Itens'
    produto.click
    itemProduto.click
    quantidadeReserva.set quantidade
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
