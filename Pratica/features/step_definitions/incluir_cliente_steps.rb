E('acesse a página de incluir cliente') do
  incluirCliente = IncluirCliente.new
  incluirCliente.acessarTelaIncluirCliente
  expect(page).to have_content('Incluir Cliente')
end
Quando('eu incluir um cliente') do
  incluirCliente = IncluirCliente.new
  incluirCliente.incluirCliente("1303", "12148447408","eliel.cirilo@gmail.com","Xablau","Nordeste", "55330000", "Rua do Altinho", "10", "Centro", "87999999999", "cacoal", "teste", "deposito")
end
