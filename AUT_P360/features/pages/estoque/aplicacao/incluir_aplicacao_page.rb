class IncluirAplicacao < SitePrism::Page
  include Pages
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'
  
  def incluirAplicacao(codigo, descricao, filtroCentroCusto, filtroFonteRecurso)
    campoCodigo.set codigo
    campoDescricao.set descricao
    gerais.preencherDropdown("centrocusto", filtroCentroCusto)#teste automacao
    gerais.preencherDropdown("fonterecurso", filtroFonteRecurso)#rafa
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end