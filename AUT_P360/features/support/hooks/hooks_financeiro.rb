#Inicio dos services de Cliente
Before '@excluir_cliente' do
  gerarToken
  @cliente_url = 'wsCLIENTES.asmx?wsdl'
  @cliente_urlservice = @base_url + @cliente_url
  @cliente_body_incluir = {
      'CODIGO' => '1303',
      'CGC' => '31941271014',
      'AREA' => '0002',
      'COD_MUNICIPIO_FAT' => '2609600',
      'PESSOA' => 'F',
      'NOME' => 'Xablau',
      'DATA_CAD' => '20/04/2021',
      'BAIRRO_FAT' => 'Rio Doce',
      'COD_FAT' => '52020150',
      'ENDERECO_FAT' => 'Rua Dezessete',
      'FONE_FAT' => '(87) 9909-1760',
      'CONTRIBUINTE' => 'N',
      'EMAIL' => 'eliel.cirilo@gmail.com',
      'IND_USA_CEI' => 'N',
      'IND_PRODUTOR_RURAL' => 'N',
      'END_NUMERO_FAT' => '13',
      'IND_ADM_CARTOES' => 'N',
      'Atributos' => {
         'fcAtributos' => {
            'COD_TIPO_ATRIBUTO' => '02',
            'DSC_VALOR_ATRIBUTO' => '5'
         }
      },
      'oCLIENTE_SEGMENTO' => {
         'fcCLIENTE_SEGMENTO_dados' => {
            'COD_CLIENTE' => '1303',
            'COD_SEGMER' => '0017'
         }
      },
      'oCLIENTE_EMPRESA' => {
         'fcCLIENTE_EMPRESA_dados' => {
            'CLIENTE' => '1303',
            'EMPRESA' => '001',
            'DATA_CAD' => '27/04/2021',
            'ATIVO' => 'S',
            'BLOQUEIO' => '00',
            'COD_DOC_PAGAMENTO' => 'DUPL',
            'IND_PENDENTE_CREDITO' => 'N',
            'oPIR_CLIENTE_CONTAS' => {
               'fcPIR_CLIENTE_CONTAS_dados' => {
                  'COD_EMPRESA' => '001',
                  'COD_CLIENTE' => '1303',
                  'COD_VERSAO' => '0',
                  'COD_CONTA' => '1.1.1.01.01'
               }
            }
         }  
      }
   }
  @setup_cliente = ClienteService.new(@cliente_body_incluir, @cliente_urlservice)
  @setup_cliente.operacoesCliente(@asserts[:token], 'incluir')
end
After '@incluir_cliente' do
   gerarToken
   @cliente_url = 'wsCLIENTES.asmx?wsdl'
   @cliente_urlservice = @base_url + @cliente_url
   @cliente_body_excluir = {
      'CODIGO' => '1303',
      'AREA' => '0002',
      'PESSOA' => 'F',
      'NOME' => 'Xablau'
    }
   @setup_cliente = ClienteService.new(@cliente_body_excluir, @cliente_urlservice)
   @setup_cliente.operacoesCliente(@asserts[:token], 'excluir')
 end

#Inicio dos services de Título a Pagar
Before '@excluir_titulo_pagar' do
   gerarToken
   @titulo_pagar_url = 'wsTITULO_PAG.asmx?wsdl'
   @titulo_pagar_urlservice = @base_url + @titulo_pagar_url
   @titulo_pagar_body_incluir = {
   'FILIAL' => '001',
   'FORNEC' => '10000312',
   'TITULO' => '1303',
   'MOEDA' => 'R$',
   'COD_UNID_ORIGEM' => '01',
   'EMPRESA' => '001',
   'PORTADOR' => '001',
   'AGENCIA' => '34340',
   'CCORRENTE' => '001',
   'SITUACAO' => '00',
   'COMPRAD' => 'C001',
   'CODDOC' => 'NFEN',
   'EMISSAO' => '30/04/2021',
   'VENCIMENTO' => '30/04/2021',
   'LANCAMENTO' => '30/04/2021',
   'VALOR' => '100',
   'DESC_FIN' => '0',
   'DESC_DIAS' => '0',
   'MORA' => '0',
   'STATUS' => 'A',
   'MULTA' => '0',
   'DIASMULTA' => '0',
   'DESCONTO_VAL' => '0',
   'DESCONTO_PER' => '0',
   'DEDUCAO' => '0',
   'DEDUCAO_PER' => '0',
   'ENTRADA' => '30/04/2021',
   'DAT_REF_TITULO_PAG' => '30/04/2021',
   'ORIGEM' => '01',
   'COD_FNT_TPAG' => '00',
   'oTITPAG_NDO' => {
      'fcTITPAG_NDO_dados' => {
         'FILIAL' => '001',
         'FORNEC' => '10000312',
         'TITULO' => '1303',
         'NDO' => 'FI0202',
         'EMPRESA' => '001',
         'VALOR' => '100',
         'COD_ITEM_FCAIXA_NDO' => '02.01.001'
      }
   }
   }
   @setup_titulo_pagar = TituloPagarService.new(@titulo_pagar_body_incluir, @titulo_pagar_urlservice)
   @setup_titulo_pagar.operacoesTituloPagar(@asserts[:token], 'incluir')
 end