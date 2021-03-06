Dado('que eu acesse o sistema') do
  visit 'http://177.153.230.45:90/P360AUTOMATO/'
  expect(page).to have_content('2021 TODOS OS DIREITOS RESERVADOS.')
end
E('faça login com {string} e {string}') do |login, senha|
  find('#usuario').set login
  find('#senha').set senha
  find('button[class="btn btn-primary btn-lg"]').click
  sleep 5
  find('img[src="assets/imagens/geral/foto_usuario.png"]').click
  sleep 3
  find('div[class="editar-dados"] p span').click
  find('.lista-empresas', text: 'ICOM COMÉRCIO').click
  find('procenge-button[tipo="Sim"]').click
  sleep 5
end
E('acesse a página de incluir histórico padrão') do
  incluirHistP = IncluirHistoricoPadrao.new
  incluirHistP.acessarTelaHistP
  expect(page).to have_content('Incluir Histórico Padrão')
end
Quando('eu incluir um histórico com {string} e {string}') do |codigo, historico|
  incluirHistP = IncluirHistoricoPadrao.new
  incluirHistP.incluirHistP(codigo, historico)
end
Então('devo ver a seguinte mensagem {string}') do |mensagem|
  page.find('.ui-growl-message-success').text eql (mensagem)
end
