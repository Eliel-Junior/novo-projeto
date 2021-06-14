Dado('que eu acesse o módulo de Estoque') do
  find('.modulo', text: 'Estoque', wait: 5).click
end

Quando('eu acesso a página de Aplicação') do
  acessarTelaAplicacao.acessarTelaAplicacao
end

Então('deve exibir a tela de Aplicação') do
  expect(page).to have_title('Piramide - Aplicação', exact: true)
end

Quando('eu acesso a página de Gênero') do
  acessarTelaGenero.acessarTelaGenero
end

Então('deve exibir a tela de Gênero') do
  expect(page).to have_title('Piramide - Gênero Produto', exact: true)
end

Quando('eu acesso a página de Requisição') do
  acessarTelaRequisicao.acessarTelaRequisicao
end

Então('deve exibir a tela de Requisição') do
  expect(page).to have_title('Piramide - Requisição', exact: true)
end

Quando('eu acesso a página de Requisitante') do
  acessarTelaRequisitante.acessarTelaRequisitante
end

Então('deve exibir a tela de Requisitante') do
  expect(page).to have_title('Piramide - Requisitante', exact: true)
end
