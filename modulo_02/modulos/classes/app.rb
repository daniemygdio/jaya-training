require_relative 'pagamento'

pagamento = Pagamento::Visa.new
puts pagamento.pagar