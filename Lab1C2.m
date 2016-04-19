%Limpiar variables
clc,clear;
%try catch manejo de errores y excepciones
try
        %Vector de entrada
        vectorIn=input('Ingrese un vector : ');
        %validar que la entrada sea un vector
        vec = isvector(vectorIn);
        if  vec == 0
             disp('Solo debe ingresar un vector.');  
             return;
        end
        %largo del vector
        largoVector=length(vectorIn);
        %Validar que ingrese un minimo de tres elementos en el vector
        if largoVector < 3
            warning('Ingresar un minimo de tres elementos en el vector.');        
        else
           %realizar el calculo
           %ordenar vector en forma descendente de mayor a menor
            ordenar=sort(vectorIn,'descend');
            i=0;
            sumaRaiz=0;
            for elem = ordenar
                %Operar con los tres elementos mayores del vector
                if i < 3
                  %sumar las raices cuadradas
                  sumaRaiz = sumaRaiz + sqrt(elem);
                end 
                i=i+1;
            end
            disp('Resultado de suma de raices')
            disp(sumaRaiz);   
        end
catch EX
   disp('Error, no fue posible realizar la operción debido a lo siguiente : ');
   disp(EX.identifier);
end