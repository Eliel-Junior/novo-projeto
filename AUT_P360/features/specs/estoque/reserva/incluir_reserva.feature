#language:pt
@incluir_reserva
Funcionalidade: Incluir Reserva
  Como um usuário logado no sistema
  Posso acessar a página de reserva
  Para incluir uma nova reserva

  Contexto: Login e acesso a página
    Dado que eu faça o login no pirâmide 360
		E acesso a página de reserva
  
    Cenário: Incluir Reserva com Sucesso
      Quando eu incluir uma reserva
      Então devo ver a seguinte mensagem "Incluído com sucesso ."
