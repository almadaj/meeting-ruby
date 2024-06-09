require "minitest/autorun"

class Pessoa
    attr_accessor :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade    
  end

  def saudar
    "Olá, sou #{nome} e tenho #{idade}"
  end
end

class TestPessoa < Minitest::Test
    def setup
      @p1 = Pessoa.new("João", 23)
    end
    def test_init
        assert_equal("João", @p1.nome)
        assert_equal(23, @p1.idade)
    end

    def test_saudar
        assert_equal("Olá, sou João e tenho 23", @p1.saudar)  
    end
end
