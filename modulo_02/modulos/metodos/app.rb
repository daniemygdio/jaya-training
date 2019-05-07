require_relative 'pagamento'

include Pagamento

puts "digite a bandeira do cartão"
bandeira = gets.chomp

puts "digite o número do cartão"
cartao = gets.chomp

puts "digite o valor"
valor = gets.chomp

puts pagar(bandeira, cartao, valor)
puts Pagamento::pagar(bandeira, cartao, valor)