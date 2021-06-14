class IncluirHisP < SitePrism::Page
  include Pages
  element :campoCodigo, 'procenge-inputtext[identificador="codigo"] input'
  element :campoHistorico, 'input[id="historico"]'

  def incluirHistorico(codigo, historico)
    campoCodigo.set codigo
    campoHistorico.set historico
    sleep 5
    click_button('Salvar')
    sleep 2
  end 
end