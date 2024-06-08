require 'date'

def calcular_entrega(data_envio, tempo_entrega)
    data = Date.parse(data_envio)
    dias_uteis = 0
    while dias_uteis < tempo_entrega
        data += 1
        dias_uteis += 1 unless [0, 6].include?(data.wday)          
    end
    data.to_s      
end

data_envio = "2023-11-01"
tempo_entrega = 7

data_entrega = calcular_entrega(data_envio, tempo_entrega)

puts data_entrega