print "digite a hora de entrada: "
horasEntrada = gets.chomp.to_i
print "digite os minutos da entrada: "
minutosEntrada = gets.chomp.to_i
print "digite a hora restante: "
horasRestantes = gets.chomp.to_i
print "digite os minutos restantes: "
minutosRestantes = gets.chomp.to_i
print "calculando..."
if (minutosEntrada + minutosRestantes) >= 60
    horasRestantes = horasRestantes + 1
    minutosRestantes = minutosRestantes - 60
end
puts "seu horário de saída é: "
print "#{horasEntrada + horasRestantes}:#{minutosEntrada + minutosRestantes}"