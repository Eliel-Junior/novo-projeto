Before do
  @base_url = 'http://177.153.230.45:90/desenvT/'
end
def gerarToken 
  @base_url = 'http://177.153.230.45:90/desenvT/'
  @token_url = 'wsSystem.asmx?wsdl'
  @token_urlservice = @base_url + @token_url
  @token_body_incluir = {
    'LOGIN' => 'AUTO04',
    'SENHA' => 'PIRAMIDE',
    'APLICACAO' => 'PIRAMIDE',
    'VERSAO' => '1.00.24'
  }
  @autenticar = AutenticarService.new(@token_body_incluir, @token_urlservice)
  @response = @autenticar.postAutenticar
  @asserts = @autenticar.validarAutenticar
end
