E('acesse a página de incluir cliente') do
  step%(
    E que eu acesse o módulo de Financeiro
    Quando eu acesso a página de Cliente
    Então deve exibir a tela de Cliente
  )
  click_button 'Incluir'
  expect(page).to have_title('Piramide - Incluir Cliente', exact: true)
end

Quando('eu incluir um cliente') do
  incluircliente.incluirCliente("1303", "12148447408", "eliel.cirilo@gmail.com", "Xablau", "Nordeste", "farma", "52.280-820", "10", "proximo a igreja", "87999999999", "deposito", "ver no piramide")
end
