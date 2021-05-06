class Reserva < SitePrism::Page
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

  def excluirreserva
    find('procenge-dropdownrange[identificador="requisitante"] p-dropdown label').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
