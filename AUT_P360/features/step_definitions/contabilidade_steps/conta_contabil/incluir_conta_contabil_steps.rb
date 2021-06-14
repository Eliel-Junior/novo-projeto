E('acesso a página de incluir contas contábeis') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta contábil
    Então deve exibir a tela de conta contábil
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Contas Contábeis')
end

Quando('eu incluir uma conta contábil com versão, {string}, {string} e {string}') do |conta, descricao, reduzido|
  incluircontacontabil.incluirContaContabil(conta, descricao, reduzido)
end
