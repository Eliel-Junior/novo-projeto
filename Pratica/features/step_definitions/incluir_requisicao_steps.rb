E('acesse a página de incluir requisição') do
  incluirRequisicao = IncluirRequisicao.new
  incluirRequisicao.acessarTelaIncluirRequisicao
  expect(page).to have_content('Incluir Requisição')
end
Quando('eu incluir uma requisição') do
  incluirRequisicao = IncluirRequisicao.new
  incluirRequisicao.incluirRequisicao("0")
end
