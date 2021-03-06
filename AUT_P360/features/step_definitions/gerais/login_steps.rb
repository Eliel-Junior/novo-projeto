Dado('que eu acesse o pirâmide 360') do
  login.acessarLogin
  expect(page).to have_content('PROCENGE TECNOLOGIA ©')
  page.assert_selector('procenge-footer footer[class="rodape"] a[href="https://www.procenge.com.br"]')
end

Quando('logar com {string} e {string}') do |user, senha|
  #Entra no step mas para no método
  login.realizarLogin(user, senha)
  sleep 3
end

Então('devo selecionar a empresa de teste') do
  login.selecionarEmpresa
end

Então('devo ser autenticado com sucesso') do
  expect(page).to have_content('AUTO04')
  expect(page).to have_content('Pirâmide 360 Creator') #add modulo e titulo
  #page.assert_selector('div[class="row modulos"] a[href="/P360AUTOMATO/financeiro/home"]')
  expect(page.assert_selector('div[class="row modulos"] a[href="/P360AUTOMATO/financeiro/home"]')).to eq true
end
