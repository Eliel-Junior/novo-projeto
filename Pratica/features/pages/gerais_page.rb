#Classe com métodos gerais
class Gerais < SitePrism::Page
  include Pages
  
  def preencherDropdown(identificador, filtro)
    #encontrar dropdown
    dropdown = ("procenge-dropdown[identificador='#{identificador}'] p-dropdown label")
    find(dropdown).click
    #filtra-lo
    filtroDropdown = ("procenge-dropdown[identificador='#{identificador}'] p-dropdown input[placeholder='PESQUISAR']")
    find(filtroDropdown).set filtro
    #clicar no item
    itemDropdown = ("procenge-dropdown[identificador='#{identificador}'] p-dropdown p-dropdownitem span")
    find(itemDropdown).click
  end

  def preencherDropdownpaginado(identificador, filtro)
    #encontrar dropdown
    dropdown = ("procenge-dropdownpaginado[identificador='#{identificador}'] p-dropdown label")
    find(dropdown).click
    #filtra-lo
    filtroDropdown = ("procenge-dropdownpaginado[identificador='#{identificador}'] p-dropdown input[placeholder='PESQUISAR']")
    find(filtroDropdown).set filtro
    #clicar no item
    itemDropdown = ("procenge-dropdownpaginado[identificador='#{identificador}'] p-dropdown p-dropdownitem span")
    find(itemDropdown).click
  end

  def preencherDropdownmultivalorado(nome, filtro)
    #encontrar dropdown
    dropdown = ("procenge-dropdownmultivalorado[nome='#{nome}'] p-multiselect")
    find(dropdown).click
    #filtra-lo
    filtroDropdown = ("procenge-dropdownmultivalorado[nome='#{nome}'] p-multiselect input[placeholder='PESQUISAR']")
    find(filtroDropdown).set filtro
    #clicar no item
    itemDropdown = ("procenge-dropdownmultivalorado[nome='#{nome}'] p-multiselect li[style='display: block;'] span.ng-star-inserted")
    find(itemDropdown).click
  end
end
