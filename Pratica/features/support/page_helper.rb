Dir[File.join(File.dirname(__FILE__),
  '..features/pages/*_page.rb')].each { |file| require file }

###################  MODULO QUE INSTANCIA AS CLASSES DOS PAGE OBJECTS ###################

module Pages
  def gerais
    @gerais ||= Gerais.new
  end

  def incluiraplicacao
    @incluiraplicacao ||= IncluirAplicacao.new
  end
  
  def incluircliente
    @incluircliente ||= IncluirCliente.new
  end
  
  def incluircontaauxiliar
    @incluircontaauxiliar ||= IncluirContaAuxiliar.new
  end

  def incluircontacontabil
    @incluircontacontabil ||= IncluirContaContabil.new
  end

  def incluirgenero
    @incluirgenero ||= IncluirGenero.new
  end

  def incluirhistp
    @incluirhistp ||= IncluirHistoricoPadrao.new
  end

  def incluirrequisicao
    @incluirrequisicao ||= IncluirRequisicao.new
  end

  def incluirrequisitante
    @incluirrequisitante ||= IncluirRequisitante.new
  end

  def incluirreserva
    @incluirreserva ||= IncluirReserva.new
  end

  def incluirtipolacamento
    @incluirtipolacamento ||= IncluirTipoLancamento.new
  end

  def incluirtitulopagar
    @incluirtitulopagar ||= IncluirTituloPagar.new
  end

  def login
    @login ||= Login.new
  end
end
