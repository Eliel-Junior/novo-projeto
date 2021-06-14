E('acesso a página de incluir requisitante') do
  step%(
    E que eu acesse o módulo de Estoque
    Quando eu acesso a página de Requisitante
    Então deve exibir a tela de Requisitante
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Requisitante', exact: true)
end

Quando('eu incluir um histórico com filial, {string} e {string}') do |codigo, nome|
  incluirrequisitante.incluirRequisitante(codigo, nome, "automacao")
end
