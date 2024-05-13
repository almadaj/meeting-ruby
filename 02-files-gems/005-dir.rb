# 1 - Diretorio atual
puts Dir.pwd

# 2 - Criando Diretório
#Dir.mkdir "teste"

# 3 - Listando diretórios e arquivos
puts Dir.glob "*.rb"

# 4 - Navegando entre diretórios
Dir.chdir "data"
puts Dir.pwd