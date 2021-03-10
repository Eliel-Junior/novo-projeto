E('acesse a página de incluir cliente') do
  incluirCliente = IncluirCliente.new
  incluirCliente.acessarTelaIncluirCliente
  expect(page).to have_content('Incluir Cliente')
end
Quando('eu incluir um cliente') do
  incluirCliente = IncluirCliente.new
  incluirCliente.incluirCliente("1303", "12148447408", "eliel.cirilo@gmail.com", "Xablau", "Nordeste", "farma", "52.280-820", "10", "proximo a igreja", "87999999999", "teste", "deposito")
#"farma",  "cacoal""Rua do Altinho" "Centro",
end
