E('acesse a página de tipo de lançamento') do
  incluirtipolancamento.acessarTelaTipoLancamento
  expect(page).to have_content('Tipo de Lançamento')
end

Quando('eu incluir um tipo de lançamento com {string} e {string}') do |codigo, descricao|
  incluirtipolancamento.incluirTipoLancamento(codigo, descricao)
end
