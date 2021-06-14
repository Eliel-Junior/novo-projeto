E('acesse a página de incluir título a pagar') do
  steps%(
    E que eu acesse o módulo de Financeiro
    Quando eu acesso a página de Título a Pagar
    Então deve exibir a tela de Título a Pagar
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Títulos a Pagar', exact: true)
end

Quando('eu incluir um novo título') do 
  incluirtitulopagar.incluirTituloPagar("1303", "fornecedor teste", "eletro", "10000", "conta de luz", "10000")
end
