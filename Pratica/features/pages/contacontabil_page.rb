class ContaContabil < SitePrism::Page
  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :contacontabil, 'a[href="/P360AUTOMATO/contabilidade/contacontabil"] span'
  element :campoConta, 'input#CONTA'
  element :campoDescricao, 'procenge-inputtextarea[identificador="DESCRICAO"] textarea'
  element :campoReduzido, 'input#reduzido'

  def acessarTelaContaContabil
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    click_link 'Plano de Contas'
    contacontabil.click
    sleep 5
  end

  def incluirContaContabil(conta, descricao, reduzido)
    click_button 'Incluir'
    sleep 5
    campoConta.set conta
    campoDescricao.set descricao
    campoReduzido.set reduzido
    sleep 5
    click_button('Salvar')
    sleep 2
  end

  def excluircontacontabil
    find('procenge-inputtextrange[identificador="reduzido"] input').set "aaaaa"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
