E('acesse a página de incluir requisição') do
  incluirRequisicao = IncluirRequisicao.new
  incluirRequisicao.acessarTelaIncluirRequisicao
  expect(page).to have_content('Incluir Requisição')
end
Quando('eu incluir uma requisição com filial, almoxarifado, ndo, aplicação, requisição e {string}') do |quantidade|
  incluirRequisicao = IncluirRequisicao.new
  incluirRequisicao.incluirRequisicao(quantidade)
end
