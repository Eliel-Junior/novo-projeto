class IncluirCliente < SitePrism::Page
  
  element :telaCadastro, 'procenge-panelmenu#panelMenu procenge-panelmenusub ul a[id="01.01.01"] span[class="ui-menuitem-text"]'
  element :telaCliente, 'a[href="/P360AUTOMATO/financeiro/cliente"] span'
  
  #preenchimento de dados gerais
  element :codigo, 'procenge-inputtext[identificador="codigoCliente"] input'
  element :cpf, 'procenge-inputcpf[identificador="cpf"] input'
  element :email, 'procenge-inputemail[identificador="email"] input'
  element :nome, 'procenge-inputtext[identificador="nomeCliente"] input'
  element :area, 'procenge-dropdown[identificador="area"] p-dropdown'
  element :filtro, 'procenge-dropdown[identificador="area"] p-dropdown input[placeholder="PESQUISAR"]' #nordeste
  element :itemArea, 'procenge-dropdown[identificador="area"] p-dropdown p-dropdownitem span'
  element :segmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect'
  element :filtroSegmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect input[placeholder="PESQUISAR"]' #farma
  element :itemSegmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect div[class="ui-chkbox ui-widget ng-tns-c34-82 ng-star-inserted"] span'

  #preenchimento de dados de endereço
  element :cep, 'procenge-inputcep[identificador="cep"] p-inputmask input'
  element :endereco, 'procenge-inputtext[identificador="enderecofaturamento"] input'
  element :numero, 'procenge-inputtext[identificador="numeroEndereco"] input'
  element :bairro, 'procenge-inputtext[identificador="bairro"] input'
  element :telefone, 'procenge-inputtextmask[identificador="fone"] p-inputmask input'
  element :cidade, 'procenge-inputtext[identificador="enderecofaturamento"] input'
  element :filtroCidade, 'procenge-dropdown[identificador="cidade"] p-dropdown input[placeholder="PESQUISAR"]' #cacoal
  element :itemCidade, 'procenge-dropdown[identificador="cidade"] p-dropdown p-dropdownitem span' 
  element :estado, 'procenge-dropdown[identificador="estado"] p-dropdown'
  element :filtroEstado, 'procenge-dropdown[identificador="estado"] p-dropdown input[placeholder="PESQUISAR"]'
  element :itemEstado, 'procenge-dropdown[identificador="estado"] p-dropdown p-dropdownitem span'
  element :radioSim, 'procenge-radiobutton[nome="Endereço de cobrança igual ao de faturamento"] p-radiobutton[class="ng-valid ng-dirty ng-touched"] span'
  
  #informações da empresa
  element :empresa, 'procenge-dropdown[identificador="empresa"] p-dropdown span'
  element :filtroEmpresa, 'procenge-dropdown[identificador="empresa"] p-dropdown input[placeholder="PESQUISAR"]' #teste
  element :itemEmpresa, 'procenge-dropdown[identificador="empresa"] p-dropdown p-dropdownitem span'
  element :documentoPagamento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown span'
  element :filtroDucumento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown input[placeholder="PESQUISAR"]' #deposito
  element :itemDocumento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown p-dropdownitem span'
  
  def acessarTelaIncluirCliente
    sleep 5
    find('.modulo', text: 'Financeiro').click
    sleep 5
    click_link 'Contas a Receber'
    telaCadastro.click
    telaCliente.click
    sleep 3
    click_button 'Incluir'
    sleep 3
  end

  def incluirCliente(cod, pcpf, pemail, pnome, pfiltroArea, pcep, pendereco, pnumero, pbairro, ptelefone, pfiltroCidade, pfiltroEmpresa, pfiltroDocumento)
    #prenchimento de dados gerais
    codigo.set cod
    cpf.set pcpf
    email.set pemail
    nome.set pnome
    area.click
    filtro.set pfiltroArea
    itemArea.click
    # segmentoMercado.click
    # filtroSegmentoMercado.set pfiltroSegmentoMercado
    # itemSegmentoMercado.click

    #preenchimeto de dados de endereço
    find('p', text: 'Endereço').click
    cep.set pcep
    endereco.set pendereco
    numero.set pnumero
    bairro.set pbairro
    telefone.set ptelefone
    radioSim.click
    cidade.click
    filtroCidade.set pfiltroCidade
    itemCidade.click

    #informações da empresa
    click_button 'Empresa'
    empresa.click
    filtroEmpresa.set pfiltroEmpresa
    itemEmpresa.click
    documentoPagamento.click
    filtroDucumento.set pfiltroDocumento
    itemDocumento.click
    find('p', text: 'Conta Contábil').click
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2 
  end
end