class Treinamento
  numero1 = 0
  numero2 = 0
  numero3 = 0
  numero4 = 0
  
  puts 'informe a primeira nota'
  numero1 = gets.chomp
  numero1 = numero1.to_i
  # Cometario - Tipo de variavel
  # puts numero1.class

  puts 'informe a segunda nota'
  numero2 = gets.chomp
  numero2 = numero2.to_i

  puts 'informe a terceira nota'
  numero3 = gets.chomp
  numero3 = numero3.to_i
  
  puts 'informe a quarta nota'
  numero4 = gets.chomp
  numero4 = numero4.to_i
  
  media =  (numero1 + numero2 + numero3 + numero4) / 4
  puts media

  case media
    when  7
        puts 'Aprovado'
    when  3
        puts 'Reprovado!'
    else
        puts 'Recuperação!'
  end


#   if media >= 7 
#     puts 'Aprovado!'
#   elsif media < 3 
#     puts 'Reprovado!'
#   else 
#     puts 'Recuperação!'
#   end

#--------------------------------------------------------------------
  # n1 = 1
  # puts 'talita' if n == 1

  # if n1 == 1
  #   puts 'talita'
  # end

  # if n1 == 1
  #   puts 'talita'
  # else
  #   puts 'vitor'
  # end
  
  # if n1 == 1
  #   puts 'talita'
  # elsif n1 ==2
  #   puts 'Eliel' 
  # else
  #   puts 'vitor'
  # end  

end
