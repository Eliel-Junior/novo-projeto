class IncluirContaContabil < SitePrism::Page
  include Pages
  element :campoConta, 'input#CONTA'
  element :campoDescricao, 'procenge-inputtextarea[identificador="DESCRICAO"] textarea'
  element :campoReduzido, 'input#reduzido'

  def incluirContaContabil(conta, descricao, reduzido)
    sleep 5
    campoConta.set conta
    campoDescricao.set descricao
    campoReduzido.set reduzido
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
