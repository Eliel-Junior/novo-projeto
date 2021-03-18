E('acesse a página de incluir gênero') do
  incluirGenero = IncluirGenero.new
  incluirGenero.acessarTelaIncluirGenero
  expect(page).to have_content('Incluir Gênero Produto')
end

Quando('eu incluir um gênero com {string} e {string}') do |codigo, descricao|
  incluirGenero = IncluirGenero.new
  incluirGenero.incluirGenero(codigo, descricao)
end
