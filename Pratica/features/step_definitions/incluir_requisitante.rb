E('acesse a página de requisitante') do
  incluirrequisitante.acessarTelaIncluirRequisitante
  expect(page).to have_content('Requisitante')
end

Quando('eu incluir um histórico com filial, {string} e {string}') do |codigo, nome|
  incluirrequisitante.incluirRequisitante(codigo, nome, "automacao")
end
