class IncluirAplicacao < SitePrism::Page
  include Pages
  element :acessarTelaAplicacao, 'a[href="/P360AUTOMATO/estoque/aplicacao"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'
  
  def acessarTelaIncluirAplicacao
    find('.modulo', text: 'Estoque', wait: 5).click
    sleep 5
    click_link 'Cadastros Básicos'
    acessarTelaAplicacao.click
    sleep 3
  end

  def incluirAplicacao(codigo, descricao, filtroCentroCusto, filtroFonteRecurso)
    click_button 'Incluir'
    campoCodigo.set codigo
    campoDescricao.set descricao
    gerais.preencherDropdown("centrocusto", filtroCentroCusto)#teste automacao
    gerais.preencherDropdown("fonterecurso", filtroFonteRecurso)#rafa
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
      # element :centroCusto, 'procenge-dropdown[identificador="centrocusto"] p-dropdown span'
      # element :itemCentroCusto, 'procenge-dropdown[identificador="centrocusto"] p-dropdown p-dropdownitem li[aria-label="512 - TESTE"]'
      
      # element :fonteRecurso, 'procenge-dropdown[identificador="fonterecurso"] p-dropdown span'
      # element :itemFonteRecurso, 'procenge-dropdown[identificador="fonterecurso"] p-dropdown p-dropdownitem li[aria-label="22 - FONTE DE RECURSO RAFAEL BANK"]'

      # centroCusto.click
      # itemCentroCusto.click
      # fonteRecurso.click
      # itemFonteRecurso.click
      