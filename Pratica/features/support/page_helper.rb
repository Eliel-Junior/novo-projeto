Dir[File.join(File.dirname(__FILE__),
  '..features/pages/*_page.rb')].each { |file| require file }

###################  MODULO QUE INSTANCIA AS CLASSES DOS PAGE OBJECTS ###################

module Pages
  def gerais
    @gerais ||= Gerais.new
  end

  def incluiraplicacao
    @incluiraplicacao ||= Aplicacao.new
  end
  
  def incluircliente
    @incluircliente ||= Cliente.new
  end
  
  def incluircontaauxiliar
    @incluircontaauxiliar ||= ContaAuxiliar.new
  end

  def incluircontacontabil
    @incluircontacontabil ||= ContaContabil.new
  end

  def incluirgenero
    @incluirgenero ||= Genero.new
  end

  def incluirhistp
    @incluirhistp ||= HistoricoPadrao.new
  end

  def incluirrequisicao
    @incluirrequisicao ||= Requisicao.new
  end

  def incluirrequisitante
    @incluirrequisitante ||= Requisitante.new
  end

  def incluirreserva
    @incluirreserva ||= Reserva.new
  end

  def incluirtipolacamento
    @incluirtipolacamento ||= TipoLancamento.new
  end

  def incluirtitulopagar
    @incluirtitulopagar ||= TituloPagar.new
  end

  def login
    @login ||= Login.new
  end

  def excluiraplicacao
    @excluiraplicacao ||= Aplicacao.new
  end

  def excluircliente
    @excluircliente ||= Cliente.new
  end

  def excluicontaauxiliar
    @excluircontaauxiliar ||= ContaAuxiliar.new
  end

  def excluircontacontabil
    @excluircontacontabil ||= ContaContabil.new
  end

  def excluirgenero
    @excluirgenero ||= Genero.new
  end

  def excluirhistp
    @excluirhistp ||= HistoricoPadrao.new
  end

  def excluirrequisicao
    @excluirrequisicao ||= Requisicao.new
  end

  def excluirrequisitante
    @excluirrequisitante ||= Requisitante.new
  end

  def excluirreserva
    @excluirreserva ||= Reserva.new
  end

  def excluirtipolancamento
    @excluirtipolancamento ||= TipoLancamento.new
  end

  def excluirtitulopagar
    @excluirtitulopagar ||= TituloPagar.new
  end

  def alteraralpicacao
    @alteraraplicacao ||= Aplicacao.new
  end

  def alterarcontaauxiliar
    @alterarcontaauxiliar ||= ContaAuxiliar.new
  end
end
