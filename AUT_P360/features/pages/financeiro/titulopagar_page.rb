class TituloPagar < SitePrism::Page 
  include Pages
  #Dados Gerais
  element :codigoTitulo, 'procenge-inputtext[identificador="codigoTitulo"] input'#1303
  element :dataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  element :itemdataVencimento, 'procenge-calendar[identificador="dataVencimento"] p-calendar input'
  #Valor
  element :valor, 'procenge-inputnumber[identificador="valorMoeda"] input'
  #NDO
  element :valorNdo, 'div#valor procenge-inputnumber[nome="Valor"] input'#100
  
  def incluirTituloPagar(pcodigoTitulo, pfiltroFornecedor, pfiltroDucumento, pvalor, pfiltroNDO, pvalorNdo)
    sleep 3
    #dados gerais
    codigoTitulo.set pcodigoTitulo
    gerais.preencherDropdownpaginado("fornecedor", pfiltroFornecedor)#fornecedor teste
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

  def excluirtitulopagar
    find('procenge-inputtextrange[identificador="titulo"] input').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
