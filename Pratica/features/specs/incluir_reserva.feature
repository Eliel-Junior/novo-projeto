#language:pt
@incluir_reserva
Funcionalidade: Incluir Reserva
  Como um usuário logado no sistema
  Posso acessar a página de reserva
  Para incluir uma nova reserva
  
  Cenário: Incluir Reserva com Sucesso
    Dado que eu acesse o sistema
		E faça login com "AUTO03" e "piramide"
		E acesso a página de incluir reserva
    Quando eu incluir uma reserva
		Então devo ver a seguinte mensagem "Incluído com sucesso ."