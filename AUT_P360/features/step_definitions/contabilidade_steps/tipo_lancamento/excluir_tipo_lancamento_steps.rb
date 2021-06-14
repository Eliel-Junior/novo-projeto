E('acesse a página de excluir tipo de lançamento') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta contábil
    Então deve exibir a tela de conta contábil
  )
  excluirtipolancamento.pesquisarTipoLancamento
  expect(page).to have_title('Piramide - Tipo de Lançamento', exact: true)
end

Quando('eu excluir um tipo de lançamento') do
  excluirtipolancamento.excluirtipolancamento
end
