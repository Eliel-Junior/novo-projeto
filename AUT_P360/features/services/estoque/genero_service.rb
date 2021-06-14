class GeneroService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def operacoesGenero(token, operacao)
    operacao = operacao.to_sym
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      operacao, message: {
        cabecalho: {
          token: token,
          empresa: '001'
        },
        'poPIR_GENERO_PRODUTO' => @options[:body]
      }
    )
    #puts @response.body
  end
  def validarInclusaoGenero 
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    puts @resp_msg
    @incluir_genero = {}
    if @status
      @incluir_genero[:token] = @resp_msg[2]
      @incluir_genero[:sTipo] = @resp_msg[5]
      @incluir_genero[:sMensagem] = @resp_msg[8]
    else
      @incluir_genero[:sSolucao] = @resp_msg[-1]
    end
    @incluir_genero    
  end
end
