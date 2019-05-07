class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
    attr_accessor :cpf

    def falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj
    
    def pagar_fornecedor
        puts "Fornecedor pago"
    end
end

pessoa = Pessoa.new
# setters
pessoa.nome = "dani"
pessoa.email = "dani@email.com"

# getters
puts pessoa.nome
puts pessoa.email

pessoa_fisica = PessoaFisica.new
pessoa_fisica.nome = "danielle"
pessoa_fisica.email = "danielle@email.com"
pessoa_fisica.cpf = "234.234.234-43"
puts pessoa_fisica.falar("Oi!")


pessoa_juridica = PessoaJuridica.new
pessoa_juridica.nome = "empresa dani"
pessoa_juridica.email = "dani@empresa.com"
pessoa_juridica.cnpj = "xxx.xxx"
pessoa_juridica.pagar_fornecedor
