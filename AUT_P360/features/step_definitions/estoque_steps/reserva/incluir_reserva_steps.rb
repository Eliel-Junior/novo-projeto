E('acesso a página de reserva') do
  incluirreserva.acessarTelaIncluirReserva
  expect(page).to have_content('Reserva de Produtos')
end

Quando('eu incluir uma reserva') do
  incluirreserva.incluirReserva("100", "aut - teste", "4 - GDEGF", "faltas", "aaa")
end
