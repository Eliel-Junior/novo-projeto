class AlterarContaAuxiliar < SitePrism::Page
  include Pages
  element :descricao, 'procenge-inputtext[identificador="descricao"] input'
  element :campoContaInicial, 'procenge-inputtext[identificador="containicial"] input'
  element :campoContaFinal, 'procenge-inputtext[identificador="contaFinal"] input'

  def pesquisarContaAux
    descricao.set 'xablau'
    # campoContaInicial.set '1303'
    # campoContaFinal.set '1303'
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
  end

  def alterarContaAux
    descricao.send_keys [:control, 'a'], :backspace
    descricao.set "xablau13"
    click_button 'Salvar'
  end
end
