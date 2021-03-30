class IncluirContaAuxiliar < SitePrism::Page
  include Pages
  element :moduloContabilidade, 'img[src="assets/imagens/modulos/contabilidade.svg"]'
  element :contaAuxiliar, 'a[href="/P360AUTOMATO/contabilidade/contaauxiliar"] span'
  element :campoCodigo, 'input#codigo'
  element :campoDescricao, 'input#descricao'

  def acessarTelaContaAuxiliar
    moduloContabilidade.click
    sleep 3
    click_link 'Cadastros'
    click_link 'Plano de Contas'
    contaAuxiliar.click
    sleep 5
  end
  
  def incluirContaAux(codigo, descricao, filtroGrupo)
    click_button 'Incluir'
    sleep 5
    gerais.preencherDropdown("grupoconta", filtroGrupo)#automacao
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end
# element :campoGrupo, 'procenge-dropdown[identificador="grupoconta"] p-dropdown span'
# element :itemGrupo, 'procenge-dropdown p-dropdown p-dropdownitem li[aria-label="2019 - AUTOMACAO"] span'
# campoGrupo.click
# itemGrupo.click