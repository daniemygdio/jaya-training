require_relative 'pagamento'

include Pagamento::Master

puts Pagamento::Master::pagar