E('acesse a página de incluir histórico padrão') do
  incluirHistP = IncluirHistoricoPadrao.new
  incluirHistP.acessarTelaHistP
  expect(page).to have_content('Incluir Histórico Padrão')
end

Quando('eu incluir um histórico com {string} e {string}') do |codigo, historico|
  incluirHistP = IncluirHistoricoPadrao.new
  incluirHistP.incluirHistP(codigo, historico)
end
