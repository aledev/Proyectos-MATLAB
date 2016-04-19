% Función Newton-Raphson para Matlab
% Los parametros de entrada son una función 'p_func', 
% la cantidad de iteraciones que se realizarán 'p_iter', 
% la tolerancia de error 'p_err' y
% un punto inicial de la función 'p_xi', para encontrar su raíz 
function [xn1] = Lab1C1_NewtonRap(p_func, p_iter, p_err, p_xi)
    % Creamos algunas variables para el desarrollo del metodo
    syms i_func;
    % Se obtiene la función f(xn)
    i_func = sym(p_func); 
    % Se obtiene la derivada de la función f'(xn)
    i_dfun = diff(i_func);
    % Se obtiene el valor del punto actual 'p_xi' evaluado en 
    % la función f(xn). Es decir y = f(xn)
    i_err = abs(subs(i_func, p_xi));
    
    % Se evalua si el punto y = f(xn) es menor o igual a la tolerancia
    % ingresada y ademas si la cantidad de iteraciones es mayor a 1. 
    % En ese caso se realiza recurrencia con nuevos valores, en caso 
    % contrario se obtiene el último valor cercano a la raíz
    if i_err >= p_err && p_iter > 1 
        % Se obtiene el valor del punto actual 'p_xi' evaluado en
        % la función f'(xn). Es decir y = f'(xn)
        i_df = subs(i_dfun, p_xi);
        % Se obtiene el valor de xn + 1 = xn - f(xn) / f'(xn)
        i_a = p_xi - subs(i_func, p_xi) / i_df;
        % Disminuimos el iterador en 1
        i_iter = p_iter - 1;
        % Almacenamos el valor calculado de 'i_a' en 'xn1' y
        % Volvemos a realizar el calculo del nuevo punto 'i_a' a traves
        % de la recurrencia, pero ahora con la nueva iteración 'i_iter'
        xn1 = Lab1C1_NewtonRap(p_func, i_iter, p_err, i_a);
    else 
        % Se obtiene el valor del punto actual 'p_xi' que en esta parte
        % del codigo, correspondería a la última iteración. Este punto es 
        % evaluado en la función f'(xn). Es decir y = f'(xn)
        i_df = subs(i_dfun, p_xi);
        % Se obtiene el valor de xn + 1 = xn - f(xn) / f'(xn)
        i_a = p_xi - subs(i_func, p_xi) / i_df;
        % Almacenamos el valor calculado de 'i_a' en 'xn1'
        xn1 = i_a;
        % Limpiamos la pantalla de consola
        clc
        % Mostramos el resultado de la Raíz Encontrada: 'i_a'
        fprintf('Raíz encontrada: %f\n', i_a);
    end
end
