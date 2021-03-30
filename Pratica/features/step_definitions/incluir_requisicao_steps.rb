E('acesse a página de requisição') do
  incluirrequisicao.acessarTelaIncluirRequisicao
  expect(page).to have_content('Incluir Requisição')
end

Quando('eu incluir uma requisição') do
  incluirrequisicao.incluirRequisicao("100", "faltas", "aut - teste", "4 - GDEGF", "aaa")
end