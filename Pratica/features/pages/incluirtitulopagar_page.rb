class IncluirTituloPagar < SitePrism::Page 
  include Pages
  #Dados Gerais
  element :codigoTitulo, 'procenge-inputtext[identificador="codigoTitulo"] input'#1303
  element :dataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  element :itemdataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  #Valor
  element :valor, 'procenge-inputnumber[identificador="valorMoeda"] input'
  #NDO
  element :valorNdo, 'div#valor procenge-inputnumber[nome="Valor"] input'#100

  def acessarTelaTituloPagar
    find('.modulo', text: 'Financeiro', wait: 5).click
    sleep 5
    click_link 'Contas a Pagar'
    click_link 'Operações'
    click_link 'Títulos a Pagar'
    sleep 3
  end
  
  def incluirTituloPagar(pcodigoTitulo, pfiltroFornecedor, pfiltroDucumento, pvalor, pfiltroNDO, pvalorNdo)
    click_button 'Incluir'
    sleep 3
    #dados gerais
    codigoTitulo.set pcodigoTitulo
    gerais.preencherDropdown("fornecedor", pfiltroFornecedor)#fornecedor teste
    gerais.preencherDropdown("documento", pfiltroDucumento)#eletro
    dataVencimento.click
    find('td', text: '19').click
    #valor
    find('p', text: 'Valores').click
    valor.set pvalor
    #ndo
    find('p', text: 'NDO').click
    click_button 'NDO'
    gerais("ndo", pfiltroNDO)#conta de luz
    valorNdo.set pvalorNdo
    click_button 'Adicionar'
    click_button 'Salvar'
  end
end
# element :filtroFornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown input[placeholder="PESQUISAR"]' #fornecedor teste
# element :itemFornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown p-dropdownitem span'
# element :documento, 'procenge-dropdown[identificador="documento"] p-dropdown label'
# element :filtroDucumento, 'procenge-dropdown[identificador="documento"] p-dropdown input[placeholder="PESQUISAR"]' #eletro
# element :itemDocumento, 'procenge-dropdown[identificador="documento"] p-dropdown p-dropdownitem span'
# element :dadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown label'
# element :filtroDadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown input[placeholder="PESQUISAR"]'#conta de luz
# element :itemDadosGerais, 'procenge-dropdown[identificador="ndo"] p-dropdown p-dropdownitem span'
# fornecedor.click
# filtroFornecedor.set pfiltroFornecedor
# itemFornecedor.click
# documento.click
# filtroDucumento.set pfiltroDucumento
# itemDocumento.click
# element :fornecedor, 'procenge-dropdownpaginado[identificador="fornecedor"] p-dropdown label'
# dadosGerais.click
# filtroDadosGerais.set pfiltroDadosGerais
# itemDadosGerais.click
