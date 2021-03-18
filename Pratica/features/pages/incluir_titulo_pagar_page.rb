class IncluirTituloPagar < SitePrism::Page 

  #Dados Gerais
  element :codigoTitulo, 'procenge-inputtext[identificador="codigoTitulo"] input'#1303
  element :fornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown label'
  element :filtroFornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown input[placeholder="PESQUISAR"]' #fornecedor teste
  element :itemFornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown p-dropdownitem span'
  element :documento, 'procenge-dropdown[identificador="documento"] p-dropdown label'
  element :filtroDucumento, 'procenge-dropdown[identificador="documento"] p-dropdown input[placeholder="PESQUISAR"]' #eletro
  element :itemDocumento, 'procenge-dropdown[identificador="documento"] p-dropdown p-dropdownitem span'
  element :dataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  element :itemdataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  
  #Valor
  element :valor, 'procenge-inputnumber[identificador="valorMoeda"] input'
  
  #NDO
  element :dadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown label'
  element :filtroDadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown input[placeholder="PESQUISAR"]'#conta de luz
  element :itemDadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown p-dropdownitem span'
  element :valorNdo, 'div#valor procenge-inputnumber[nome="Valor"] input'#100

  def acessarTelaTituloPagar
    sleep 5
    find('.modulo', text: 'Financeiro').click
    sleep 5
    click_link 'Contas a Pagar'
    click_link 'Operações'
    click_link 'Títulos a Pagar'
    sleep 3
    click_button 'Incluir'
    sleep 3
  end

  def incluirTituloPagar(pcodigoTitulo, pfiltroFornecedor, pfiltroDucumento, pvalor, pfiltroDadosGerais, pvalorNdo)
    #dados gerais
    codigoTitulo.set pcodigoTitulo
    fornecedor.click
    filtroFornecedor.set pfiltroFornecedor
    itemFornecedor.click
    documento.click
    filtroDucumento.set pfiltroDucumento
    itemDocumento.click
    dataVencimento.click
    find('td', text: '19').click
    
    #valor
    find('p', text: 'Valores').click
    valor.set pvalor
    
    #ndo
    find('p', text: 'NDO').click
    click_button 'NDO'
    dadosGerais.click
    filtroDadosGerais.set pfiltroDadosGerais
    itemDadosGerais.click
    valorNdo.set pvalorNdo
    click_button 'Adicionar'
    
    click_button 'Salvar'
  end
  
end