class Exercicio
    # --------------------- Exercicio do Triangulo --------------------------------------------------
    # lado1 = 0
    # lado2 = 0
    # lado3 = 0  
    # perimetro = 0


    # puts 'informe o primeiro lado do triângolo'
    # lado1 = gets.chomp
    # lado1 = lado1.to_i

    # puts 'informe o segundo lado do triângolo'
    # lado2 = gets.chomp
    # lado2 = lado2.to_i

    # puts 'informe o terceiro lado do triângolo'
    # lado3 = gets.chomp
    # lado3 = lado3.to_i

    # perimetro = lado1 + lado2 + lado3
    # puts 'perimetro: ' + perimetro.to_s

    # if (lado1 != lado2) && (lado2 != lado3) && (lado1 != lado3)
    #     puts 'Escaleno'
    # elsif (lado1 == lado2) && (lado2 == lado3)
    #     puts 'Equilátero'
    # else
    #     puts 'Isósceles'
    # end

    # ----------------------------- Loop --------------------------------

    # for numero in 0..10
    #     puts numero 
    # end

    # numero = 0

    # while numero < 11 do
    #     puts numero             
    #     numero = numero + 1
    # end

    # while conditional [do]
    #     code
    # end

    # vezes = 7
    # vezes.times do |i| 
    #     puts i

    #     puts vezes

    #     if i == 4
    #         break
    #     end
    # end

    # puts 'sair'
    
    # vingadores = ['IronMan', 'Hulk', 'Goku', 'Superman']
        
    # vingadores.each do |xablau|
       
    #    if xablau == 'Superman'
    #     puts xablau + ' foi encontrado'
    #    end

    # num = [1, 2, 3, 4, 5]

    # num.each { |a| puts a -= 10}


    # a = a - 10

    #-------------------- Metodos -----------------------------------

    n = 0
    puts 'digite um numero de 1 a 10'
    n = gets.chomp
    n = n.to_i

    puts '----- tabuada de x -----'
    
    def multiNum(nu)
        numero = 0
        while numero < 11 do
            cal = numero * nu
            puts "#{numero.to_s} x #{nu.to_s} = #{cal.to_s}"    
            #puts (numero.to_s + ' x ' + nu.to_s + ' = ' + cal.to_s)    
            numero = numero + 1
        end
        
    end
    
    teste = Exercicio.new
    puts teste.multiNum(n)
    
    puts '----- tabuada de + -----'
    
    def adicaoNum(nu)
        numero1 = 0
        while numero1 < 11 do
            cal = numero1 + nu
            puts "#{numero1.to_s} + #{nu.to_s} = #{cal.to_s}"    
            #puts (numero.to_s + ' x ' + nu.to_s + ' = ' + cal.to_s)    
            numero1 = numero1 + 1
        end
        
    end
    
    teste = Exercicio.new
    puts teste.adicaoNum(n)

    
    #puts multiNum(n)   
    
    # carro = Hash[nome: 'Palio', marca: 'Fiat', cor: 'Cinza']
    
    # carro[:modelo] = 'Turbinado'
    
    # puts carro[:nome]

    # carro[:nome] = 'Toro'

    # puts carro[:nome]
    # puts carro

    # carro = 200
    # produtos = {gol: '40 mil', jetta: '70 mil', up: '35 mil'}

    # produtos.each do |produto, preco|
    #     puts "o #{produto} custa #{preco} reais"
    #     #puts "o carro custa #{carro} reais"
    # end

end

