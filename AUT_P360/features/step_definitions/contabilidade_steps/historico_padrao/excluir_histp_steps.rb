E('acesso a página de excluir histórico padrão') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de histórico padrão
    Então deve exibir a tela de histórico padrão
  )
  excluirHistp.pesquisarHistp('1303')
  expect(page).to have_title('Histórico Padrão', exact: true)
end
Quando('eu excluir um histórico padrão') do
  excluirhistp.excluirHistorico
end
