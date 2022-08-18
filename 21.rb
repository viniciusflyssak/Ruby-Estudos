sair = false;
cartas = ['A', '2', '3', '4', '5', '6', '7', '8', '9', 'J', 'Q', 'K']
cartasAposta = Array.new
cartasBanca = Array.new
while sair == false
    somaCartas = 0
    somaCartasBanca = 0
    puts "Bem vindo ao jogo!"  
    puts "Digite 1 para jogar"
    sair = not(gets.chomp.to_i == 1)
    if sair == true 
        exit
    end
    cartasAposta[0] = cartas[rand(cartas.length)]
    cartasAposta[1] = cartas[rand(cartas.length)]
    cartasAposta[2] = cartas[rand(cartas.length)]
    cartasBanca[0] = cartas[rand(cartas.length)]
    cartasBanca[1] = cartas[rand(cartas.length)]
    cartasBanca[2] = cartas[rand(cartas.length)]
    puts "Suas cartas são: " + cartasAposta[0] + ", " + cartasAposta[1] + ", " + cartasAposta[2]
    puts "As cartas da banca são: " + cartasBanca[0] + ", " + cartasBanca[1] + ", " + cartasBanca[2]
    for i in 0..2        
        if cartasAposta[i] == "A"            
            somaCartas = somaCartas + 12
        else
            if cartasAposta[i] == "J"
                somaCartas = somaCartas + 11
            else
                if cartasAposta[i] == "Q"            
                    somaCartas = somaCartas + 12
                else
                    if cartasAposta[i] == "K"            
                        somaCartas = somaCartas + 13
                    else
                        somaCartas = somaCartas + cartasAposta[i].to_i
                    end
                end
            end
        end    
    end
    for i in 0..2        
        if cartasBanca[i] == "A"            
            somaCartasBanca = somaCartasBanca + 12
        else
            if cartasBanca[i] == "J"
                somaCartasBanca = somaCartasBanca + 11
            else
                if cartasBanca[i] == "Q"            
                    somaCartasBanca = somaCartasBanca + 12
                else
                    if cartasBanca[i] == "K"            
                        somaCartasBanca = somaCartasBanca + 13
                    else
                        somaCartasBanca = somaCartasBanca + cartasBanca[i].to_i
                    end
                end
            end
        end    
    end    
    puts "A somatória de suas cartas é: " + somaCartas.to_s
    puts "A somatória das cartas da banca é: " + somaCartasBanca.to_s
    if somaCartas > 21
        puts "Ultrapassou 21, você perdeu!"
    else  
        if somaCartasBanca > 21
            puts "A banca marcou mais que 21, você ganhou!"
        else
            if somaCartasBanca == somaCartas
                puts "Empate!"
            else
                if somaCartasBanca > somaCartas
                    puts "A banca venceu!"
                else
                    puts "Você venceu!"
                end
            end
        end
    end
end