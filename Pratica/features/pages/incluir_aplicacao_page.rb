class IncluirAplicacao < SitePrism::Page
  #include Capybara::DSL

  element :acessarTelaAplicacao, 'a[href="/P360AUTOMATO/estoque/aplicacao"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'
  element :centroCusto, '#centrocusto span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemCentroCusto, 'p-dropdownitem li[aria-label="12101 - DIRECIONAMENTO EXECUTIVO"]'
  element :fonteRecurso, '#fonterecurso span[class="ui-dropdown-trigger-icon ui-clickable fa fa-fw fa-angle-down"]'
  element :itemFonteRecurso, 'p-dropdownitem li[aria-label="00 - FONTE DE RECURSO INTERNA"]'

  def acessarTelaIncluirAplicacao
    sleep 5
    find('.modulo', text: 'Estoque').click
    sleep 5
    click_link 'Cadastros Básicos'
    acessarTelaAplicacao.click
    sleep 3
    click_button 'Incluir'
  end

  def incluirAplicacao(codigo, descricao)
    campoCodigo.set codigo
    campoDescricao.set descricao
    centroCusto.click
    itemCentroCusto.click
    fonteRecurso.click
    itemFonteRecurso.click
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
