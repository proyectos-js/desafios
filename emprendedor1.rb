pventa = ARGV[0].to_i
nusuarios = ARGV[1].to_i
gastos  = ARGV[2].to_i

utilidades = (pventa*nusuarios)-gastos
if utilidades > 0
    salida =utilidades - ((35 * utilidades)/100)
    puts "Sus utilidades son #{salida}"
else
    puts "Sus utilizades #{utilidades}"
end