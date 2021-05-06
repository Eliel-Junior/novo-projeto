class Aplicacao < SitePrism::Page
  include Pages
  element :acessarTelaAplicacao, 'a[href="/P360AUTOMATO/estoque/aplicacao"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'
  
  def acessarTelaIncluirAplicacao
    find('.modulo', text: 'Estoque', wait: 5).click
    sleep 5
    click_link 'Cadastros Básicos'
    acessarTelaAplicacao.click
    sleep 3
  end

  def incluirAplicacao(codigo, descricao, filtroCentroCusto, filtroFonteRecurso)
    click_button 'Incluir'
    campoCodigo.set codigo
    campoDescricao.set descricao
    gerais.preencherDropdown("centrocusto", filtroCentroCusto)#teste automacao
    gerais.preencherDropdown("fonterecurso", filtroFonteRecurso)#rafa
    sleep 5
    click_button('Salvar')
    sleep 2
  end

  def excluirAplicacao
    # find('procenge-dropdownrange[identificador="centrocusto"] p-dropdown label').click
    # find('procenge-dropdownrange[identificador="centrocusto"] p-dropdown input[placeholder="PESQUISAR"]').set "teste automacao"
    # find('procenge-dropdownrange[identificador="centrocusto"] p-dropdown p-dropdownitem span').click
    gerais.preencherDropdownrange("centrocusto", "teste automacao")
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end

  def alteraraplicacao
    gerais.preencherDropdownrange("aplicacao", "1303")
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Alterar'
    find('procenge-inputtext[identificador="descricao"] input').send_keys [:control, 'a'], :backspace
    find('procenge-inputtext[identificador="descricao"] input').set "xablau13"
    click_button "Salvar"
  end
end
