class AlterarContaContabil < SitePrism::Page
  include Pages
  element :campoDescricao, 'procenge-inputtext[identificador="DESCRICAO"] input'
  element :campoReduzido, 'procenge-inputtextrange[identificador="reduzido"] input'
  
  def pesquisarContaContabil
    campoReduzido.set '1303'
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end
  
  def alterarContaContabil
    campoDescricao.send_keys [:control, 'a'], :backspace
    campoDescricao.set "xablau13"
    click_button 'Salvar'
  end
end
