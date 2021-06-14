Dado('que eu acesse o módulo de Contabilidade') do
  find('.modulo', text: 'Contabilidade', wait: 5).click
end

Quando('eu acesso a página de histórico padrão') do
  acessarTelaHisp.acessarTelaHisp
end

Então('deve exibir a tela de histórico padrão') do
  expect(page).to have_content('Histórico Padrão')
  expect(page).to have_title('Piramide - Histórico Padrão',  exact: true)
end

Quando('eu acesso a página de conta auxiliar') do
  acessarTelaContaAuxilixar.acessarTelaContaAuxilixar
end
Então('deve exibir a tela de conta auxiliar') do
  expect(page).to have_title('Piramide - Conta Auxiliar',  exact: true)
end

Quando('eu acesso a página de conta contábil') do
  acessarTelaContaContabil.acessarTelaContaContabil
end
Então('deve exibir a tela de conta contábil') do
  expect(page).to have_title('Piramide - Contas Contábeis',  exact: true)
end

Quando('eu acesso a página de tipo lançamento') do
  acessarTelaTipoLancamento.acessarTelaTipoLancamento
end

Então('deve exibir a tela de tipo lançamento') do
  expect(page).to have_title('Piramide - Tipo de Lançamento',  exact: true)
end
