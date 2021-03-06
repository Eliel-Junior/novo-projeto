class IncluirGenero < SitePrism::Page

  element :acessarTelaGenero, 'a[href="/P360AUTOMATO/estoque/generoproduto"] span'
  element :campoCodigo, 'input#codgeneroGeneroproduto'
  element :campoDescricao, 'input#dscgeneroGeneroproduto'
  element :combustivelNao, '#indcombustivelGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'
  element :petroleoNao, '#indpetroleoGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'
  element :medicamentoNao, '#indmedicamentoGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'

  def acessarTelaIncluirGenero
    sleep 5
    find('.modulo', text: 'Estoque').click
    sleep 5
    click_link 'Cadastros Básicos'
    acessarTelaGenero.click
    sleep 3
    click_button 'Incluir'
  end

  def incluirGenero(codigo, descricao)
    campoCodigo.set codigo
    campoDescricao.set descricao
    combustivelNao.click
    petroleoNao.click
    medicamentoNao.click
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
