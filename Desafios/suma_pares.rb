numero = ARGV[0].to_i

i = 1
suma = 0

numero.times do |cont|
    if i%2==0
        suma=suma +i

    end

    i = i + 1
end

puts suma
