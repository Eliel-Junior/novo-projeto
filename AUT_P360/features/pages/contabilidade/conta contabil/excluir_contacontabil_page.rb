class ExcluirContaContabil < SitePrism::Page
  include Pages
  element :campoReduzido, 'procenge-inputtextrange[identificador="reduzido"] input'
  
  def pesquisarContaContabil
    campoReduzido.set 'aaaaa'
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end
  
  def excluirContaContabil
    click_button 'Excluir'
    click_button 'Sim'
  end
end
