class ContaAuxiliar < SitePrism::Page
  include Pages
  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :contaAuxiliar, 'a[href="/P360AUTOMATO/contabilidade/contaauxiliar"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'

  def acessarTelaContaAuxiliar
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    click_link 'Plano de Contas'
    contaAuxiliar.click
    sleep 5
  end
  
  def incluirContaAux(codigo, descricao, filtroGrupo)
    click_button 'Incluir'
    sleep 5
    gerais.preencherDropdown("grupoconta", filtroGrupo)#automacao
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end

  def excluircontaauxiliar
    find('procenge-inputtext[identificador="containicial"] input').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end

  def alterarcontaauxiliar
    find('procenge-inputtext[identificador="descricao"] input').set "xablau"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Alterar'
    find('procenge-inputtext[identificador="descricao"] input').send_keys [:control, 'a'], :backspace
    find('procenge-inputtext[identificador="descricao"] input').set "xablau13"
    click_button "Salvar"
  end
end
