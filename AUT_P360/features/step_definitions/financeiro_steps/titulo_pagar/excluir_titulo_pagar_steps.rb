E('acesse a página de excluir título a pagar') do
  steps %{
    E que eu acesse o módulo de Financeiro
    Quando eu acesso a página de Título a Pagar
    Então deve exibir a tela de Título a Pagar
  }
  expect(page).to have_title('Piramide - Títulos a Pagar', exact: true)
end

Quando('eu excluir um título a pagar') do
  excluirtitulopagar.excluirtitulopagar
end
