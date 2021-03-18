E('acesso a página de incluir contas contábeis') do
  incluirContaContabil = IncluirContaContabil.new
  incluirContaContabil.acessarTelaContaContabil
  expect(page).to have_content('Incluir Contas Contábeis')
end

Quando('eu incluir uma conta contábil com versão, {string}, {string} e {string}') do |conta, descricao, reduzido|
  incluirContaContabil = IncluirContaContabil.new
  incluirContaContabil.incluirContaContabil(conta, descricao, reduzido)
end
