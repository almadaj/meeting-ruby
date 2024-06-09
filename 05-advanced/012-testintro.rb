require 'minitest/autorun'

def sum(a, b)
    a + b
end

def palyndrome(word)
    word.downcase == word.downcase.reverse
end

class TestMath < Minitest::Test
    def test_sum_method
        assert_equal(5, sum(3, 2))
        assert_equal(4, sum(2, 2))
        assert_equal(7, sum(2, 5))
    end
    def test_sum_method_again
        assert_equal(7, sum(4, 3))      
    end
end

class TestPalydrome < Minitest::Test
    def test_palyndrome
        assert_equal(true, palyndrome("ovo"))
        assert_equal(false, palyndrome("abacate"))
    end
end
