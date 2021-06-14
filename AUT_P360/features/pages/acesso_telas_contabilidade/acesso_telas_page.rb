class TelasContabilidade  < SitePrism::Page
  include Pages

  element :historicoPadrao, 'a[href="/P360AUTOMATO/contabilidade/historicopadrao"] span'
  element :contaAuxiliar, 'a[href="/P360AUTOMATO/contabilidade/contaauxiliar"] span'
  element :contacontabil, 'a[href="/P360AUTOMATO/contabilidade/contacontabil"] span'
  element :tipoLacamento, 'a[href="/P360AUTOMATO/contabilidade/lancamentotipo"] span'

  def acessarTelaHisp
    click_link 'Cadastros'
    historicoPadrao.click
  end
  
  def acessarTelaContaAuxilixar
    click_link 'Cadastros'
    click_link 'Plano de Contas'
    contaAuxiliar.click
  end

  def acessarTelaContaContabil
    click_link 'Cadastros'
    click_link 'Plano de Contas'
    contacontabil.click
  end

  def acessarTelaTipoLancamento
    click_link 'Cadastros'
    tipoLacamento.click
  end
end
