E('acesse a página de cliente') do
  incluircliente.acessarTelaIncluirCliente
  expect(page).to have_content('Cliente')
end

Quando('eu incluir um cliente') do
  incluircliente.incluirCliente("TESTE013", "12148447408", "eliel.cirilo@gmail.com", "Xablau", "Nordeste", "farma", "52.280-820", "10", "proximo a igreja", "87999999999", "deposito", "ver no piramide")
end
