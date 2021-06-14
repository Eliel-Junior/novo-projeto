class AplicacaoService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesAplicacao(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poAPLICACAO' => @options[:body]
      }
    )
    #puts @response.body
  end
  def validarInclusaoAplicacao 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    puts @resp_msg
    @incluir_aplicacao = {}
    if @status
      @incluir_aplicacao[:token] = @resp_msg[2]
      @incluir_aplicacao[:sTipo] = @resp_msg[5]
      @incluir_aplicacao[:sMensagem] = @resp_msg[8]
    else
      @incluir_aplicacao[:sSolucao] = @resp_msg[-1]
    end
    @incluir_aplicacao    
  end
end
