require 'minitest/autorun'

class ShoppingCart
  def initialize
    @items = {}
  end
  def add_item(product, qtd)
    @items[product] = qtd    
  end
  def remove_item(product)
    @items.delete(product)    
  end
  def item_count
    @items.values.sum
  end
  def total_price
    product_prices = {'Headphones'=>30, "Book"=>10}
    @items.sum {|product, qtd| qtd * product_prices[product]}
  end
  def clear
    @items = {}
  end
end


class TestShoppingCart < Minitest::Test
  def setup
    @cart = ShoppingCart.new
  end

  def turndown
    @cart.clear
  end
  
  def test_add
    @cart.add_item("Laptop", 1)
    assert_equal(1, @cart.item_count, "Falha ao adicionar item ao carrinho")
  end 
  def test_remove
    @cart.add_item("Mouse", 2)
    @cart.remove_item("Mouse")
    assert_equal(0, @cart.item_count, "Falha ao remover item ao carrinho")
  end
  def test_price
    @cart.add_item("Headphones", 1)
    @cart.add_item("Book", 2)
    assert_equal(50, @cart.total_price, "Cálculo incorreto do preço total")
  end  
end
