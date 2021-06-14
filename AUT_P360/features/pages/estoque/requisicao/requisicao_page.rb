class Requisicao < SitePrism::Page
  include Pages
  element :quantidadeRequisitada, 'input#qtdRequisitada'
  
  def incluirRequisicao(quantidade, filtroAlmoxarifado, filtroAplicacao, filtroProduto)
    gerais.preencherDropdown("almoxarifado", filtroAlmoxarifado)#faltas
    gerais.preencherDropdown("aplicacao", filtroAplicacao)#aut - teste
    gerais.preencherDropdown("requisitante", filtroRequisitante)#4 - GDEGF
    find('p', text: 'Itens da Requisição').click
    click_button 'item'
    gerais.preencherDropdownpaginado("produto", filtroProduto)#aaa
    quantidadeRequisitada.set quantidade
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2
  end

  def excluirrequisicao
    find('procenge-calendarrange input[id="RequisiçãodataInicial"]').set "08/03/2021"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
    