E('acesse a página de incluir tipo de lançamento') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de tipo lançamento
    Então deve exibir a tela de tipo lançamento
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Tipo de Lançamento',  exact: true)
end

Quando('eu incluir um tipo de lançamento com {string} e {string}') do |codigo, descricao|
  incluirtipolancamento.incluirTipoLancamento(codigo, descricao)
end
