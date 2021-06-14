E('acesso a página de incluir gênero') do
  step%(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Gênero
    Então deve exibir a tela de Gênero
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Gênero Produto', exact: true)
end

Quando('eu incluir um gênero com {string} e {string}') do |codigo, descricao|
  incluirGenero.incluirGenero(codigo, descricao)
end
