class TipoLancamentoService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end

  def operacoesTipoLancamento(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poTIPOLANC' => @options[:body]
      }
    )
    puts @response.body
  end

  def validarInclusaoTipoLancamento 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    # puts @resp_msg
    @incluir_tipo_lancamento = {}
    if @status
      @incluir_tipo_lancamento[:token] = @resp_msg[2]
      @incluir_tipo_lancamento[:sTipo] = @resp_msg[5]
      @incluir_tipo_lancamento[:sMensagem] = @resp_msg[8]
    else
      @incluir_tipo_lancamento[:sSolucao] = @resp_msg[-1]
    end
    @incluir_tipo_lancamento    
  end
end
