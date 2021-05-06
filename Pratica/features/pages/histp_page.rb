class HistoricoPadrao < SitePrism::Page
  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :historicoPadrao, 'a[href="/P360AUTOMATO/contabilidade/historicopadrao"] span' 
  element :campoCodigo, 'procenge-inputtext[identificador="codigo"] input'
  element :campoHistorico, 'input[id="historico"]'

  def acessarTelaHistP
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    historicoPadrao.click
    sleep 3
  end

  def incluirHistP(codigo, historico)
    click_button 'Incluir'
    campoCodigo.set codigo
    campoHistorico.set historico
    sleep 5
    click_button('Salvar')
    sleep 2
  end 

  def excluirhistp
    find('procenge-inputtextrange[identificador="codigohistorico"] input').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
