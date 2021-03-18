E('acesse a página de incluir requisitante') do
  incluirRequisitante = IncluirRequisitante.new
  incluirRequisitante.acessarTelaIncluirRequisitante
  expect(page).to have_content('Incluir Requisitante')
end

Quando('eu incluir um histórico com filial, {string} e {string}') do |codigo, nome|
  incluirRequisitante = IncluirRequisitante.new
  incluirRequisitante.incluirRequisitante(codigo, nome)
end
