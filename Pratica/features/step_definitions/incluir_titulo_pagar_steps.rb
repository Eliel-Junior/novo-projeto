E('acesse a página de título a pagar') do
  incluirtitulopagar.acessarTelaTituloPagar
  expect(page).to have_content('Títulos a Pagar')
  #page.has_button?('procenge-button[tipo="salvar"] button')
end

Quando('eu incluir um novo título') do 
  incluirtitulopagar.incluirTituloPagar("1303", "fornecedor teste", "eletro", "10000", "conta de luz", "10000")
end
