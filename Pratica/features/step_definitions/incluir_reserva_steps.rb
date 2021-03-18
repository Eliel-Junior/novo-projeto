E('acesso a página de incluir reserva') do
  incluirReserva = IncluirReserva.new
  incluirReserva.acessarTelaIncluirReserva
  expect(page).to have_content('Incluir Reserva de Produtos')
end

Quando('eu incluir uma reserva') do
  incluirReserva = IncluirReserva.new
  incluirReserva.incluirReserva("1")
end
