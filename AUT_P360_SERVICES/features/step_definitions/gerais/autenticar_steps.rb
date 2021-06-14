Quando('eu autenticar o token') do
  gerarToken
end

Então('devo ser autenticado com sucesso') do
  validarAutenticar
end
