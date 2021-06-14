E('acesso a página de excluir contas auxiliares') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta auxiliar      
    Então deve exibir a tela de conta auxiliar
  )
  excluirContaAuxiliar.pesquisarContaAux
  expect(page).to have_title('Piramide - Conta Auxiliar', exact: true)
end

Quando('eu excluir uma conta auxiliar') do
  excluirContaAuxiliar.excluirContaAux
end
