E('acesso a página de excluir contas contábeis') do
  steps %(
    E que eu acesse o módulo de Contabilidade
    Quando eu acesso a página de conta contábil      
    Então deve exibir a tela de conta contábil
  )
  excluircontacontabil.pesquisarContaContabil
end

Quando('eu excluir uma conta contábil') do
  excluircontacontabil.excluirContaContabil
end
