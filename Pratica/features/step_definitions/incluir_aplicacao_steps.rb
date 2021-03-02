E('acesse a página de incluir aplicação') do
  incluirAplicacao = IncluirAplicacao.new
  incluirAplicacao.acessarTelaIncluirAplicacao
  expect(page).to have_content('Incluir Aplicação')
end
Quando('eu incluir uma aplicação com {string} e {string}') do |codigo, descricao|
  incluirAplicacao = IncluirAplicacao.new
  incluirAplicacao.incluirAplicacao(codigo, descricao)
end
