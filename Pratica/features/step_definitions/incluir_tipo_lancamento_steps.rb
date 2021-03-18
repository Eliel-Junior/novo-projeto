E('acesse a página de tipo de lançamento') do
  incluirTipoLancamento = IncluirTipoLancamento.new
  incluirTipoLancamento.acessarTelaTipoLancamento
  expect(page).to have_content('Incluir Tipo de Lançamento')
end

Quando('eu incluir um tipo de lançamento com {string} e {string}') do |codigo, descricao|
  incluirTipoLancamento = IncluirTipoLancamento.new
  incluirTipoLancamento.incluirTipoLancamento(codigo, descricao)
end
