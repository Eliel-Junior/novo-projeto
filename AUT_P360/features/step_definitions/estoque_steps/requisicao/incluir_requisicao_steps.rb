E('acesso a página de incluir requisição') do
  step%(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Requisição
    Então deve exibir a tela de Requisição
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Requisição', exact: true)
end

Quando('eu incluir uma requisição') do
  incluirrequisicao.incluirRequisicao("100", "faltas", "aut - teste", "4 - GDEGF", "aaa")
end
