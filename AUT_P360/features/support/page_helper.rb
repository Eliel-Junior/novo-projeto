Dir[File.join(File.dirname(__FILE__),
  '..features/pages/*_page.rb')].each { |file| require file }

###################  MODULO QUE INSTANCIA AS CLASSES DOS PAGE OBJECTS ###################

module Pages
  def gerais
    @gerais ||= Gerais.new
  end
#Aplicação
  def incluiraplicacao
    @incluiraplicacao ||= IncluirAplicacao.new
  end

  def excluiraplicacao
    @excluiraplicacao ||= ExcluirAplicacao.new
  end

  def alteraralpicacao
    @alteraraplicacao ||= AlterarAplicacao.new
  end
#Cliente
  def incluircliente
    @incluircliente ||= Cliente.new
  end
  
  def excluircliente
    @excluircliente ||= Cliente.new
  end
#Conta Auxiliar
  def alterarContaAuxiliar
    @alterarcontaauxiliar ||= AlterarContaAuxiliar.new
  end

  def incluirContaAuxiliar
    @incluircontaauxiliar ||= IncluirContaAuxiliar.new
  end

  def excluirContaAuxiliar
    @excluircontaauxiliar ||= ExcluirContaAuxiliar.new
  end
#Conta Contábil
  def incluircontacontabil
    @incluircontacontabil ||= IncluirContaContabil.new
  end

  def excluircontacontabil
    @excluircontacontabil ||= ExcluirContaContabil.new
  end

  def alterarcontacontabil
    @alterarcontacontabil ||= AlterarContaContabil.new
  end
#Gênero
  def incluirGenero
    @incluirgenero ||= IncluirGenero.new
  end

  def excluirgenero
    @excluirgenero ||= Genero.new
  end
#Histórico Padrão
  def incluirhistp
    @incluirhistp ||= IncluirHisP.new
  end
  
  def excluirhistp
    @excluirhistp ||= ExcluirHisP.new
  end

  def alterarHistoricoPadao
    @alterarHistp ||= AlterarHisP.new
  end
#Requisição
  def incluirrequisicao
    @incluirrequisicao ||= Requisicao.new
  end
  
  def excluirrequisicao
    @excluirrequisicao ||= Requisicao.new
  end
#Requisitante
  def incluirrequisitante
    @incluirrequisitante ||= Requisitante.new
  end
  
  def excluirrequisitante
    @excluirrequisitante ||= Requisitante.new
  end
#Reserva
  def incluirreserva
    @incluirreserva ||= Reserva.new
  end
  
  def excluirreserva
    @excluirreserva ||= Reserva.new
  end
#Tipo de Lançamento
  def incluirtipolancamento
    @incluirtipolancamento ||= IncluirTipoLancamento.new
  end

  def alterartipolancamento
    @alterartipolancamento ||= AlterarTipoLancamento.new
  end
  
  def excluirtipolancamento
    @excluirtipolancamento ||= ExcluirTipoLancamento.new
  end
#Título a pagar
  def incluirtitulopagar
    @incluirtitulopagar ||= TituloPagar.new
  end
  
  def excluirtitulopagar
    @excluirtitulopagar ||= TituloPagar.new
  end
#Login
  def login
    @login ||= Login.new
  end
#Acesso as Telas
  def acessarTelaHisp
    @acessarTelaHisp ||= TelasContabilidade.new
  end

  def acessarTelaContaAuxilixar
    @acessarTelaContaAuxilixar ||= TelasContabilidade.new
  end

  def acessarTelaContaContabil
    @acessarTelaContaContabil ||= TelasContabilidade.new
  end

  def acessarTelaTipoLancamento
    @acessarTelaTipoLancamento ||= TelasContabilidade.new
  end

  def acessarTelaAplicacao
    @acessarTelaAplicacao ||= TelasEstoque.new
  end

  def acessarTelaGenero
    @acessarTelaGenero ||= TelasEstoque.new
  end

  def acessarTelaRequisicao
    @acessarTelaRequisicao ||= TelasEstoque.new
  end

  def acessarTelaRequisitante
    @acessarTelaRequisitante ||= TelasEstoque.new
  end

  def acessarTelaCliente
    @acessarTelaCliente ||= TelasFinanceiro.new
  end

  def acessarTelaTituloPagar
    @acessarTelaTituloPagar ||= TelasFinanceiro.new
  end
end
