E('acesse a página de gênero') do
  incluirgenero.acessarTelaIncluirGenero
  expect(page).to have_content('Gênero Produto')
end

Quando('eu incluir um gênero com {string} e {string}') do |codigo, descricao|
  incluirgenero.incluirGenero(codigo, descricao)
end
