class IncluirTipoLancamento < SitePrism::Page
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
    click_button 'Incluir'
  end

  def incluirTipoLancamento(codigo, descricao)
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end
  
end
