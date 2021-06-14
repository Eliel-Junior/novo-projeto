E('acesso a página de incluir contas auxiliares') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta auxiliar      
    Então deve exibir a tela de conta auxiliar
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Conta Auxiliar', exact: true)
end

Quando('eu incluir uma conta auxiliar com grupo, {string} e {string}') do |codigo, descricao|
  incluirContaAuxiliar.incluirContaAux(codigo, descricao, "automacao")
end
