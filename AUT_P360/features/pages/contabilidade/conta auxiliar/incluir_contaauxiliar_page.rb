class IncluirContaAuxiliar < SitePrism::Page
  include Pages
  element :campoCodigo, 'procenge-inputtext[identificador="codigo"] input'
  element :campoDescricao, 'procenge-inputtext[identificador="descricao"] input'
 
  def incluirContaAux(codigo, descricao, filtroGrupo)
    sleep 5
    gerais.preencherDropdown("grupoconta", filtroGrupo)#automacao
    campoCodigo.set codigo
    campoDescricao.set descricao
    sleep 5
    click_button('Salvar')
    sleep 2
  end
end