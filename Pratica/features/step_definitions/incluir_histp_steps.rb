E('acesse a página de histórico padrão') do
  incluirhistp.acessarTelaHistP
  expect(page).to have_content('Histórico Padrão')
end

Quando('eu incluir um histórico com {string} e {string}') do |codigo, historico|
  incluirhistp.incluirHistP(codigo, historico)
end
