precio = ARGV[0].to_f
n_usuarios= ARGV[1].to_f
n_usuarios_premium= ARGV[2].to_f
n_usuarios_gratuitos= ARGV[3].to_f
gastos= ARGV[4].to_f

if precio<0 
    print 'introducir valores positivos de precios'
end

if n_usuarios<0
    print 'introducir valores positivos de cantidad de usuarios'
end

if n_usuarios_premium<0
    print 'introducir valores positivos de cantidad de usuarios'
end

if n_usuarios_gratuitos<0
    print 'introducir valores positivos de cantidad de usuarios'
end

if gastos<0
    print 'introducir valores positivos de gasto '
end

if n_usuarios==n_usuarios_premium+n_usuarios_gratuitos
    if precio>=0 && n_usuarios_premium>=0 && n_usuarios_gratuitos>=0 && gastos>=0
        utilidad_sin_impuestos=(precio*2*n_usuarios_premium) - gastos
        if utilidad_sin_impuestos>0
            utilidad=utilidad_sin_impuestos*0.65
        elsif 
            utilidad=utilidad_sin_impuestos
        end
    end
    puts "La Utilidad es #{utilidad}"
elsif 
    print 'La suma de usuarios_premium y gratuitos no es igual a la de total de usuarios'
end

