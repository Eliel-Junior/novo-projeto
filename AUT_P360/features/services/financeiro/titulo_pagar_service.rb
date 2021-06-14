class TituloPagarService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesTituloPagar(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poTITULO_PAG' => @options[:body]
      }
    )
    puts @response.body
  end
  def validarInclusaoTituloPagar
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    #puts @resp_msg
    @incluir_titulo_pagar = {}
    if @status
      @incluir_titulo_pagar[:token] = @resp_msg[2]
      @incluir_titulo_pagar[:sTipo] = @resp_msg[5]
      @incluir_titulo_pagar[:sMensagem] = @resp_msg[8]
    else
      @incluir_titulo_pagar[:sSolucao] = @resp_msg[-1]
    end
    @incluir_titulo_pagar    
  end
end