class TipoLancamento < SitePrism::Page
  include Capybara::DSL
  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :tipoLacamento, 'a[href="/P360AUTOMATO/contabilidade/lancamentotipo"] span'
  element :campoCodigo, 'input#codigoLancamento'
  element :campoDescricao, 'input#descricaoLancamento'

  def acessarTelaTipoLancamento
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    tipoLacamento.click
    sleep 3
  end

  def incluirTipoLancamento(codigo, descricao)
    click_button 'Incluir'
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end  

  def excluirtipolancamento
    find('procenge-inputtextrange[identificador="codigolancamentotipo"] input[id="codigolancamentotipovalorInicial"]').set "1303"
    click_button 'Pesquisar'
    first('p-dtcheckbox span').click
    click_button 'Excluir'
    click_button 'Sim'
  end
end
