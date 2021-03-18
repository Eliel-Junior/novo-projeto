E('acesse a página de incluir título a pagar') do
  incluirTituloPagar = IncluirTituloPagar.new
  incluirTituloPagar.acessarTelaTituloPagar
  expect(page).to have_content('Incluir Títulos a Pagar')
  page.has_button?('procenge-button[tipo="salvar"] button')
end

Quando('eu incluir um novo título') do 
  incluirTituloPagar = IncluirTituloPagar.new
  incluirTituloPagar.incluirTituloPagar("1303", "fornecedor teste", "eletro", "10000", "conta de luz", "10000")
end
