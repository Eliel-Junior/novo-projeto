class IncluirCliente < SitePrism::Page
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
    
    @gerais.preencherDropdown("area", pfiltroArea)#nordeste
    area.click
    filtro.set pfiltroArea
    itemArea.click
    
    @gerais.preencherDropdownmultivalorado("Segmento de Mercado", pfiltroSegmentoMercado)#farma
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
    @gerais.preencherDropdown("documentopagamento", pfiltroDocumento)#deposito
    find('p', text: 'Conta Contábil').click
    click_button 'Contas Contábeis' 
    @gerais.preencherDropdown("contacontabil", filtroContaContabil)
    adicionar.click
    sleep 2
    click_button 'Adicionar'
    sleep 5
    click_button('Salvar')
    sleep 2 
  end
end
# @text = page.all('procenge-inputtext[identificador="dataCadastro"] label').text
# element :area, 'procenge-dropdown[identificador="area"] p-dropdown'
# element :filtro, 'procenge-dropdown[identificador="area"] p-dropdown input[placeholder="PESQUISAR"]' #nordeste
# element :itemArea, 'procenge-dropdown[identificador="area"] p-dropdown p-dropdownitem span'
# element :segmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect'
# element :filtroSegmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect input[placeholder="PESQUISAR"]' #farma
# element :itemSegmentoMercado, 'procenge-dropdownmultivalorado[nome="Segmento de Mercado"] p-multiselect div[class="ui-widget-header ui-corner-all ui-multiselect-header ui-helper-clearfix ng-tns-c34-81 ng-star-inserted"] span[class="ui-chkbox-icon ui-clickable"]'
# documentoPagamento.click
# filtroDucumento.set pfiltroDocumento
# itemDocumento.click
# contaContabil.click
# first('procenge-dropdown[identificador="contacontabil"] p-dropdown p-dropdownitem span').click
# element :empresa, 'procenge-dropdown[identificador="empresa"] p-dropdown span'
# element :filtroEmpresa, 'procenge-dropdown[identificador="empresa"] p-dropdown input[placeholder="PESQUISAR"]' #teste
# element :itemEmpresa, 'procenge-dropdown[identificador="empresa"] p-dropdown p-dropdownitem span'
# element :documentoPagamento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown span'
# element :filtroDucumento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown input[placeholder="PESQUISAR"]' #deposito
# element :itemDocumento, 'procenge-dropdown[identificador="documentopagamento"] p-dropdown p-dropdownitem span'
# puts @text
# segmentoMercado.click
# filtroSegmentoMercado.set pfiltroSegmentoMercado
# find('#segmentomercado p-multiselect span.ui-chkbox-icon').click{8}
#first("#segmentomercado p-multiselect span.ui-chkbox-icon").click
#find("#segmentomercado p-multiselect span.ui-chkbox-icon", text: "FARMACEUTICA").click
#find("#segmentomercado p-multiselect span.ui-chkbox-icon")[8].click
#all("#segmentomercado p-multiselect span.ui-chkbox-icon")[8].click
# page.within(element = div)do
# end
