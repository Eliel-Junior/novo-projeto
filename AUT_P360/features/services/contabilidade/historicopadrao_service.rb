class HistoricoPadraoService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesHistoricoPadrao(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poHISTORICO' => @options[:body]
      }
    )
    puts @response.body
  end
  def validarInclusaoHistp 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    puts @resp_msg
    @incluir_histp = {}
    if @status
      @incluir_histp[:token] = @resp_msg[2]
      @incluir_histp[:sTipo] = @resp_msg[5]
      @incluir_histp[:sMensagem] = @resp_msg[8]
    else
      @incluir_histp[:sSolucao] = @resp_msg[-1]
    end
    @incluir_histp    
  end
end
