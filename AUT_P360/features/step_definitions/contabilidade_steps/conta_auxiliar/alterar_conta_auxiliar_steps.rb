E('acesso a página de alterar conta auxiliar') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta auxiliar      
    Então deve exibir a tela de conta auxiliar
  )
  alterarContaAuxiliar.pesquisarContaAux
  click_button 'Alterar'
  expect(page).to have_title('Piramide - Alterar Conta Auxiliar', exact: true)
end

Quando('eu alterar uma conta auxiliar') do
  alterarContaAuxiliar.alterarContaAux
end