gravedad = ARGV[0].to_i
radio = ARGV[1].to_i

calculo = 2* (radio*gravedad)

salida = Math.sqrt(calculo)

puts "Respuesta: #{salida}"