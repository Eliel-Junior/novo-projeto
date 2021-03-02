class IncluirHistoricoPadrao < SitePrism::Page
  #include Capybara::DSL

  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :historicoPadrao, 'a[href="/P360AUTOMATO/contabilidade/historicopadrao"] span'
  element :telaIncluirHistoricoP, 'button[class="btn ng-star-inserted btn-primary"]'
  element :campoCodigo, 'procenge-inputtext[identificador="codigo"] input'
  element :campoHistorico, 'input[id="historico"]'

  def acessarTelaHistP
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    historicoPadrao.click
    sleep 3
    telaIncluirHistoricoP.click
  end
  def incluirHistP(codigo, historico)
    campoCodigo.set codigo
    campoHistorico.set historico
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
