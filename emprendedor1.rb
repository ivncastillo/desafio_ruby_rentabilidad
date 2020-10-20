precio = ARGV[0].to_f
n_usuarios= ARGV[1].to_f
gastos= ARGV[2].to_f

if precio<0 
    print 'introducir valores positivos de precios'
end

if n_usuarios<0
    print 'introducir valores positivos de cantidad de usuarios'
end

if gastos<0
    print 'introducir valores positivos de gasto '
end

if precio>=0 && n_usuarios>=0 && gastos>=0
    utilidad_sin_impuestos=(precio*n_usuarios) - gastos
    if utilidad_sin_impuestos>0
        utilidad=utilidad_sin_impuestos*0.65
    elsif 
        utilidad=utilidad_sin_impuestos
    end
end

puts "La Utilidad es #{utilidad}"