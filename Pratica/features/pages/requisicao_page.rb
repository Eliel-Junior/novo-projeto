class Requisicao < SitePrism::Page
  include Pages
  element :telaRequisicao, 'a[href="/P360AUTOMATO/estoque/requisicao"] span'
  element :quantidadeRequisitada, 'input#qtdRequisitada'
  
  def acessarTelaIncluirRequisicao
    find('.modulo', text: 'Estoque', waint: 5).click
    sleep 5
    click_link 'Operações'
    click_link 'Requisição'
    telaRequisicao.click
    sleep 3
  end
  
  def incluirRequisicao(quantidade, filtroAlmoxarifado, filtroAplicacao, filtroProduto)
    click_button 'Incluir'
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
    find('procenge-inputtextrange[identificador="codigohistorico"] input').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
# element :aumoxarifado, '#almoxarifado span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
# element :itemAumoxarifado, 'p-dropdownitem li[aria-label="01 - ALMOX1"] span'
# element :aplicacao, '#aplicacao span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
# element :itemAplicacao, 'p-dropdownitem li[aria-label="11 - ALTERADO"] span'
# element :requisitante, '#requisitante span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
# element :itemRequisitante, 'p-dropdownitem li[aria-label="4 - GDEGF"] span'
# element :produto, '#produto span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
# element :itemProduto, 'p-dropdownitem li[aria-label="AAA - AAAAA"] span'
# aumoxarifado.click
# itemAumoxarifado.click
# requisitante.click
# itemRequisitante.click
# aplicacao.click
# itemAplicacao.click
# produto.click
# itemProduto.click
    