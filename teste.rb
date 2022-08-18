puts "digite o seu nome:"
nome = gets.chomp
arr = array[10]
puts "seja bem vindo #{nome}!"
print "Digite um número: "
i = gets.chomp.to_i
if i < 5
    puts "o número escolhido é menor que 5!"
else
    puts "o número escolhido é maior que 5!"
end
for i in 1..10 
    arr[i-1] = i
    puts  "entrou no for"
end
for i in 1..arr.count 
    print arr[i-1]
end
puts "saiu do for"