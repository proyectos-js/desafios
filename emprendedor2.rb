pventa = ARGV[0].to_i
nusuarios = ARGV[1].to_i
nusuarios_pre = ARGV[2].to_i
nusuarios_free = ARGV[3].to_i
gastos  = ARGV[4].to_i


utilidades = ( (pventa * nusuarios) + (2*pventa*nusuarios_pre)+(nusuarios_free*0) ) - gastos
if utilidades > 0
    salida =utilidades - ((35 * utilidades)/100)
    puts "Sus utilidades son #{salida} con impuestos"
else
    puts "Sus utilizades #{utilidades} sin impuestos"
end