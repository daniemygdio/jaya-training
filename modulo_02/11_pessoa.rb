class Pessoa
    def initialize(n = 5)
        n.times do |n|
            puts "Inicializando #{n}"
        end
    end

    def falar(nome = "pessoal")
        "Olá, #{nome}!"
    end

    def falar2(texto = "olá!")
        texto
    end

    def falar3(texto = "Olá!", texto2 = "Hello!")
        "#{texto} - #{texto2}"
    end
end

p = Pessoa.new
puts p.falar("Dani")
puts p.falar2
puts p.falar3()