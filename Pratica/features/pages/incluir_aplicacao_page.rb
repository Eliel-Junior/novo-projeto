class IncluirAplicacao < SitePrism::Page

  element :acessarTelaAplicacao, 'a[href="/P360AUTOMATO/estoque/aplicacao"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'
  element :centroCusto, 'procenge-dropdown[identificador="centrocusto"] p-dropdown span'
  element :itemCentroCusto, 'procenge-dropdown[identificador="centrocusto"] p-dropdown p-dropdownitem li[aria-label="512 - TESTE"]'
  element :fonteRecurso, 'procenge-dropdown[identificador="fonterecurso"] p-dropdown span'
  element :itemFonteRecurso, 'procenge-dropdown[identificador="fonterecurso"] p-dropdown p-dropdownitem li[aria-label="22 - FONTE DE RECURSO RAFAEL BANK"]'

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
