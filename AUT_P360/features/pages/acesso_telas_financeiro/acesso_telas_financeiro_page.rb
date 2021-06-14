class TelasFinanceiro  < SitePrism::Page
  include Pages
  element :telaCadastro, 'procenge-panelmenu#panelMenu procenge-panelmenusub ul a[id="01.01.01"] span[class="ui-menuitem-text"]'
  element :telaCliente, 'a[href="/P360AUTOMATO/financeiro/cliente"] span'

  def acessarTelaCliente
    click_link 'Contas a Receber'
    telaCadastro.click
    telaCliente.click
  end

  def acessarTelaTituloPagar
    click_link 'Contas a Pagar'
    click_link 'Operações'
    click_link 'Títulos a Pagar'
  end
end