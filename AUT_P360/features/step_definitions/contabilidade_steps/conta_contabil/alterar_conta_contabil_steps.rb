E('acesso a página de alterar contas contábeis') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta contábil
    Então deve exibir a tela de conta contábil
  )
  alterarcontacontabil.pesquisarContaContabil
  click_button 'Alterar'
  expect(page).to have_title('Piramide - Alterar Contas Contábeis')
end

Quando('eu alterar uma conta contábil') do
  alterarcontacontabil.alterarContaContabil
end
