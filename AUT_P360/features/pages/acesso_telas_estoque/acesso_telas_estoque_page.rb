class TelasEstoque  < SitePrism::Page
  include Pages
  element :telaAplicacao, 'a[href="/P360AUTOMATO/estoque/aplicacao"] span'
  element :telaGenero, 'a[href="/P360AUTOMATO/estoque/generoproduto"] span'
  element :telaRequisicao, 'a[href="/P360AUTOMATO/estoque/requisicao"] span'
  element :telaRequisitante, 'a[href="/P360AUTOMATO/estoque/requisitante"] span'

  def acessarTelaAplicacao
    click_link 'Cadastros Básicos'
    telaAplicacao.click
  end

  def acessarTelaRequisicao
    click_link 'Operações'
    click_link 'Requisição'
    telaRequisicao.click
  end

  def acessarTelaRequisitante
    click_link 'Cadastros Básicos'
    telaRequisitante.click
  end

  def acessarTelaGenero
    click_link 'Cadastros Básicos'
    telaGenero.click
  end
end