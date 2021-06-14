E('acesso a página de alterar histórico padrão') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de histórico padrão
    Então deve exibir a tela de histórico padrão
  )
  alterarHistoricoPadao.pesquisarHistp('1303')
  click_button 'Alterar'
  expect(page).to have_title('Piramide - Alterar Histórico Padrão', exact: true)
end
Quando('eu alterar um Histórico Padrão') do
  alterarHistoricoPadao.alterarHistorico
end
