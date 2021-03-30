class Login < SitePrism::Page
  include Pages

  element :usuario, '#usuario'
  element :senha, '#senha'
  element :btnEntrar, 'button[class="btn btn-primary btn-lg"]'
  element :imagenUsuario, 'img[src="assets/imagens/geral/foto_usuario.png"]'
  element :listaEmpresas, 'div[class="editar-dados"] p span'
  element :btnSim, 'procenge-button[tipo="Sim"]'

  def acessarLogin 
    visit 'http://177.153.230.45:90/P360AUTOMATO/'
  end

  def realizarLogin(user, psenha)
    usuario.set(user)
    senha.set(psenha)
    btnEntrar.click
  end

  def selecionarEmpresa
    imagenUsuario.click
    sleep 3
    listaEmpresas.click
    find('.lista-empresas', text: 'ICOM COMÉRCIO').click
    btnSim.click
    sleep 3
  end
end
