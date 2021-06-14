class IncluirTipoLancamento < SitePrism::Page
  include Capybara::DSL
  element :campoCodigo, 'input#codigoLancamento'
  element :campoDescricao, 'input#descricaoLancamento'

  def incluirTipoLancamento(codigo, descricao)
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end  
end
