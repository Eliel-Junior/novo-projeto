class ContaContabilService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end

  def operacoesContaContabil(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poCONTAS' => @options[:body]
      }
    )
    puts @response.body
  end

  def validarInclusaoContaContabil 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    #puts @resp_msg
    @incluir_conta_contabil = {}
    if @status
      @incluir_conta_contabil[:token] = @resp_msg[2]
      @incluir_conta_contabil[:sTipo] = @resp_msg[5]
      @incluir_conta_contabil[:sMensagem] = @resp_msg[8]
    else
      @incluir_conta_contabil[:sSolucao] = @resp_msg[-1]
    end
    @incluir_conta_contabil    
  end
end
