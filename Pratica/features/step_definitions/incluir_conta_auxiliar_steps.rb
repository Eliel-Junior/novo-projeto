E('acesso a página de contas auxiliares') do
  incluircontaauxiliar.acessarTelaContaAuxiliar
  expect(page).to have_content('Incluir Conta Auxiliar')
end

Quando('eu incluir uma conta auxiliar com grupo, {string} e {string}') do |codigo, descricao|
  incluircontaauxiliar.incluirContaAux(codigo, descricao, "automacao")
end
