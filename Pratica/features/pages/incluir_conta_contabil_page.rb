class IncluirContaContabil < SitePrism::Page
  #include Capybara::DSL

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
    click_button 'Incluir'
    sleep 5
  end

  def incluirContaContabil(conta, descricao, reduzido)
    #find('#versaoPlanoConta label[class="ng-tns-c14-34 ui-dropdown-label ui-inputtext ui-corner-all ui-placeholder ng-star-inserted"]').click
    #find('li[class="ui-dropdown-item ui-corner-all ui-state-highlight"] span').click
    campoConta.set conta
    campoDescricao.set descricao
    campoReduzido.set reduzido
    # find('procenge-dropdown[identificador="naturezaoperacao"] p-dropdown').click
    # find('.ui-dropdown-items-wrapper', text: '01 - Contas de ativo').click
    sleep 5
    click_button('Salvar')
    sleep 2
  end

end
