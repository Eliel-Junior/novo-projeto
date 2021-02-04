
Dado('que eu acesso a página principal') do
  #visit 'http://www.netflix.com/br/login'
  visit 'http://177.153.230.45:90/P360AUTOMATO/'
end

Quando('eu faço login com {string} e {string}') do |email, senha|
  #pending # Write code here that turns the phrase above into concrete actions
  #find('#h_usr-link').click
  #find('#h_usr-signin').click
  find('#id_userLoginId').set email
  #find('#continue span.a-button-inner input').click
  find('#id_password').set senha
  find('button[class="btn login-button btn-submit btn-small"]').click
  click_link 'Júnior'
end

Então('devo ser autenticado com sucesso') do
  #pending # Write code here that turns the phrase above into concrete actions
  #expect(page).to have_content 'Júnior'
  expect(page).to have_content('Júnior')

end

Então('devo ver a seguinte mensagem {string}') do |mensagem|
  #pending # Write code here that turns the phrase above into concrete actions
  expect(page).to have_content(mensagem)
end
