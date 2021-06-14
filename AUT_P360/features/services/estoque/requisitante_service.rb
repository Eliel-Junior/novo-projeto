class RequisitanteService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesRequisitante(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poREQUISITANTE' => @options[:body]
      }
    )
    #puts @response.body
  end
  def validarInclusaoRequisitante 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    #puts @resp_msg
    @incluir_requisitante = {}
    if @status
      @incluir_requisitante[:token] = @resp_msg[2]
      @incluir_requisitante[:sTipo] = @resp_msg[5]
      @incluir_requisitante[:sMensagem] = @resp_msg[8]
    else
      @incluir_requisitante[:sSolucao] = @resp_msg[-1]
    end
    @incluir_requisitante    
  end
end
