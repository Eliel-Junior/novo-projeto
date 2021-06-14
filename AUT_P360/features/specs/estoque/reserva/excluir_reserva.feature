#language:pt
@excluir_reserva
Funcionalidade: Excluir Reserva
  Como um usuário logado no sistema
	Posso acessar a página de reserva
	Para excluir uma reserva

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de reserva

    Cenário: Excluir Reserva com Sucesso
      Quando eu excluir uma reserva
      Então devo ver a seguinte mensagem "Excluído com sucesso ."
