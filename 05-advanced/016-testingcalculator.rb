require 'minitest/autorun'
require_relative '015-calculator'

class TestCalculator < Minitest::Test
  def setup
    @calc = Calculator.new
  end
  def test_sum
    result = @calc.sum(3,4)
    assert_equal(7, result, "Falha na operação")
  end
  def test_sub
    result = @calc.sub(4,3)
    assert_equal(1, result, "Falha na operação")
  end
  def test_sub_negative
    result = @calc.sub(3,-4)
    assert_equal(7, result, "Falha na operação")
  end
  def test_div_zero
    assert_raises(ZeroDivisionError, "Não está gerando uma exceção ao dividir por zero") do
    @calc.div(10, 0)
    end
  end
  def test_times
    result = @calc.times(3,0)
    assert_equal(0, result, "Falha na operação")
    assert_equal(10, @calc.times(5, 2), "Falha na operação")
  end
end
