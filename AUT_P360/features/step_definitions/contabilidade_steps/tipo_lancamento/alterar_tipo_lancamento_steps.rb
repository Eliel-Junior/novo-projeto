E('acesse a página de alterar tipo de lançamento') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de tipo lançamento
    Então deve exibir a tela de tipo lançamento
  )
  alterartipolancamento.pesquisarTipoLancamento
  click_button 'Alterar'
  expect(page).to have_title('Piramide - Alterar Tipo de Lançamento',  exact: true)
end

Quando('eu alterar um tipo de lançamento') do
  alterartipolancamento.alterarTipoLancamento
end
