class ClienteService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesCliente(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poCLIENTES' => @options[:body]
      }
    )
    puts @response.body
  end
  def validarInclusaoCliente
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    puts @resp_msg
    @incluir_cliente = {}
    if @status
      @incluir_cliente[:token] = @resp_msg[2]
      @incluir_cliente[:sTipo] = @resp_msg[5]
      @incluir_cliente[:sMensagem] = @resp_msg[8]
    else
      @incluir_cliente[:sSolucao] = @resp_msg[-1]
    end
    @incluir_cliente    
  end
end
