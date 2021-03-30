E('acesso a página de contas contábeis') do
  incluircontacontabil.acessarTelaContaContabil
  expect(page).to have_content('Incluir Contas Contábeis')
end

Quando('eu incluir uma conta contábil com versão, {string}, {string} e {string}') do |conta, descricao, reduzido|
  incluircontacontabil.incluirContaContabil(conta, descricao, reduzido)
end
