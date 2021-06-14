E('acesse a página de alterar aplicação') do
  steps %(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Aplicação
    Então deve exibir a tela de Aplicação
  )
  click_button 'Alterar'
  expect(page).to have_title('Piramide - Alterar Aplicação', exact: true)
end

Quando('eu alterar uma aplicação') do
  alteraralpicacao.alteraraplicacao
end