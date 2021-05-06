Quando('eu excluir uma conta auxiliar') do
  find('procenge-inputtext[identificador="containicial"] input').set "1303"
  click_button 'Pesquisar'
  first('p-dtcheckbox span').click
  click_button 'Excluir'
  click_button 'Sim'
end