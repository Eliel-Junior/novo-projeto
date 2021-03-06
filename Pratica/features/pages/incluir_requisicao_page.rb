class IncluirRequisicao < SitePrism::Page

  element :telaRequisicao, 'a[href="/P360AUTOMATO/estoque/requisicao"] span'

  element :aumoxarifado, '#almoxarifado span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemAumoxarifado, 'p-dropdownitem li[aria-label="01 - ALMOX1"] span'
  element :aplicacao, '#aplicacao span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemAplicacao, 'p-dropdownitem li[aria-label="11 - ALTERADO"] span'
  element :requisitante, '#requisitante span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemRequisitante, 'p-dropdownitem li[aria-label="4 - GDEGF"] span'
  element :produto, '#produto span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemProduto, 'p-dropdownitem li[aria-label="AAA - AAAAA"] span'
  element :quantidadeRequisitada, 'input#qtdRequisitada'

  def acessarTelaIncluirRequisicao
    sleep 5
    find('.modulo', text: 'Estoque').click
    sleep 5
    click_link 'Operações'
    click_link 'Requisição'
    telaRequisicao.click
    sleep 3
    click_button 'Incluir'
  end

  def incluirRequisicao(quantidade)
    aumoxarifado.click
    itemAumoxarifado.click
    aplicacao.click
    itemAplicacao.click
    requisitante.click
    itemRequisitante.click
    find('p', text: 'Itens da Requisição').click
    click_button 'item'
    produto.click
    itemProduto.click
    quantidadeRequisitada.set quantidade
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end