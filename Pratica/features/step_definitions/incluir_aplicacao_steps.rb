Dado('que eu faça o login no pirâmide 360') do
  steps %{
    Dado que eu acesse o pirâmide 360
		Quando logar com "AUTO04" e "piramide"
		Então devo ser autenticado com sucesso
    Então devo selecionar a empresa de teste
  }
end

E('acesse a página de incluir aplicação') do
  incluirAplicacao = IncluirAplicacao.new
  incluirAplicacao.acessarTelaIncluirAplicacao
  expect(page).to have_content('Incluir Aplicação')
end

Quando('eu incluir uma aplicação com {string} e {string}') do |codigo, descricao|
  incluirAplicacao = IncluirAplicacao.new
  incluirAplicacao.incluirAplicacao(codigo, descricao)
end
