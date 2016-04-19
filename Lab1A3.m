%Graficar la siguiente función : sin(13*(log7(x+2))) 
%limpia la pantalla y las variables
clc, clear
%Tomando como puntos de 0 a 4*pi con un espacio entre ellos de 0.01.
%Rango de valores de 0 a 4*pi con un intervalo de 0.01.
x = 0:0.01:4*pi;
%Función.
funlog = sin (13 * ( log(x + 2) / log(7) )  );
%Graficar función de color azul con '*'
plot ( x, funlog, 'r*');
grid on;
%Título del grafico
title ('a) GRÁFICO SEGUNDA FUNCIÓN');
%Etiqueta eje X.
xlabel('x'); 
%Etiqueta eje Y.
ylabel('y=f(x)'); 