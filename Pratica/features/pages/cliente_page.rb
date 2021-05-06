class Cliente < SitePrism::Page
  include Capybara::DSL
  include Pages
  element :telaCadastro, 'procenge-panelmenu#panelMenu procenge-panelmenusub ul a[id="01.01.01"] span[class="ui-menuitem-text"]'
  element :telaCliente, 'a[href="/P360AUTOMATO/financeiro/cliente"] span'
  #preenchimento de dados gerais
  element :codigo, 'procenge-inputtext[identificador="codigoCliente"] input'
  element :cpf, 'procenge-inputcpf[identificador="cpf"] input'
  element :email, 'procenge-inputemail[identificador="email"] input'
  element :nome, 'procenge-inputtext[identificador="nomeCliente"] input'
  #preenchimento de dados de endereço
  element :cep, 'procenge-inputcep[identificador="cep"] p-inputmask input'
  element :numero, 'procenge-inputtext[identificador="numeroEndereco"] input'
  element :complemento, 'procenge-inputtext[identificador="complemento"] input'
  element :telefone, 'procenge-inputtextmask[identificador="fone"] p-inputmask input'
  element :radioSim, '#usarComoCobranca procenge-radiobutton span[class="ui-radiobutton-icon ui-clickable"]'
  #informações da empresa
  element :contaContabil, 'procenge-dropdown[identificador="contacontabil"] p-dropdown span'
  element :adicionar, 'div[id="Incluir  Conta Contábil"] procenge-button[tipo="adicionar"] button'
  
  def acessarTelaIncluirCliente
    find('.modulo', text: 'Financeiro', wait: 5).click
    sleep 5
    click_link 'Contas a Receber'
    telaCadastro.click
    telaCliente.click
    sleep 3
  end
  
  def incluirCliente(cod, pcpf, pemail, pnome, pfiltroArea, pfiltroSegmentoMercado, pcep, pnumero, pcomplemento, ptelefone, pfiltroDocumento, filtroContaContabil)
    click_button 'Incluir'
    sleep 3
    #prenchimento de dados gerais 
    codigo.set cod
    cpf.set pcpf
    email.set pemail
    nome.set pnome
    gerais.preencherDropdown("area", pfiltroArea)#nordeste
    # area.click
    # filtro.set pfiltroArea
    # itemArea.click
    gerais.preencherDropdownmultivalorado("Segmento de Mercado", pfiltroSegmentoMercado)#farma
    sleep 3
    #preenchimeto de dados de endereço
    find('p', text: 'Endereço').click
    cep.set pcep
    numero.set pnumero
    first('input#complemento').set pcomplemento
    telefone.set ptelefone
    radioSim.click
    #informações da empresa
    find('p', text: 'Informações por Empresa').click
    click_button 'Empresa'
    gerais.preencherDropdown("documentopagamento", pfiltroDocumento)#deposito
    find('p', text: 'Conta Contábil').click
    click_button 'Contas Contábeis' 
    gerais.preencherDropdown("contacontabil", filtroContaContabil)
    adicionar.click
    sleep 2
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2 
  end

  def excluircliente
    gerais.preencherDropdownpaginado("codogo", "1303")
    # find('procenge-dropdownpaginado[identificador="codigo"] p-dropdown label').click
    # find('procenge-dropdownpaginado[identificador="codigo"] p-dropdown input[placeholder="PESQUISAR"]').set "1303"
    # find('procenge-dropdownpaginado[identificador="codigo"] p-dropdown p-dropdownitem span').click
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end

  def alterarcliente
    gerais.preencherDropdownpaginado("codigo", "1303")
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Alterar'
    find('procenge-inputtext[identificador="nomeCliente"] input').send_keys [:control, 'a'], :backspace
    find('procenge-inputtext[identificador="nomeCliente"] input').set "xablau13"
    click_button "Salvar"
  end
end
