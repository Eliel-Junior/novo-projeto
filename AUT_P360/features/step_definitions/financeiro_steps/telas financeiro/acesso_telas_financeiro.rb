Dado('que eu acesse o módulo de Financeiro') do
  find('.modulo', text: 'Financeiro', wait: 5).click
end

Quando('eu acesso a página de Cliente') do
  acessarTelaCliente.acessarTelaCliente
end

Então('deve exibir a tela de Cliente') do
  expect(page).to have_title('Piramide - Cliente', exact: true)
end

Quando('eu acesso a página de Título a Pagar') do
  acessarTelaTituloPagar.acessarTelaTituloPagar
end

Então('deve exibir a tela de Título a Pagar') do
  expect(page).to have_title('Piramide - Títulos a Pagar', exact: true)
end
