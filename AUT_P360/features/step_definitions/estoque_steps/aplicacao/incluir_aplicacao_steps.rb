Dado('que eu faça o login no pirâmide 360') do
  steps %{
    Dado que eu acesse o pirâmide 360
		Quando logar com "AUTO04" e "piramide"
		Então devo ser autenticado com sucesso
    Então devo selecionar a empresa de teste
  }
end

E('acesse a página de incluir aplicação') do
  steps %(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Aplicação
    Então deve exibir a tela de Aplicação
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Aplicação', exact: true)
end

Quando('eu incluir uma aplicação com {string} e {string}') do |codigo, descricao|
  incluiraplicacao.incluirAplicacao(codigo, descricao, "teste automacao", "rafa")
end
