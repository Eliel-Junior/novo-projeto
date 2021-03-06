E('acesso a página de incluir contas auxiliares') do
  incluirContaAuxiliar = IncluirContaAuxiliar.new
  incluirContaAuxiliar.acessarTelaContaAuxiliar
  expect(page).to have_content('Incluir Conta Auxiliar')
end
Quando('eu incluir uma conta auxiliar com grupo, {string} e {string}') do |codigo, descricao|
  incluirContaAuxiliar = IncluirContaAuxiliar.new
  incluirContaAuxiliar.incluirContaAuxiliar(codigo, descricao)
end
