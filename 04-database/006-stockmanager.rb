require 'active_record'

# 1-Configuração do BD
begin
  ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      host: 'localhost',
      username: 'postgres',
      password: 'juliano1',
      database: 'estoque'
  )
  puts "Conexão estabelecida com sucesso."
rescue => e
  puts "Erro ao estabelecer conexão: #{e.message}"
end

# 2-Definição do esquema do BD
begin
  ActiveRecord::Schema.define do
      create_table :categories do |t|
          t.string :name
      end

      create_table :products do |t|
          t.string :name
          t.integer :category_id
          t.integer :stock_qtd, default: 0
      end
  end
  puts "Esquema do banco de dados definido com sucesso."
rescue => e
  puts "Erro ao definir o esquema do banco de dados: #{e.message}"
end

# 3-Definição dos Modelos
class Category < ActiveRecord::Base
    has_many :products
end

class Product < ActiveRecord::Base
    belongs_to :category

    def decrease_stock(amount)
        if self.stock_qtd >= amount
            self.stock_qtd -= amount
            self.save
            puts "Estoque de #{self.name} reduzido em #{amount}. Novo estoque: #{self.stock_qtd}."
        else
            puts "Não há estoque suficiente para realizar a operação"
        end
    end

    def increase_stock(amount)
        self.stock_qtd += amount
        self.save
        puts "Estoque de #{self.name} aumentado em #{amount}. Novo estoque: #{self.stock_qtd}."
    end
end

# 4-Utilizando os Modelos
begin
  category = Category.create(name: 'Eletrônicos')
  puts "Categoria '#{category.name}' criada com sucesso."

  product1 = category.products.create(name: 'Smartphone', stock_qtd: 10)
  product2 = category.products.create(name: 'Notebook', stock_qtd: 5)
  puts "Produtos criados com sucesso."

  product1.decrease_stock(3)
  product2.increase_stock(5)
rescue => e
  puts "Erro ao criar categorias ou produtos: #{e.message}"
end

# 5-Recuperação dos Dados
begin
  all_products = Product.all
  all_products.each do |product|
      puts "Nome: #{product.name}, Categoria: #{product.category.name}, Estoque: #{product.stock_qtd}"
  end
rescue => e
  puts "Erro ao recuperar os dados: #{e.message}"
end
