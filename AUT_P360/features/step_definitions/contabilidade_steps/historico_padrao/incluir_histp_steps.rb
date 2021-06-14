E('acesse a página de incluir histórico padrão') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de histórico padrão
    Então deve exibir a tela de histórico padrão
  )
  click_button 'Incluir'
  expect(page).to have_content('Histórico Padrão')#mudar para incluir
end

Quando('eu incluir um histórico com {string} e {string}') do |codigo, historico|
  incluirhistp.incluirHistorico(codigo, historico)
end
