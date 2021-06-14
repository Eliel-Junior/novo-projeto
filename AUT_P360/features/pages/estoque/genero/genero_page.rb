class Genero < SitePrism::Page
  element :campoCodigo, 'input#codgeneroGeneroproduto'
  element :campoDescricao, 'input#dscgeneroGeneroproduto'
  element :combustivelNao, '#indcombustivelGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'
  element :petroleoNao, '#indpetroleoGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'
  element :medicamentoNao, '#indmedicamentoGeneroproduto span[class="ui-radiobutton-icon ui-clickable"]'

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

  def excluirgenero
    find('procenge-inputtext[identificador="dscgeneroGeneroproduto"] input').set "xablau13"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
