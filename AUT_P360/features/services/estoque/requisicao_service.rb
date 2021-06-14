class RequisicaoService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesRequisicao(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poREQUISICAO' => @options[:body]
      }
    )
    #puts @response.body
  end
  def validarInclusaoRequisicao 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    puts @resp_msg
    @incluir_requisicao = {}
    if @status
      @incluir_requisicao[:token] = @resp_msg[2]
      @incluir_requisicao[:sTipo] = @resp_msg[5]
      @incluir_requisicao[:sMensagem] = @resp_msg[8]
    else
      @incluir_requisicao[:sSolucao] = @resp_msg[-1]
    end
    @incluir_requisicao    
  end
end
