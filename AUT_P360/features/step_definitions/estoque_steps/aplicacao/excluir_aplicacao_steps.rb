E('acesse a página de excluir aplicação') do
  steps %(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Aplicação
    Então deve exibir a tela de Aplicação
  )
  expect(page).to have_title('Piramide - Aplicação', exact: true)
end

Quando('eu excluir uma aplicação') do
  excluiraplicacao.excluirAplicacao
end
