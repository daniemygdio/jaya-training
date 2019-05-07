class Pessoa
    def falar(texto)
        "#{texto}"
    end

    def self.gritar(texto)        
        "#{texto}!!!".upcase
    end
end

pessoa = Pessoa.new
puts pessoa.falar("hello!") # precisa de instância

puts Pessoa.gritar("Hello") # não precisa de instância