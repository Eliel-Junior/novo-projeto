class AutenticarService
  include Savon

  def initialize(body, url)
    @options = { body: body, url: url }
  end
  def postAutenticar
    client = Savon.client(wsdl: @options[:url], endpoint: @options[:url])
    @response = client.call(
      :autenticar, message: {
        'poAutenticar' => @options[:body]
      }
    )
    #puts @response.body
  end
  def validarAutenticar
    @resp = @response.body[:autenticar_response][:autenticar_result]
    @resp_msg = @resp.split(/[,:{}(\[)(\])"]/)
    @resp_msg = @resp_msg.reject(&:empty?)
    @status = @resp_msg.include?('success')
    #puts @resp_msg
    @asserts = {}
    if @status
      @asserts[:token] = @resp_msg[2]
      @asserts[:sTipo] = @resp_msg[5]
      @asserts[:sMensagem] = @resp_msg[8]
    else
      @asserts[:sSolucao] = @resp_msg[-1]
    end
    @asserts
  end
end
