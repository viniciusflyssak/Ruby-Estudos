print "digite um nome: "
nome = gets.chomp
print "digite quantas vezes o nome deve aparecer: "
quantidade = gets.chomp.to_i
for i in 1..quantidade do
    puts "#{i.to_s}: #{nome}"
end